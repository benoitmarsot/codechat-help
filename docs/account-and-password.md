# Profile, password, and account access

Use your profile to update the name shown in LiquidAmber or change your password while signed in. If you cannot sign in, request a password-reset email from the login page.

## Open your profile

1. Open your user menu.
2. Select **Profile**.

The profile page shows:

| Field | Can you change it? |
| --- | --- |
| **Email** | No. Ask an administrator to correct it. |
| **Role** | No. An administrator manages roles and access scope. |
| **Account status** | No. An administrator can activate or disable an account. |
| **Display name** | Yes. |

## Change your display name

1. Enter the preferred name under **Display name**.
2. Select **Save name**.
3. Wait for **Name updated successfully**.

The display name cannot be empty. Updating it does not change your sign-in email, role, or project access.

## Change your password while signed in

1. Under **Password**, select **Change**.
2. Enter your **Current password**.
3. Enter and confirm the **New password**.
4. Select **Change Password**.

A valid new password must:

- contain at least 8 characters;
- contain an uppercase letter;
- contain a lowercase letter;
- contain a number; and
- contain a special character.

After **Password updated successfully** appears, your current session remains open and the password fields are cleared.

## Reset a forgotten password

### Request a reset email

1. From the login page, select **Forgot password?**
2. Enter the email address for your account.
3. Select **Send reset link**.

LiquidAmber displays **If the account exists, a reset email was sent**. This message does not confirm whether an address is registered. Check the inbox and filtered-mail folders for the account you entered.

### Set the new password

Open the reset link from the email. When you already have a reset token, select **Have a token? Reset now** and paste it into **Reset token**.

1. Confirm or paste the **Reset token**.
2. Enter a **New password** that meets the password requirements above.
3. Enter the same value under **Confirm new password**.
4. Select **Reset password**.
5. After **Password reset successfully. You can now log in.**, select **Back to login** and use the new password.

If the page reports that the reset failed, request a new reset email and use the newest link or token.

## Resolve account-access problems

| Situation | What to do |
| --- | --- |
| No reset email arrives | Verify the address, check filtered-mail folders, wait for normal email delivery, then submit one new request. |
| The reset token is rejected | Request a new email and use the newest token without adding spaces. |
| The account is pending | Ask an administrator to resend the invitation. |
| The account is inactive or disabled | Ask an administrator to activate it. |
| The email address is wrong | Ask an administrator to edit the account email. |
| A role or project is missing | Sign out and back in after the administrator changes access. If it is still missing, ask them to check both the role scope and project membership. |
| You are already signed in but do not know the current password | Sign out and use **Forgot password?** instead of the profile dialog. |

Administrators can follow [Manage users](admin-users.md#manage-access) to resend invitations, issue password resets, update account details, activate accounts, and manage access.

Do not send passwords or reset tokens to LiquidAmber support or your administrator.
