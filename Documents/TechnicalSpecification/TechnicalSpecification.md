# Technical Specifications - Adopte un Candidat [Team 3]

## Document Control

### Document Information

|                   | Information |
| ----------------- | ----------- |
| Document Owner    | Maxime CARON|
| Creation Date     | 2024/05/17  |
| Last Update Date  | 2024/05/17  |
| Document Name     | Technical Specifications - Adopte un Candidat [Team 3]|

### Document Versions

| Version n°  | Author       | Date       | Description of edits |
| ----------- | ------------ | ---------- | -------------------- |
| 0.01        | Maxime CARON | 11/08/2023 | Initial Version with plan and basics |

### Document Approvals
| Role               | Name             | Date  |
| ------------------ | ---------------- | ----- |
| Project Manager    | Lucas AUBARD     |       |
| Technical Leader   | Maxime CARON     |       |
| Program Manager    | Habi CAILLEAU    |       |
| Quality Assurance  | Clémentine Curel |       |
| Technical Writer   | Alexis LASSELIN  |       |
| Software Engineer  | Thibaud MARLIER  |       |


## Table of Contents

<details>
<summary><b>Click to expand</b></summary>

- [Technical Specifications - Adopte un Candidat \[Team 3\]](#technical-specifications---adopte-un-candidat-team-3)
  - [Document Control](#document-control)
    - [Document Information](#document-information)
    - [Document Versions](#document-versions)
    - [Document Approvals](#document-approvals)
  - [Table of Contents](#table-of-contents)
  - [I. Introduction](#i-introduction)
    - [1. Glossary](#1-glossary)
    - [2. Document Purpose](#2-document-purpose)
    - [3. Project Definition](#3-project-definition)
      - [**A. Vision**](#a-vision)
      - [**B. Goals and Objectives**](#b-goals-and-objectives)
        - [➭ General Features:](#-general-features)
        - [➭ Company Side:](#-company-side)
        - [➭ Job Seeker Side: ](#-job-seeker-side-)
      - [**C. Future Improvements**](#c-future-improvements)
      - [**D. Assumptions**](#d-assumptions)
  - [II. Technology Presentation](#ii-technology-presentation)
    - [1. Flutter](#1-flutter)
      - [**A. Definition and Usage**](#a-definition-and-usage)
      - [**B. Used Packages**](#b-used-packages)
        - [➭ Development Packages:](#-development-packages)
        - [➭ Testing Packages:](#-testing-packages)
      - [**C. Working Environment**](#c-working-environment)
    - [2. Firebase](#2-firebase)
      - [**A. Definition and Usage**](#a-definition-and-usage-1)
        - [➭ Definition:](#-definition)
        - [➭ Usage:](#-usage)
      - [**B. Working environment**](#b-working-environment)
  - [III. Technical Specification](#iii-technical-specification)
    - [1. Coding Conventions](#1-coding-conventions)
      - [A. Folder Structure](#a-folder-structure)
        - [➭ Structure:](#-structure)
        - [➭ Files and Folders Naming Conventions:](#-files-and-folders-naming-conventions)
        - [➭ Folder details:](#-folder-details)
      - [B. Comments](#b-comments)
        - [➭ Comments at File Beginning:](#-comments-at-file-beginning)
        - [➭ Comments in the Code:](#-comments-in-the-code)
      - [C. Code Structuration](#c-code-structuration)
        - [➭ Indentation:](#-indentation)
        - [➭ Spacing:](#-spacing)
        - [➭ Naming Conventions:](#-naming-conventions)
    - [2. Database](#2-database)
      - [A. Data Model Overview](#a-data-model-overview)
      - [B. Tables Details and Usage](#b-tables-details-and-usage)
      - [C. Interaction From the Application](#c-interaction-from-the-application)
      - [D. Future Improvements with API](#d-future-improvements-with-api)
    - [3. Graphic Conventions](#3-graphic-conventions)
      - [A. Colors](#a-colors)
      - [B. Typography](#b-typography)
    - [4. Widgets](#4-widgets)
      - [A. Buttons](#a-buttons)
      - [B. Fields](#b-fields)
      - [C. Menus](#c-menus)
    - [5. Pages](#5-pages)
      - [A. Login and Subscription](#a-login-and-subscription)
      - [B. Company Side](#b-company-side)
      - [C. Job Seeker Side](#c-job-seeker-side)
    - [6. Matching Algorithm](#6-matching-algorithm)
  - [IV. Further Considerations](#iv-further-considerations)
    - [1. Issues and Impact](#1-issues-and-impact)
    - [2. Considerations](#2-considerations)
  - [V. Work](#v-work)
    - [1. Work](#1-work)
</details>

## I. Introduction

### 1. Glossary

| Term             | Definition | Source |
| ---------------- | ---------- | ------ |
| Flutter          |            |        |
| Firebase         |            |        |
| API              |            |        |
| Database         |            |        |
| Widget           |            |        |
| Page             |            |        |
| Matching         |            |        |
| Chat             |            |        |

### 2. Document Purpose

The purpose of this document is to expand upon the functional specifications by defining the features, scope, and objectives of the project. It provides detailed explanations of how each feature works and serves as a comprehensive guide for the development team and other team members who need an in-depth understanding of the application.

It is highly recommended to read the  [Functional Specifications](../FunctionalSpecification/FunctionalSpecification.md) before proceeding with this document.

This document serves as a reference for the development team to understand the technical requirements of the project, ensuring that the project is developed in alignment with the specified guidelines.

Additionally, it provides resources on coding conventions, database structure, graphic standards, and other aspects crucial to the maintainability and scalability of the application.

The ultimate goal is to provide We Are Evolution, the client of the project, with a clear understanding of how the application functions and how it can be further developed and maintained.




### 3. Project Definition

The project is a mobile application that aims to connect job seekers with companies. The application is supposed to be a "Tinder" like application where job seekers and companies can swipe on each other to match. The application will also have a chat feature to allow the matched users to communicate.

This application will be developed for We Are Evolution, with the only requirement to use Flutter and do a "Tinder" like application.

#### **A. Vision**

As the client gave us a lot of freedom in the application design and features, we decided to create an application outside the box. Most job-seeking applications are boring, with a cold design and are not user-friendly. We want to create a fun and easy-to-use application that will make the job-seeking process more enjoyable.

#### **B. Goals and Objectives**
Our main goals are to create a Flutter application that will allow job seekers and companies to match with each other.

The application will have the following contain 2 different sides:
- The company side, where companies can create a profile, set their preferences and swipe on job seekers.
- The job seeker side, where job seekers can create a profile, set their preferences and swipe on companies.
</br>
</br>

##### ➭ <ins>General Features:</ins>
- Account settings: Job seekers can change their account settings.
- Algorithm: The application will have a matching algorithm to match job seekers and companies.

##### ➭ <ins>Company Side:</ins>

The company side will have the following features:
- Profile: Companies can create a profile with the ability to administrate the various job offers they have.
- Swap Area: Companies can swipe on job seekers.
- Chat: Companies can chat with job seekers they are matched with and differentiate them through the job offers they have matched with.
</br>
</br>

##### ➭ <ins>Job Seeker Side: </ins>

The job seeker side will have the following features:
- Profile: Job seekers can create a profile with various fields to personalize their profile.
- Swap Area: Job seekers can swipe on companies.
- Chat: Job seekers can chat with companies they are matched with.

#### **C. Future Improvements**

The first version of the application will not contain all the features we would like to implement. Here are some of the features we would like to add in the future:
- An API to allow the application to interact with a database.
- Tests to ensure that every information given by the user is correct like testing if the company is real or if the job seeker is a real person.

#### **D. Assumptions**

We are assuming that the application will be used by real companies and job seekers. We are also assuming that the application will be used professionally and that the users will not use the chat feature to send inappropriate messages.

## II. Technology Presentation

### 1. Flutter

#### **A. Definition and Usage**

For this project, it's mandatory to use Flutter. Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.

We will use Flutter to create the mobile application for We Are Evolution. Flutter is a great tool for creating mobile applications as it allows to creation of a single codebase for both Android and iOS applications. It also allows to creation of beautiful and responsive applications.

#### **B. Used Packages**

To create the application, we will need to use some packages.

##### ➭ <ins>Development Packages:</ins>

##### ➭ <ins>Testing Packages:</ins>
- `flutter_observatory`: A package that provides a testing framework for Flutter applications.
- `mockito`: A package that provides a mock library for Dart.
- `flutter_test`: A package that provides unit testing for Flutter applications.
- `flutter_driver`: A package that provides integration testing for Flutter applications.
- `widget_tester`: A package that provides widget testing for Flutter applications.

#### **C. Working Environment**

To work on the project, we will need to have a working environment. Here is the working environment we will use:
- Flutter SDK: The Flutter SDK is the software development kit that allows us to create Flutter applications. We will use the latest version of the Flutter SDK to create the application.
- Visual Studio Code: Visual Studio Code is the integrated development environment that allows us to create Flutter applications.
- Android Studio: Android Studio is the integrated development environment that allows us to create Android applications. We will use Android Studio to create various virtual devices to test the application.

For a complete installation guide, please refer to the [Flutter documentation](https://flutter.dev/docs/get-started/install).
Or follow the following video tutorials: 
- [Flutter Installation for Windows](https://youtube.com/playlist?list=PL82uaKJraAIJ0g3z076X2Gb2or05_xGAZ&si=O3KmoeAdGNZWOyOU).
- [Flutter Installation for MacOS](https://youtube.com/playlist?list=PL82uaKJraAII8HJjA98l-M6qb_teI97kW&si=sIDT-y6wrXq-l9Ei).

### 2. Firebase

#### **A. Definition and Usage**

##### ➭ <ins>Definition:</ins>
Firebase is a comprehensive app development platform by Google that provides a variety of tools and services to help developers build high-quality applications quickly. It offers backend services such as real-time databases, authentication, crash reporting, analytics, cloud storage, and hosting, among others.

##### ➭ <ins>Usage:</ins>
- **Real-time Database:** Firebase Realtime Database stores and syncs data in real-time across all clients. This is particularly useful for applications that require frequent updates, such as chat apps or collaborative tools.
- **Authentication:** Firebase Authentication provides easy-to-use SDKs and backend services to authenticate users with passwords, phone numbers, and popular federated identity providers like Google, Facebook, and Twitter.

#### **B. Working environment**

Firebase integrates seamlessly with your existing working environment, whether you are developing for mobile (iOS, Android) or web applications. Here’s a brief overview of setting up and working with Firebase:

1. **Project Setup:**
   - Create a new project in the [Firebase Console](https://console.firebase.google.com/).
   - Add your app to the Firebase project by following the step-by-step instructions for your platform (iOS, Android, Web).

2. **SDK Integration:**
   - For **Android**, add the Firebase SDK to your `build.gradle` files.
   - For **iOS**, add Firebase via CocoaPods in your `Podfile`.
   - For **Web**, include Firebase via npm or by adding the Firebase scripts directly in your HTML.

3. **Configuration:**
   - Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) file from the Firebase Console and add it to your project.
   - Initialize Firebase in your application code.

4. **Development Tools:**
   - Use Firebase’s emulators for real-time databases, Firestore, and other services to develop and test your app locally before deploying.
   - Monitor performance and logs through the Firebase Console, which provides a detailed overview of your app’s activity.

5. **Collaboration:**
   - Firebase supports role-based access control (RBAC), allowing team members to collaborate with appropriate permissions.
   - Integration with other Google Cloud services can enhance collaboration and expand functionality.

By leveraging Firebase’s comprehensive suite of services, development teams can streamline their workflow, enhance application performance, and improve user experience across platforms.

## III. Technical Specification

### 1. Coding Conventions

#### A. Folder Structure

##### ➭ <ins>Structure:</ins>
The folder structure of the project will be as follows:
```plaintext
lib/
  ├── main.dart
  ├── models/
  │     ├── user.dart
  │     ├── company.dart
  │     ├── chat.dart
  │     ├── message.dart
  ├── services/
  │     ├── authentication.dart
  │     ├── database.dart
  │     ├── matching.dart
  ├── widgets/
  │     ├── buttons/
  │     │     ├── text_button.dart
  │     │     ├── icon_button.dart
  │     ├── fields/
  │     │     ├── text_field.dart
  │     │     ├── localization_field.dart
  │     │     ├── tag_field.dart
  │     ├── menus/
  │     │     ├── menu.dart
  │     │     ├── dropdown_menu.dart
  ├── pages/
  │     ├── login.dart
  │     ├── subscription.dart
  │     ├── company/
  │     │     ├── profile.dart
  │     │     ├── settings.dart
  │     │     ├── swap_area.dart
  │     │     ├── chat.dart
  │     ├── job_seeker/
  │     │     ├── profile.dart
  │     │     ├── settings.dart
  │     │     ├── swap_area.dart
  │     │     ├── chat.dart
  ├── matching_algorithm.dart
```
This folder structure will probably change as the project evolves however it provides a good starting point for the project. 

##### ➭ <ins>Files and Folders Naming Conventions:</ins>
To maintain consistency and make it easier to navigate through the code, we will use the same naming conventions as the one used by default in Flutter. We will use snake_case for files and folder names. This will make it easier to read and understand the code.

##### ➭ <ins>Folder details:</ins>

- **`models/`:** This folder will contain all the models used in the application. Each model will be in a separate file.
- **`services/`:** This folder will contain all the services used in the application. Each service will be in a separate file.
- **`widgets/`:** This folder will contain all the widgets used in the application. Each widget will be in a separate file.
- **`pages/`:** This folder will contain all the pages used in the application. Each page will be in a separate file.

#### B. Comments

Comments are an essential part of the code as they help to understand the code better. We will use comments to explain the code and make it easier to understand. We will use comments to explain the purpose of the code, the logic behind it, and any other relevant information.

##### ➭ <ins>Comments at File Beginning:</ins>
At the beginning of each file, we will add a comment that explains the purpose of the file. This comment will provide a brief overview of the file and its contents. This will help to understand the file better and make it easier to navigate through the code.

*Example:*
```dart
// This file contains the model for the user.
// The user model contains all the information about the user.
```

##### ➭ <ins>Comments in the Code:</ins>
We will also use comments in the code to explain the logic behind the code. We will use comments to explain the purpose of each function, the parameters it takes, and the return value. This will help to understand the code better and make it easier to maintain.

*Example:*

**Before a function:**
```dart
// This function adds two numbers and returns the result.
// Parameters:
// - num1: The first number to add.
// - num2: The second number to add.
// Returns: The sum of the two numbers.
int add(int num1, int num2) {
  return num1 + num2;
}
```

**Inside a function:**
```dart
// Check if the user is authenticated.
if (isAuthenticated) {
  // If the user is authenticated, show the home page.
  showHomePage();
} else {
  // If the user is not authenticated, show the login page.
  showLoginPage();
}
```

#### C. Code Structuration

The code will be structured in a way that makes it easy to read and maintain. We will use proper indentation, spacing, and naming conventions to make the code more readable. We will also use meaningful variable names and function names to make it easier to understand the code.

##### ➭ <ins>Indentation:</ins>
We will use proper indentation to make the code more readable. We will use 2 spaces for indentation. This will make the code easier to read and understand.

*Example:*
```dart
void main() {
  print('Hello, World!');
}
```
##### ➭ <ins>Spacing:</ins>
We will use proper spacing to make the code more readable. We will use a space after each comma and operator. This will make the code easier to read and understand.

*Example:*
```dart
int add(int num1, int num2) {
  return num1 + num2;
}
```

##### ➭ <ins>Naming Conventions:</ins>
We will use meaningful variable names and function names to make the code more understandable. We will use camelCase for variable names and function names. This will make the code easier to read and maintain.

### 2. Database

#### A. Data Model Overview

#### B. Tables Details and Usage

#### C. Interaction From the Application 

#### D. Future Improvements with API

### 3. Graphic Conventions 

#### A. Colors

#### B. Typography

### 4. Widgets

#### A. Buttons
- Text Buttons
- Icon Buttons
#### B. Fields
- Text Field
- Localization Field
- Tag Field
#### C. Menus

### 5. Pages

#### A. Login and Subscription

#### B. Company Side
- Profile
- Settings
- Swap Area
- Chat
#### C. Job Seeker Side
- Profile
- Settings
- Swap Area
- Chat
### 6. Matching Algorithm

## IV. Further Considerations

### 1. Issues and Impact

### 2. Considerations

## V. Work

### 1. Work