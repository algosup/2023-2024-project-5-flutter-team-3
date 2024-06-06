# Test cases - Adopt A Candidate

<br>

<details>
    <summary>Table of Contents</summary>

- [Test cases - Adopt A Candidate](#test-cases---adopt-a-candidate)
- [Build 1](#build-1)
  - [Company register](#company-register)
    - [Create account](#create-account)
    - [Log in](#log-in)
    - [Log out](#log-out)
    - [Forgotten password](#forgotten-password)
    - [Change password](#change-password)
    - [Delete account](#delete-account)
  - [Candidate register](#candidate-register)
    - [Create account](#create-account-1)
    - [Log in](#log-in-1)
    - [Log out](#log-out-1)
    - [Forgotten password](#forgotten-password-1)
    - [Change password](#change-password-1)
    - [Delete account](#delete-account-1)
  - [Extra](#extra)
    - [Account creation with existing email](#account-creation-with-existing-email)
    - [Text field length](#text-field-length)
    - [Log in with non-existing account](#log-in-with-non-existing-account)
    - [Forgot password with non-existing email](#forgot-password-with-non-existing-email)
    - [Change password to the same password](#change-password-to-the-same-password)
    - [Compatibility](#compatibility)
    - [Company responsiveness](#company-responsiveness)
    - [Company navigation](#company-navigation)
    - [Candidate responsiveness](#candidate-responsiveness)
    - [Candidate navigation](#candidate-navigation)
  - [Risks and mitigation plans](#risks-and-mitigation-plans)
    - [Risks:](#risks)
    - [Questions for stakeholders:](#questions-for-stakeholders)
- [Build 2](#build-2)
  - [Account modification](#account-modification)
    - [Add Job Offer](#add-job-offer)
    - [Remove Job Offer](#remove-job-offer)
    - [Modify Job Description](#modify-job-description)
    - [Modify Job Location](#modify-job-location)
    - [Add Required Tags](#add-required-tags)
    - [Remove Required Tags](#remove-required-tags)
    - [Add Appreciated Tags](#add-appreciated-tags)
    - [Remove Appreciated Tags](#remove-appreciated-tags)
  - [Company swiping](#company-swiping)
    - [Left Swipe](#left-swipe)
    - [Right Swipe](#right-swipe)
  - [Candidate swiping](#candidate-swiping)
    - [Left Swipe](#left-swipe-1)
    - [Right Swipe](#right-swipe-1)
  - [Match](#match)
    - [Disliked card](#disliked-card)
    - [Liked card](#liked-card)
    - [Matching skills](#matching-skills)
    - [Matching location](#matching-location)
  - [Extra](#extra-1)
    - [Swipe till the end](#swipe-till-the-end)
    - [Swipe up and down](#swipe-up-and-down)
    - [Fast swipe continuously](#fast-swipe-continuously)
    - [Move the card around](#move-the-card-around)
    - [Company responsiveness](#company-responsiveness-1)
    - [Candidate responsiveness](#candidate-responsiveness-1)
    - [Add more than 5 required skills](#add-more-than-5-required-skills)
    - [Add all additional skills](#add-all-additional-skills)
    - [Boundary length for big description](#boundary-length-for-big-description)
    - [Boundary length for small description](#boundary-length-for-small-description)
    - [Try non-existing location](#try-non-existing-location)
- [Build 3](#build-3)
  - [Algorithm](#algorithm)
    - [Matching skills](#matching-skills-1)
    - [Matching location](#matching-location-1)
    - [Accuracy of the matches](#accuracy-of-the-matches)
    - [Score of the candidates](#score-of-the-candidates)
    - [Score of the job offers](#score-of-the-job-offers)
  - [Settings](#settings)
    - [Translation](#translation)
    - [Laws requirements](#laws-requirements)
  - [Extra](#extra-2)
    - [Responsiveness](#responsiveness)
    - [Seamless navigation](#seamless-navigation)
    - [Compatibility](#compatibility-1)
- [Build 4](#build-4)
  - [Company chat](#company-chat)
    - [Start conversation](#start-conversation)
    - [Send messages](#send-messages)
    - [Receive messages](#receive-messages)
  - [Candidate chat](#candidate-chat)
    - [Cannot start conversation](#cannot-start-conversation)
    - [Send messages](#send-messages-1)
    - [Receive messages](#receive-messages-1)
  - [Extra](#extra-3)
    - [DB correlation](#db-correlation)
    - [No sending of audio, pictures, etc.](#no-sending-of-audio-pictures-etc)
    - [Full company journey](#full-company-journey)
    - [Full candidate journey](#full-candidate-journey)

</details>

<br> 

To find a specific test case you can perform search by ID:
- COM: Test cases related to company functionalities.
- CAN: Test cases related to candidate functionalities.
- CC: Common or cross-functional test cases applicable to both companies and candidates.
- EXT: Extra or additional test cases that cover edge cases or extended functionalities.

// todo Replace [x] by the adequate numbers.

- [Test Plan](./TestPlan.md)
- [Test Results](./TestResults.md)

# Build 1

## Company register

### Create account

**Test case ID:** COM_REG101

**Test case description:** Create an account as a company.

**Preconditions:** The user should have downloaded the application.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. The "Log In" page is displayed. |
| 02   | Click on the 'Subscribe' button. | The 'Subscribe' page is displayed. |
| 03   | Enter valid company information. | Data is entered into the fields. |
| 04   | Click on the 'I'm a company' button. | The radio button is selected. |
| 05   | Click on the 'Subscribe' button. | The profile page is displayed. |

**Expected result:**
- The user should have access to the company side of the application.
- The information provided should appear in the database.

**Postconditions:** The user should be able to log in with the same data.

---

### Log in

**Test case ID:** COM_REG102

**Test case description:** Log in as a company.

**Preconditions:** 
- The user should have created an account.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. The "Log In" page is displayed. |
| 02   | Enter valid company email and password. | Credentials are entered. |
| 03   | Click on the 'Login' button. | User is logged in to the company side of the application. |

**Expected result:** The user should have access to the company side of the application.

---

### Log out

**Test case ID:** COM_REG103

**Test case description:** Log out as a company.

**Preconditions:**
- The user should have logged in.


**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Setting' option in the profile. | 'Log Out' option is visible. |
| 04   | Click on the 'Log Out' button. | User is logged out and redirected to the login page. |

**Expected result:**
- The user should no longer have access to the app.
- The user should be on the login page.

**Postconditions:** The user should be able to log in with the same data.

---

### Forgotten password

**Test case ID:** COM_REG104

**Test case description:** Recover password using the 'Forgot Password' feature.

**Preconditions:** The user should have an account.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. The "Log In" page is displayed. |
| 02   | Click on the 'Forgot Password' link. | The 'Forgot Password' page is displayed. |
| 03   | Enter the registered company email address. | Email address is entered. |
| 04   | Click on the 'Submit' button. | A password reset email is sent to the user. |
| 05   | Follow the instructions in the password reset email. | User is able to reset the password successfully. |
| 06   | Log in with the new password. | User is logged in successfully with the new password. |

**Expected result:**
- The user should receive a password reset email.
- The user should be able to reset the password and log in with the new password.

---

### Change password

**Test case ID:** COM_REG105

**Test case description:** Change the password while logged in.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Change Password' section. | The 'Change Password' page is displayed. |
| 04   | Enter the current password and the new password. | Passwords are entered. |
| 05   | Click on the 'Save' button. | Password is changed successfully. |
| 06   | Log out and log in with the new password. | User is logged in successfully with the new password. |

**Expected result:** The user should be able to change the password and log in with the new password.

---

### Delete account

**Test case ID:** COM_REG106

**Test case description:** Delete the company account.

**Preconditions:**
- The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Profile' page. | The 'Profile' page is displayed. |
| 04   | Click on the 'Delete Account' button. | The 'Delete Account' page is displayed. |
| 05   | Confirm the account deletion. | A confirmation message is displayed. |
| 06   | Click on the 'Delete' button. | Account is deleted and user is logged out. |

**Expected result:** The user should no longer have access to the application and the account should be removed from the database.

**Postconditions:** The user should not be able to log in with the deleted account credentials.

## Candidate register

### Create account

**Test case ID:** CAN_REG107

**Test case description:** Create an account as a candidate.

**Preconditions:** Access to the application and the database.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. The "Log In" page is displayed. |
| 02   | Click on the 'Subscribe' button. | The 'Subscribe' page is displayed. |
| 03   | Enter valid candidate information. | Data is entered into the fields. |
| 04   | Click on the 'I'm a job seeker' button. | The radio button is selected. |
| 05   | Click on the 'Subscribe' button. | The profile page is displayed. |

**Expected result:**
- The user should have access to the candidate side of the application.
- The information provided should appear in the database.

**Postconditions:** The user should be able to log in with the same data.

---

### Log in

**Test case ID:** CAN_REG108

**Test case description:** Log in as a candidate.

**Preconditions:**
- The user should have created an account.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Enter valid candidate email and password. | Credentials are entered. |
| 03   | Click on the 'Login' button. | User is logged in to the candidate side of the application. |

**Expected result:** The user should have access to the candidate side of the application.

---

### Log out



**Test case ID:** CAN_REG109

**Test case description:** Log out as a candidate.

**Preconditions:**
- The user should have logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Setting' option in the profile. | 'Log Out' option is visible. |
| 04   | Click on the 'Log Out' button. | User is logged out and redirected to the login page. |

**Expected result:**
- The user should no longer have access to the app.
- The user should be on the login page.

**Postconditions:** The user should be able to log in with the same data.

---

### Forgotten password

**Test case ID:** CAN_REG110

**Test case description:** Recover password using the 'Forgot Password' feature as a candidate.

**Preconditions:** The user should have an account.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Click on the 'Forgot Password' link. | The 'Forgot Password' page is displayed. |
| 03   | Enter the registered candidate email address. | Email address is entered. |
| 04   | Click on the 'Submit' button. | A password reset email is sent to the user. |
| 05   | Follow the instructions in the password reset email. | User is able to reset the password successfully. |
| 06   | Log in with the new password. | User is logged in successfully with the new password. |

**Expected result:**
- The user should receive a password reset email.
- The user should be able to reset the password and log in with the new password.

---

### Change password

**Test case ID:** CAN_REG111

**Test case description:** Change the password while logged in as a candidate.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Change Password' section. | The 'Change Password' page is displayed. |
| 04   | Enter the current password and the new password. | Passwords are entered. |
| 05   | Click on the 'Save' button. | Password is changed successfully. |
| 06   | Log out and log in with the new password. | User is logged in successfully with the new password. |

**Expected result:** The user should be able to change the password and log in with the new password.

---

### Delete account

**Test case ID:** CAN_REG112

**Test case description:** Delete the candidate account.

**Preconditions:**
- The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The 'Profile' section is displayed. |
| 03   | Click on the 'Delete Account' button. | The 'Delete Account' page is displayed. |
| 04   | Confirm the account deletion. | A confirmation message is displayed. |
| 05   | Click on the 'Delete' button. | Account is deleted and user is logged out. |

**Expected result:** The user should no longer have access to the application and the account should be removed from the database.

**Postconditions:** The user should not be able to log in with the deleted account credentials.

## Extra

### Account creation with existing email

**Test case ID:** CC_EXT113

**Test case description:** Attempt to create an account with an email that already exists.

**Preconditions:** The email address must already be registered.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Click on the 'Subscribe' button. | The 'Subscribe' page is displayed. |
| 03   | Enter the existing email address. | Email is entered. |
| 04   | Attempt to register. | An error message indicating the email already exists is displayed. |

**Expected result:** The user should see an error message that the email already exists.

---

### Text field length

**Test case ID:** CC_EXT114

**Test case description:** Test the maximum length of text fields, which is [x] characters.

**Preconditions:** None.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Navigate to any text field. | Text field is displayed. |
| 03   | Enter a string of [x] characters. | [x] characters are accepted. |
| 04   | Attempt to enter more than [x] characters. | No more than [x] characters are accepted. |

**Expected result:** The text field should accept up to [x] characters and not more.

---

### Log in with non-existing account

**Test case ID:** CC_EXT115

**Test case description:** Attempt to log in with an account that does not exist.

**Preconditions:** The account should not be registered.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. The 'Log In' page is displayed. |
| 02   | Enter non-existing credentials. | Credentials are entered. |
| 03   | Attempt to log in. | An error message indicating the account does not exist is displayed. |

**Expected result:** The user should see an error message that the account does not exist.

---

### Forgot password with non-existing email

**Test case ID:** CC_EXT116

**Test case description:** Attempt to recover a password using an email that does not exist.

**Preconditions:** The email address should not be registered.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Navigate to the 'Forgot Password' section. | The 'Forgot Password' page is displayed. |
| 03   | Enter a non-existing email address. | Email address is entered. |
| 04   | Attempt to submit. | An error message indicating the email does not exist is displayed. |

**Expected result:** The user should see an error message that the email does not exist.

---

### Change password to the same password

**Test case ID:** CC_EXT117

**Test case description:** Attempt to change the password to the same current password.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Change Password' section. | The 'Change Password' page is displayed. |
| 04   | Enter the current password and the same password in the new password field. | Passwords are entered. |
| 05   | Attempt to save. | An error message indicating that the new password cannot be the same as the current password is displayed. |

**Expected result:** The user should see an error message that the new password cannot be the same as the current password.

---

### Compatibility

**Test case ID:** CC_EXT118

**Test case description:** Test the application across different platforms (Android, iOS).

**Preconditions:** The application should be available on multiple platforms.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Download the application on Android and iOS devices. | The application downloads successfully. |
| 02   | Open the application on both devices. | The application opens successfully on both devices. |
| 03   | Perform basic operations (create account, log in, log out) on both devices. | All operations perform correctly on both devices. |

**Expected result:** The application should function correctly on both Android and iOS devices.

---

### Company responsiveness

**Test case ID:** COM_EXT119

**Test case description:** Ensure the responsiveness of the company side.

**Preconditions:** The user should be logged in as a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate through all pages (Swipe, Profile, Settings, etc.). | All pages load correctly. |

**Expected result:** All pages on the company side should load and be responsive.

---

### Company navigation

**Test case ID:** COM_EXT120

**Test case description:** Ensure seamless navigation on the company side.

**Preconditions:** The user should be logged in as a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate through the application and perform various actions (view profile, update settings). | Navigation is smooth and without errors. |

**Expected result:** Navigation on the company side should be seamless and without any lag or errors.

---

### Candidate responsiveness

**Test case ID:** CAN_EXT121

**Test case description:** Ensure the responsiveness of the candidate side.

**Preconditions:** The user should be logged in as a candidate.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate through all pages (SWipe, Profile, Job Listings, etc.). | All pages load correctly. |

**Expected result:** All pages on the candidate side should load and be responsive.

---

### Candidate navigation

**Test case ID:** CAN_EXT122

**Test case description:** Ensure seamless navigation on the candidate side.

**Preconditions:** The user should be logged in as a candidate.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate through the application and perform various actions (view profile, apply for jobs). | Navigation is smooth and without errors. |

**Expected result:** Navigation on the candidate side should be seamless and without any lag or errors.

---

## Risks and mitigation plans

### Risks:
1. **Account creation failure**: Users might not be able to create accounts due to server issues or validation errors.
   - **Mitigation**: Implement detailed error messages and ensure server stability with load testing.
   
2. **Password reset email not received**: Users might not receive the password reset email.
   - **Mitigation**: Ensure email services are functioning correctly and provide alternative contact options for support.
   
3. **Compatibility issues**: Application might not function correctly across different devices.
   - **Mitigation**: Conduct extensive testing across various devices and OS versions.

4. **Data loss during account deletion**: Important data might be lost if the account deletion process fails.
   - **Mitigation**: Implement a confirmation step and data backup before deletion.

5. **Security breaches**: Unauthorised access due to weak passwords or security loopholes.
   - **Mitigation**: Enforce strong password policies and regular security audits.

### Questions for stakeholders:
1. **Account creation**: Are there any specific validation rules for the company and candidate registration fields?
2. **Password policies**: What are the requirements for password complexity and expiration policies?
3. **Cross-platform support**: Are there specific devices or OS versions that need prioritised support?
4. **Data handling**: What are the protocols for data backup and recovery, especially during account deletion?

# Build 2

## Account modification

### Add Job Offer

**Test case ID:** COM_MOD223

**Test case description:** Add a job offer as a company.

**Preconditions:** 
- The user should be logged in as a company.
- The user should have access to the 'Add Job Offer' feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The 'Profile' page is displayed. |
| 04   | Click on the 'Add new job offer' button. | The 'Add job' page is displayed. |
| 05   | Enter valid job offer information (title, description, location, etc.). | Job offer details are entered. |
| 06   | Click on the 'Save' button. | The job offer is saved and displayed in the job listings. |

**Expected result:** The job offer should be added successfully and be visible in the job listings.

---

### Remove Job Offer

**Test case ID:** COM_MOD224

**Test case description:** Remove a job offer as a company.

**Preconditions:** 
- The user should be logged in as a company.
- The user should have at least one job offer listed.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list is displayed. |
| 04   | Click on the pen icon. | A red cross should appear next to each job offer. |
| 05   | Click on the cross icon next to a job offer. | A confirmation message is displayed. |
| 06   | Confirm the deletion. | The job offer is removed from the list. |

**Expected result:** The job offer should be removed successfully and no longer be visible in the job listings.

---

### Modify Job Description

**Test case ID:** COM_MOD225 / CAN_MOD226

**Test case description:** Modify the job description as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have at least one job offer listed.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to modify. | The selected job offer/profile details are displayed. |
| 05   | Edit the job description. | The description is modified. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated. |

**Expected result:** The job description should be updated successfully.

---

### Modify Job Location

**Test case ID:** COM_MOD227 / CAN_MOD228

**Test case description:** Modify the job location as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have at least one job offer listed.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to modify. | The selected job offer/profile details are displayed. |
| 05   | Edit the job location. | The location is modified. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated. |

**Expected result:** The job location should be updated successfully.

---

### Add Required Tags

**Test case ID:** COM_MOD229 / CAN_MOD230

**Test case description:** Add required tags to a job offer/profile as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have access to the 'Add Tags' feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to add tags. | The selected job offer/profile details are displayed. |
| 05   | Add required tags. | Tags are added. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated with the new tags. |

**Expected result:** The required tags should be added successfully.

---

### Remove Required Tags

**Test case ID:** COM_MOD231 / CAN_MOD232

**Test case description:** Remove required tags from a job offer/profile as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have at least one tag added to the job offer/profile.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to remove tags. | The selected job offer/profile details are displayed. |
| 05   | Remove required tags. | Tags are removed. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated. |

**Expected result:** The required tags should be removed successfully.

---

### Add Appreciated Tags

**Test case ID:** COM_MOD233 / CAN_MOD234

**Test case description:** Add appreciated tags to a job offer/profile as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have access to the 'Add Tags' feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to add tags. | The selected job offer/profile details are displayed. |
| 05   | Add appreciated tags. | Tags are added. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated with the new tags. |

**Expected result:** The appreciated tags should be added successfully.

---

### Remove Appreciated Tags

**Test case ID:** COM_MOD235 / CAN_MOD236

**Test case description:** Remove appreciated tags from a job offer/profile as a company/candidate.

**Preconditions:** 
- The user should be logged in as a company/candidate.
- The user should have at least one tag added to the job offer/profile.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company/candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | The job offers list/profile is displayed. |
| 04   | Select a job offer/profile to remove tags. | The selected job offer/profile details are displayed. |
| 05   | Remove appreciated tags. | Tags are removed. |
| 06   | Click on the 'Save' button. | The job offer/profile is updated. |

**Expected result:** The appreciated tags should be removed successfully.

---

## Company swiping

### Left Swipe

**Test case ID:** COM_SW237

**Test case description:** Perform a left swipe as a company.

**Preconditions:** 
- The user should be logged in as a company.
- The user should have access to the swipe feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a left swipe on a candidate profile. | The candidate profile is dismissed. |
| 05   | Alternatively, click the 'Dislike' button. | The candidate profile is dismissed. |

**Expected result:** The candidate profile should be dismissed and the next profile should be displayed.

---

### Right Swipe

**Test case ID:** COM_SW238

**Test case description:** Perform a right swipe as a company.

**Preconditions:** 
- The user should be logged in as a company.
- The user should have access to the swipe feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a right swipe on a candidate profile. | The candidate profile is liked. |
| 05   | Alternatively, click the 'Like' button. | The candidate profile is liked. |

**Expected result:** The candidate profile should be liked and the next profile should be displayed.

---

## Candidate swiping

### Left Swipe

**Test case ID:** CAN_SW239

**Test case description:** Perform a left swipe as a candidate.

**Preconditions:** 
- The user should be logged in as a candidate.
- The user should have access to the swipe feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a left swipe on a job offer profile. | The job offer profile is dismissed. |
| 05   | Alternatively, click the 'Dislike' button. | The job offer profile is dismissed. |

**Expected result:** The job offer profile should be dismissed and the next profile should be displayed.

---

### Right Swipe

**Test case ID:** CAN_SW240

**Test case description:** Perform a right swipe as a candidate.

**Preconditions:** 
- The user should be logged in as a candidate.
- The user should have access to the swipe feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a right swipe on a job offer profile. | The job offer profile is liked. |
| 05   | Alternatively, click the 'Like' button. | The job offer profile is liked. |

**Expected result:** The job offer profile should be liked and the next profile should be displayed.

---

## Match

### Disliked card

**Test case ID:** CC_SW241

**Test case description:** Perform a left swipe, ensuring the match is not considered by the algorithm.

**Preconditions:** 
- The user should be logged in.
- The user should have access to the swipe feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a left swipe on a card. | The card is dismissed. |
| 05   | Verify the dismissed card is not considered for future matches. | The card is not shown again in future matches. |

**Expected result:** The card should be dismissed, not considered in future matches, and the next card should be displayed.

### Liked card

**Test case ID:** CC_SW242

**Test case description:** Perform a right swipe, ensuring the match is considered by the algorithm.

**Preconditions:** 
- The user should be logged in as a candidate.
- The user should have access to the swipe feature.
- There should be card profiles available for swiping.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform a right swipe on a card. | The card is liked. |
| 05   | Verify the liked profile is considered by the algorithm. | The card is saved and considered in the matching algorithm. |

**Expected result:** The card should be liked, considered for future matches, and the next card should be displayed.

---

### Matching skills

**Test case ID:** CC_MAT243

**Test case description:** Verify the matching score calculation for a candidate and job offer based on primary and secondary skills.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be job offer profiles with defined skills.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Swipe right on a job offer profile with matching primary and secondary skills. | Profile is liked. |
| 04   | Verify the matching score calculation. | The matching score is calculated correctly based on the skills. |

**Expected result:** The matching score should reflect the number of matching primary and secondary skills, with 1 point for each matching primary skill and 0.2 points for each matching secondary skill.

---

### Matching location

**Test case ID:** CC_MAT244

**Test case description:** Verify the location-based adjustments in the matching algorithm.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be job offer profiles with defined locations.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Swipe right on a job offer profile with a matching location. | Profile is liked. |
| 04   | Verify the location-based score adjustments. | The score is adjusted based on the location proximity. |

**Expected result:** The matching score should be increased by 1 point if the locations are in the same city or by 0.5 points if the locations are within the same region.

## Extra

### Swipe till the end

**Test case ID:** CC_EXT243

**Test case description:** Swipe through all available profiles until there are no more profiles left.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Swipe through all available profiles. | Profiles are swiped through. |

**Expected result:** The application should display a message indicating there are no more profiles left.

---

### Swipe up and down

**Test case ID:** CC_EXT244

**Test case description:** Test the application’s response to swiping in non-horizontal directions.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Swipe up on a profile.| The card should go back to it's place. |
| 05   | Swipe down on a profile.| The card should go back to it's place. |

**Expected result:** The application should not perform any unintended actions and should handle non-horizontal swipes gracefully.

---

### Fast swipe continuously

**Test case ID:** CC_EXT245

**Test case description:** Perform fast swipes continuously to test the application's responsiveness.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Perform fast swipes continuously. | Profiles are swiped quickly. |

**Expected result:** The application should handle fast swipes without lagging or crashing.

---

### Move the card around

**Test case ID:** CC_EXT246

**Test case description:** Move the profile card around the screen without swiping to test drag functionality.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the swipe section. | Swipe section is displayed. |
| 04   | Drag the profile card around the screen. | Profile card is moved around. |

**Expected result:** The profile card should move smoothly and return to its original position when released.

---

### Company responsiveness

**Test case ID:** CC_EXT247

**Test case description:** Ensure the responsiveness of the company side under various conditions.

**Preconditions:** The user should be logged in as a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Perform various actions (add job offer, swipe profiles, etc.). | Actions are performed. |

**Expected result:** The application should remain responsive and perform actions without delay.

---

### Candidate responsiveness

**Test case ID:** CC_EXT248

**Test case description:** Ensure the responsiveness of the candidate side under various conditions.

**Preconditions:** The user should be logged in as a candidate.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Perform various actions (update profile, swipe job offers, etc.). | Actions are performed. |

**Expected result:** The application should remain responsive and perform actions without delay.

---

### Add more than 5 required skills

**Test case ID:** CC_EXT249

**Test case description:** Attempt to add more than the maximum allowed number of required skills (5) to a job offer/profile.

**Preconditions:** 
- The user should be logged in.
- The user should have access to the 'Add Skills' feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Required Skills' section. | 'Required Skills' section is displayed. |
| 04   | Attempt to add 5 required skills. | Skills are added. |
| 05   | Attempt to add more than 5 required skills. | You should be blocked from doing it. |

**Expected result:** The application should prevent adding more than 5 required skills and display an appropriate message.

---

### Add all additional skills

**Test case ID:** CC_EXT250

**Test case description:** Add all possible additional skills to a job offer/profile.

**Preconditions:** 
- The user should be logged in.
- The user should have access to the 'Add Skills' feature.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Add Skills' section. | 'Add Skills' section is displayed. |
| 04   | Add all possible additional skills. | Skills are added. |

**Expected result:** The application should allow adding all additional skills without errors.

---

### Boundary length for big description

**Test case ID:** COM_EXT251

**Test case description:** Test the boundary length for the job description field (maximum [x] characters).

**Preconditions:** The user should be logged in as a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | Profile page is displayed. |
| 03   | Click on the wanted job offer. | Job offer is displayed. |
| 03   | Navigate to the 'Job Description' field. | 'Job Description' field is displayed. |
| 04   | Enter a description of [x] characters. | Description is entered. |
| 05   | Attempt to enter more than [x] characters. | No more than [x] characters are accepted. |

**Expected result:** The 'Job Description' field should accept up to [x] characters and not more.

---

### Boundary length for small description

**Test case ID:** CAN_EXT252

**Test case description:** Test the boundary length for the profile description field (maximum [x] characters).

**Preconditions:** The user should be logged in as a candidate.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | Profile page is displayed. |
| 04   | Navigate to the 'Description' field. | 'Description' field is displayed. |
| 05   | Enter a description of [x] characters. | Description is entered. |
| 06   | Attempt to enter more than [x] characters. | No more than [x] characters are accepted. |

**Expected result:** The 'Profile Description' field should accept up to [x] characters and not more.

---

### Try non-existing location

**Test case ID:** CC_EXT253

**Test case description:** Attempt to set a job offer/profile location to a non-existing location.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the 'Profile' section. | Profile page is displayed. |
| 06   | Navigate to the 'Location' field. | 'Location' field is displayed. |
| 05  | Enter a non-existing location. | Location is entered. |
| 07   | Attempt to save. | An error message is displayed. |

**Expected result:** The application should display an error message indicating the location does not exist.

# Build 3

## Algorithm

### Matching skills

**Test case ID:** CC_MAT354

**Test case description:** Verify the matching score calculation for a candidate and job offer based on primary and secondary skills.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be job offer profiles with defined skills.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Swipe right on a job offer profile with matching primary and secondary skills. | Profile is liked. |
| 04   | Verify the matching score calculation. | The matching score is calculated correctly based on the skills. |

**Expected result:** The matching score should reflect the number of matching primary and secondary skills, with 1 point for each matching primary skill and 0.2 points for each matching secondary skill.

---

### Matching location

**Test case ID:** CC_MAT355

**Test case description:** Verify the location-based adjustments in the matching algorithm.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be job offer profiles with defined locations.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Swipe right on a job offer profile with a matching location. | Profile is liked. |
| 04   | Verify the location-based score adjustments. | The score is adjusted based on the location proximity. |

**Expected result:** The matching score should be increased by 1 point if the locations are in the same city or by 0.5 points if the locations are within the same region.

---

### Accuracy of the matches

**Test case ID:** CC_MAT356

**Test case description:** Verify the accuracy of the matches generated by the algorithm.

**Preconditions:** 
- The user should be logged in.
- There should be profiles with a mix of matching and non-matching skills and locations.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Review the generated matches. | Matches are reviewed. |
| 04   | Verify the relevance of the matches based on skills and location. | Matches are relevant. |

**Expected result:** The generated matches should be accurate and relevant based on the user's skills and location.

---

### Score of the candidates

**Test case ID:** CC_MAT357

**Test case description:** Verify the scoring system for candidates based on primary and secondary skills.

**Preconditions:** 
- The user should be logged in as a company.
- There should be candidate profiles with defined skills.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Swipe right on a candidate profile with matching primary and secondary skills. | Profile is liked. |
| 04   | Verify the matching score calculation. | The matching score is calculated correctly based on the skills. |

**Expected result:** The matching score should reflect the number of matching primary and secondary skills, with 1 point for each matching primary skill and 0.2 points for each matching secondary skill.

---

### Score of the job offers

**Test case ID:** CC_MAT358

**Test case description:** Verify the scoring system for job offers based on primary and secondary skills.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be job offer profiles with defined skills.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Swipe right on a job offer profile with matching primary and secondary skills. | Profile is liked. |
| 04   | Verify the matching score calculation. | The matching score is calculated correctly based on the skills. |

**Expected result:** The matching score should reflect the number of matching primary and secondary skills, with 1 point for each matching primary skill and 0.2 points for each matching secondary skill.

---

## Settings

### Translation

**Test case ID:** CC_SET359

**Test case description:** Verify the application's translation feature.

**Preconditions:** 
- The user should be logged in.
- The application should support multiple languages.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the settings. | Settings page is displayed. |
| 04   | Change the language setting. | Language setting is changed. |
| 05   | Verify the translation throughout the application. | The application is translated correctly. |

**Expected result:** The application should be translated correctly into the selected language.

---

### Laws requirements

**Test case ID:** CC_SET360

**Test case description:** Verify the application's compliance with laws and regulations.

**Preconditions:** 
- The user should be logged in.
- The application should have features to comply with relevant laws.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Navigate to the settings. | Settings page is displayed. |
| 04   | Verify the compliance settings and features. | Compliance settings are verified. |

**Expected result:** The application should comply with relevant laws and regulations.

---

## Extra

### Responsiveness

**Test case ID:** CC_EXT361

**Test case description:** Ensure the application's responsiveness under various conditions.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Perform various actions (navigate, swipe, etc.). | Actions are performed. |

**Expected result:** The application should remain responsive and perform actions without delay.

---

### Seamless navigation

**Test case ID:** CC_EXT362

**Test case description:** Ensure seamless navigation throughout the application.

**Preconditions:** The user should be logged in.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Navigate through various sections. | Sections are navigated. |

**Expected result:** Navigation throughout the application should be seamless and without any lag or errors.

---

### Compatibility

**Test case ID:** CC_EXT363

**Test case description:** Test the application's compatibility across different devices and platforms.

**Preconditions:** The application should be available on multiple platforms.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Download the application on various devices and platforms. | The application downloads successfully. |
| 02   | Open the application on each device and platform. | The application opens successfully. |
| 03   | Perform basic operations (create account, log in, log out) on each device and platform. | All operations perform correctly. |

**Expected result:** The application should function correctly on all supported devices and platforms.

# Build 4

## Company chat

### Start conversation

**Test case ID:** COM_CHA464

**Test case description:** Start a conversation as a company.

**Preconditions:** 
- The user should be logged in as a company.
- There should be available candidate profiles.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Navigate to a candidate profile. | Candidate profile is displayed. |
| 04   | Click on the 'Start Conversation' button. | Conversation window opens. |
| 05   | Enter a message and send. | Message is sent successfully. |

**Expected result:** The company should be able to start a conversation and send a message successfully.

---

### Send messages

**Test case ID:** COM_CHA465

**Test case description:** Send messages as a company.

**Preconditions:** 
- The user should be logged in as a company.
- A conversation should be initiated.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Enter a message and send. | Message is sent successfully. |

**Expected result:** The company should be able to send messages successfully in an ongoing conversation.

---

### Receive messages

**Test case ID:** COM_CHA466

**Test case description:** Receive messages as a company.

**Preconditions:** 
- The user should be logged in as a company.
- A conversation should be initiated.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a company. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Wait for the candidate to send a message. | Message is received. |

**Expected result:** The company should be able to receive messages from candidates successfully.

---

## Candidate chat

### Cannot start conversation

**Test case ID:** CAN_CHA467

**Test case description:** Verify that candidates cannot start a conversation.

**Preconditions:** 
- The user should be logged in as a candidate.
- There should be available company profiles.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Navigate to a company profile. | Company profile is displayed. |
| 04   | Verify that there is no option to start a conversation. | No 'Start Conversation' button is present. |

**Expected result:** Candidates should not have the option to start a conversation.

---

### Send messages

**Test case ID:** CAN_CHA468

**Test case description:** Send messages as a candidate.

**Preconditions:** 
- The user should be logged in as a candidate.
- A conversation should be initiated by a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Enter a message and send. | Message is sent successfully. |

**Expected result:** The candidate should be able to send messages successfully in an ongoing conversation.

---

### Receive messages

**Test case ID:** CAN_CHA469

**Test case description:** Receive messages as a candidate.

**Preconditions:** 
- The user should be logged in as a candidate.
- A conversation should be initiated by a company.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in as a candidate. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Wait for the company to send a message. | Message is received. |

**Expected result:** The candidate should be able to receive messages from companies successfully.

---

## Extra

### DB correlation

**Test case ID:** CC_EXT470

**Test case description:** Verify that chat messages are correctly correlated and stored in the database.

**Preconditions:** 
- The user should be logged in.
- A conversation should be initiated.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Send and receive messages. | Messages are exchanged. |
| 05   | Verify the messages in the database. | Messages are correctly stored and correlated in the database. |

**Expected result:** Chat messages should be correctly correlated and stored in the database.

---

### No sending of audio, pictures, etc.

**Test case ID:** CC_EXT471

**Test case description:** Verify that users cannot send audio, pictures, or other multimedia files in chat.

**Preconditions:** 
- The user should be logged in.
- A conversation should be initiated.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Open the application. | The application opens successfully. |
| 02   | Ensure the user is logged in. | User is logged in. |
| 03   | Open an existing conversation. | Conversation window is displayed. |
| 04   | Attempt to send an audio file. | Sending is blocked. |
| 05   | Attempt to send a picture. | Sending is blocked. |
| 06   | Attempt to send other multimedia files. | Sending is blocked. |

**Expected result:** Users should not be able to send audio, pictures, or other multimedia files in chat.

---

### Full company journey

**Test case ID:** COM_EXT472

**Test case description:** Verify the full journey of a company user from registration to chat.

**Preconditions:** 
- The user should have access to the application.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Register as a company. | Registration is successful. |
| 02   | Log in as a company. | Login is successful. |
| 03   | Add a job offer. | Job offer is added. |
| 04   | Initiate a conversation with a candidate. | Conversation is initiated. |
| 05   | Send and receive messages. | Messages are exchanged. |

**Expected result:** The company user should be able to complete the entire journey from registration to engaging in chat.

---

### Full candidate journey

**Test case ID:** CAN_EXT473

**Test case description:** Verify the full journey of a candidate user from registration to chat.

**Preconditions:** 
- The user should have access to the application.

**Test steps:**

| Step | Instructions | Expected behaviour |
|------|--------------|---------------------|
| 01   | Register as a candidate. | Registration is successful. |
| 02   | Log in as a candidate. | Login is successful. |
| 03   | Apply for job offers. | Applications are made. |
| 04   | Engage in a conversation initiated by a company. | Conversation is engaged. |
| 05   | Send and receive messages. | Messages are exchanged. |

**Expected result:** The candidate user should be able to complete the entire journey from registration to engaging in chat.