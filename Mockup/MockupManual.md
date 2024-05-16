# 2023-2024-project-5-flutter-team-3

<details>

<summary>Table of content</summary>
<br>

- [2023-2024-project-5-flutter-team-3](#2023-2024-project-5-flutter-team-3)
- [Introduction](#introduction)
  - [Figma](#figma)
    - [Tutorial](#tutorial)
      - [For mockup 1](#for-mockup-1)
      - [For mockup 2](#for-mockup-2)
  - [Features](#features)
  - [Login / Subscribe](#login--subscribe)
    - [From The Job Seeker's point of view](#from-the-job-seekers-point-of-view)
    - [From the HR point of view](#from-the-hr-point-of-view)
  - [Terms Of Use / Legal Paperwork / GDPR](#terms-of-use--legal-paperwork--gdpr)
  - [Profile Page](#profile-page)
    - [From The HR Point Of View](#from-the-hr-point-of-view-1)
      - [New Job Offer](#new-job-offer)
    - [From The Job Seeker's Point Of View](#from-the-job-seekers-point-of-view-1)
  - [Swipe Page](#swipe-page)
  - [Chat Box](#chat-box)
    - [Company](#company)
    - [Job Seeker](#job-seeker)
  - [Splash Screen](#splash-screen)
  - [General Settings](#general-settings)
  - [Color Palette](#color-palette)
  - [Conclusion](#conclusion)

</details>

# Introduction

This document is destined for We Are Evolution. It outlines the key features we have established in our project and application, providing you with an overview of our final product. We kindly request your feedback to validate our idea.

## Figma

The mockup will be developed on Figma. \
[Click here to access the mockup](https://www.figma.com/design/U34VY3z7ifzQCtJTrQ1dnu/Adopt-a-candidate?node-id=0%3A1&t=aX8WZ9z9eStg1wuD-1
)

### Tutorial

This tutorial will help you to start the mockup on Figma.

After following the previous link, here's what you will encounter:

![Figma main](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/figmamenu.png)

You now are on the main Figma page.
You'll notice that there are two mockups, be sure to check **both**!

#### For mockup 1

- Click on "Mockup 1"
- Check the top right of the page, you'll see a button named "Present"

![present button](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/menu2.png)

- Click on the arrow next to it

![preview button](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/preview.png)

- Click on "Preview" to start the mockup

The mockup is now running!

![mockup started](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/darkmockuprunning.png)

#### For mockup 2

- Click on "Mockup 2"
- Check the top right of the page, you'll see a button named "Present"

![present button](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/menumockup2.png)

- Click on the arrow next to it
- Click on "Preview" to start the mockup

![Preview white](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/clickpreviewwhite.png)

The mockup two is now running!

![mockup started](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/mockupwhiterunning.png)

### More information

To go from one to another page, you can click on the arrow on the left of the screen. But you can also click on the screen. \
If you click somewhere on the screen, but you don't get redirected, you might have not clicked on a working button. \
If so, simply click once more and you'll see the available buttons will be highlighted in blue for a short period, it will help you to identify the clickable buttons.

If you have any questions or if you encounter any issues, feel free to ask us! \
For feedback and assistance: <habi.cailleau@algosup.com>

## Features

Outlined below are the main features that we have decided to include in our application.

## Login / Subscribe

This page will represent the login and subscribe page of the application.
The user will be able to log in or subscribe to the application.
The user will be able to log in with their email and password.
If the user doesn't have an account, they will be able to create one by clicking on the subscribe button. The user will have to fill in the following information to create an account:

### From The Job Seeker's point of view

- First name
- Last name
- Email
- Password
- Confirm password

### From the HR point of view

- Company name
- Company's field of activity
- Email
- Password
- Confirm password

## Terms Of Use / Legal Paperwork / GDPR

Upon creating an account, users will encounter the terms of use and all the legal conventions that they need to accept to use the application. The user will have to accept the terms of use. The application will comply with GDPR.

Note: The terms of use will be available in the settings. The user can check the terms of use at any time and change their preferences regarding the terms of use.

## Profile Page

This page will represent the user's profile. The user will be able to see and edit their information.

### From The HR Point Of View

On this page, the person responsible for the company will be able to insert:

- Company Type
- Company's field of activity
- Company's location
- Description of the company
- Create a new job offer directly from the profile page (button)
- Job offer(s) available (will be done automatically)

Each piece of information on the profile page will be editable. \
Each piece of information won't be available to the public. Only the account owner will be able to see them. \
Information will be displayed to the public on the swipe page, but not all of it. Refer below to have an overview of what will be displayed.

#### New Job Offer

On this page, the user will be able to create a new job offer. It will contain these informations:

- Description of the job offer
- Position of the job offer
- Location of the job
- Required skills for the job
- Additional skills for the job
- Type of contract
- Number of hours per week
- (Salary) -> TO CONFIRM

Information will then be displayed to the public on the swipe page once the HR has validated and created it. \
Note that information can be edited at any time.

### From The Job Seeker's Point Of View

On this page, the user will find all the information that they have inserted during the registration process. The information that the user will be able to insert includes:

- A small sentence to define the job seeker (100 characters max)
- 5 primary soft skills
- Sub skills
- Position (Job title)
- Preferences in terms of company:
  - Field of activity
  - Location (won't be available to the public)
  - Type of contract
  - Job title

Information will be displayed to the public on the swipe page. Each piece of information on the profile page will be editable.

## Swipe Page

One of our product's key features is to help job seekers and employers find matches based on the individual's skills and the job requirements. To achieve this, we use a Tinder-style card interface that briefly describes the job seeker's skills or the employer's requirements. Users have two options:

- Swipe left to express interest in the profile. If the other party also expresses interest, both users will be connected and can arrange an interview.
- Swipe right to indicate disinterest in the profile, which will no longer be recommended.

## Chat Box

The chat box is where both the company's representative and the job seeker will be able to communicate. After a match, the chat box will be available to the company first; they are the ones responsible for starting the conversation. The job seeker will only be able to respond to the company's message once they receive it.

### Company

When matching, the company has the choice to start messaging right away or wait to decide whether or not to start communicating with the candidate. The company will be able to see the job seeker's profile and the job offer that the job seeker has applied to. The company will also be able to see the job seeker's preferences and skills.

The chat box will be organized by job offer. The company will be able to see all the matches they have for a specific job offer to improve readability and organization.

### Job Seeker

Upon receiving a message from a company, it is now the job seeker's turn to decide whether they want to keep the communication going or not. The job seeker will have the possibility to see the company's profile.

## Splash Screen

This page will represent the splash screen of the application. It will be displayed for a few seconds when the application is launched and also as a loading screen when the user is waiting for a page to load. The logo and the name of the application will be displayed on this page.

## General Settings

This page will represent the settings of the application. The job seeker and the HR will be able to change their settings, such as:

- Changing the language of the application (English and French)
- Filters for the swipe page
- Notifications settings
- Privacy settings
- Terms of use
- Delete account

## Color Palette

The color palettes we have chosen for our application are as follows:

- For mockup 1:
![Color Palette](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/ColorPalette.png)

- For mockup 2:
![Color Palette 2](https://github.com/algosup/2023-2024-project-5-flutter-team-3/blob/documents/Mockup/img/ColorPalette2.png)

## Conclusion

In conclusion, the features outlined in this document represent our strategic decisions for developing our project and application. We believe these features are essential to achieving our goals and creating a successful final product. Your feedback and validation are invaluable to us as we move forward in this endeavor. Thank you for your time and consideration.
