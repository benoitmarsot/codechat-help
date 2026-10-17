# Discover Prerequisites

This document describes the functionality and information needed to use Discover.
It is divided into two parts:

1. **Onboarding:** we already have an MCP connector for the CMS and need to
   configure access to the publication.
2. **Implementation:** we do not yet have an MCP connector for the CMS and need
   to implement one.

The examples below use **The Star Democrat**, a publication using BLOX CMS.

## Onboarding

We already have an MCP connector for the CMS; we only need to configure the
connection.

1. **Publication's public URL:** the website where readers access articles and
   where references in Discover answers should link.
   Example: https://www.stardem.com/
2. **Access to the published-article search API:**
   Example: https://www.stardem.com/search/
   - Access may be public or require authentication.
   - If authentication is required, such as for a NewsBank connection, provide
     the supported credentials, such as an API key or a username and password.
3. **Permission for automated access:** the CMS host must allow requests from
   our connector. For the current BLOX connector, the `User-Agent` is
   `augmentera-mcp-client-java/1.0.0`. Allowlist it if required, and confirm the
   applicable rate limits.
4. **Publication configuration:** we will determine the following information by
   querying the CMS and reviewing the publication's website. For example:

   ```json
   {
     "coverage_area_description": "Easton, Talbot County, and nearby counties on Maryland's Eastern Shore",
     "coverage_start_date": "2004-12-08",
     "profile_name": "star-democrat",
     "publication_name": "The Star Democrat"
   }
   ```

   For a NewsBank connection, also determine `newsbank_coverage_start_date`.
   The coverage dates must reflect the archive actually available from each
   provider.

## Implementation

If we do not yet have an MCP connector for the CMS, the following minimum
capabilities are needed to implement one.

### 1. Unique article identifier and retrieval

Each published article must have a stable, unique identifier so it can be
referenced and retrieved. This may be a UUID, a CMS-specific ID, or a permanent
URL.

The CMS must also provide a way to retrieve the full article using that
identifier.

### 2. Publication's public URL

Provide the public website where readers access articles and where references
in Discover answers should link.

Example: https://www.stardem.com/

### 3. Public or authenticated search API

Provide an interface for searching published articles.

Example: https://www.stardem.com/search/

The interface may be public or require authentication. It must support keyword
or semantic search with:

1. **Start-date filtering:** restrict results to articles published on or after
   a specified date.
2. **End-date filtering:** restrict results to articles published on or before
   a specified date.
3. **Date sorting:** return results in ascending or descending publication-date
   order.
4. **Result limit:** control the maximum number of results returned per request.
5. **Pagination:** navigate through results using pages, offsets, or cursors.

Additional filters and sorting options are useful but optional. When available,
they can be exposed through the MCP connector:

- Application/sub-application
- Categories
- Keywords
- External-content filtering (`is_external`)
- Content type (`type`)
- Other sorting options, such as relevance
- Other flags

#### Normal search

Results must contain the full articles or their unique identifiers so the
connector can retrieve the full articles separately.

#### Deep search

Each result must contain the article's unique identifier and a summary, or at
least an excerpt. These are used to select relevant articles before retrieving
their full content.
