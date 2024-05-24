# Functional Specification

<details>
<summary>Table of Content</summary>

- [Functional Specification](#functional-specification)
  - [I. Introduction](#i-introduction)
    - [1. Stakeholders](#1-stakeholders)
      - [A. Project team](#a-project-team)
      - [B. Stakeholders](#b-stakeholders)
    - [2. Overview](#2-overview)
    - [3. Purpose](#3-purpose)
    - [4. Milestones](#4-milestones)
  - [II. Personas and use cases](#ii-personas-and-use-cases)
    - [1. Personas](#1-personas)
      - [First persona :](#first-persona-)
      - [Second persona :](#second-persona-)
      - [Third persona :](#third-persona-)
    - [2. Use cases](#2-use-cases)
      - [Use Case 1 : Candidate Creates Profile](#use-case-1--candidate-creates-profile)
      - [Use Case 2 : Company Creates Profile](#use-case-2--company-creates-profile)
      - [Use Case 3 : Candidate Searches for Jobs](#use-case-3--candidate-searches-for-jobs)
      - [Use Case 4 : Company Searches for Candidates](#use-case-4--company-searches-for-candidates)
      - [Use Case 5 : Candidate and Company Match](#use-case-5--candidate-and-company-match)
      - [Use Case 6 : Candidate Receives Job Offer](#use-case-6--candidate-receives-job-offer)
  - [III. Functionalities](#iii-functionalities)
    - [1. Design](#1-design)
      - [A. logo](#a-logo)
      - [B. Application](#b-application)
    - [2. Constraints](#2-constraints)
  - [IV. Application's features](#iv-applications-features)
  - [V. Non-Functional Requirements](#v-non-functional-requirements)
  - [VI. Assumptions](#vi-assumptions)
  - [VII. Conclusion](#vii-conclusion)
  - [IX. Glossary](#ix-glossary)
</details>

## I. Introduction

### 1. Stakeholders

#### A. Project team
| Name             | Role              | Linkedin                                                           |
| ---------------- | ----------------- | ------------------------------------------------------------------ |
| Lucas AUBARD     | Project manager   | [LinkedIn](https://www.linkedin.com/in/lucas-aubard-596b37251/)    |
| Habi CAILLEAU    | Program manager   | [LinkedIn](https://www.linkedin.com/in/habi-cailleau-3b72b5293/)   |
| Maxime CARON     | Tech lead         | [LinkedIn](https://www.linkedin.com/in/maxime-caron-dev/)          |
| Thibaud MARLIER  | software engineer | [LinkedIn](https://www.linkedin.com/in/thibaud-marlier/)           |
| Clementine CUREL | Quality assurance | [LinkedIn](https://www.linkedin.com/in/clementine-curel/)          |
| Alexis LASSELIN  | Technical writer  | [LinkedIn](https://www.linkedin.com/in/alexis-lasselin-318649251/) |

#### B. Stakeholders

| Name             | Role       | Implication                                                      | Links                                                                   |
| ---------------- | ---------- | ---------------------------------------------------------------- | ----------------------------------------------------------------------- |
| WE ARE EVOLUTION | Client     | The company that assigned the project.                           | [Website](https://www.we-are-evolution.com)                             |
| ALGOSUP          | Client     | The company that will help with the development of the software. | [Website](https://algosup.com)                                          |
| Team 3           | Developers | The team that will develop the software of the project.          | [Github](https://github.com/algosup/2023-2024-project-5-flutter-team-3) |


### 2. Overview

"Adopte Un Candidat" is an innovative recruitment platform designed to revolutionize the traditional hiring process by leveraging a 'Tinder-style' matching system. The primary objective of this application is to facilitate a fair and efficient job matching process by prioritizing the anonymization of candidates and companies, thereby focusing solely on skills and compatibility rather than demographic factors that can lead to bias.

### 3. Purpose 

The primary purpose of this Functional Specification Document is to serve as a comprehensive blueprint for the design, development, and deployment of the "Adopte Un Candidat" application. This document aims to outline in detail the functional requirement necessary to create a robust platform that aligns with the project's objectives as outlined in the call for tender. It is intended to guide both the project team and stakeholders through the entire lifecycle of the project, ensuring that all functional requirements are met.

### 4. Milestones

| Deliverable              | Description                                                                                                                   | Deadline   |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------- | ---------- |
| Functional Specification | It's a document that explain all the functional requirements of the application.                                              | 05/25/2024 |
| Technical Specification  | It's a document that explain all the technical requirements of the application.                                               | 06/07/2024 |
| Test Plan                | It's a document that explain how and when the product will be tested. All the test cases will be available in this document.  | 06/07/2024 |
| Code                     | The source code of the product.                                                                                               | 06/14/2024 |
| User Manual              | It's a document made for the end user that will explain how to use it and also all the information he needs to know about it. | 06/14/2024 |
| Oral Presentation        | It's the final oral presentation of the project presented by all the team                                                     | 06/21/2024 |

## II. Personas and use cases

### 1. Personas
 
#### First persona : 
<img src="..\FunctionalSpecification\images\2.png" alt="Persona 1"/>

#### Second persona : 
<img src="..\FunctionalSpecification\images\3.png" alt="Persona 2"/>

#### Third persona : 
<img src="..\FunctionalSpecification\images\1.png" alt="Persona 3"/>


### 2. Use cases

#### Use Case 1 : Candidate Creates Profile

Title: Candidate Creates Profile

Primary Actor: Job Candidate (e.g., Emily Chen)

Goal: To create a profile that highlights the candidate's skills, experiences, and preferences for job opportunities.

Preconditions:

- The candidate has downloaded and installed the "Adopte Un Candidat" application.
- The candidate has registered an account on the platform.

Main Success Scenario:

1. The candidate logs into the "Adopte Un Candidat" application.
2. They navigate to the "Create Profile" section.
3. The candidate fills out personal details while the application ensures anonymity (e.g., username instead of real name).
4. They select key soft skills from a predefined list.
5. The candidate uploads their portfolio, including work samples and projects.
6. They set job preferences, including desired job roles, company culture, and location.
7. The candidate reviews their profile and submits it.
8. The system saves the profile and confirms successful creation.

Postconditions:

- The candidate's profile is active and searchable by potential employers.
- The system anonymizes the information to prevent bias.
Extensions:

- If required fields are missing, the system prompts the candidate to complete them before submission.
- If documents are in an unsupported format, the system alerts the candidate to upload in the correct format.

#### Use Case 2 : Company Creates Profile

Title: Company Creates Profile

Primary Actor: Company Recruiter (e.g., John Kramer)

Goal: To create a company profile that highlights the company’s culture, values, and job openings.

Preconditions:

- The recruiter has downloaded and installed the "Adopte Un Candidat" application.
- The recruiter has registered an account on the platform.

Main Success Scenario:

1. The recruiter logs into the "Adopte Un Candidat" application.
2. They navigate to the "Create Company Profile" section.
3. The recruiter fills out company details while the application ensures anonymity (e.g., anonymized company name).
4. They select desired soft skills for potential candidates from a predefined list.
5. The recruiter uploads relevant information about the company culture, values, and current job openings.
6. They review the company profile and submit it.
7. The system saves the profile and confirms successful creation.

Postconditions:

- he company’s profile is active and searchable by potential candidates.
- The system anonymizes the information to prevent bias.

Extensions:

- If required fields are missing, the system prompts the recruiter to complete them before submission.
- If documents are in an unsupported format, the system alerts the recruiter to upload in the correct format.

#### Use Case 3 : Candidate Searches for Jobs

Title: Candidate Searches for Jobs

Primary Actor: Job Candidate (e.g., Ahmed Al-Farsi)

Goal: To search for job opportunities that match the candidate’s skills and preferences.

Preconditions:

- The candidate has an active profile on "Adopte Un Candidat".

Main Success Scenario:

1. The candidate logs into the "Adopte Un Candidat" application.
2. They navigate to the "Search Jobs" section.
3. The candidate sets search criteria based on desired job roles, location, and company culture.
4. They apply filters for required soft skills and other preferences.
5. The system displays a list of anonymized job postings that match the criteria.
6. The candidate reviews the job postings and saves the ones of interest.
7. They apply for selected jobs through the application.

Postconditions:

- The candidate has a list of jobs they have applied for.
- The system tracks the application status and provides updates.

Extensions:

- If no jobs meet the criteria, the candidate can broaden the search parameters or set up alerts for new matches.
- If the candidate encounters issues during application, the system provides support options.

#### Use Case 4 : Company Searches for Candidates

Title: Company Searches for Candidates

Primary Actor: Company Recruiter (e.g., John Kramer)

Goal: To find candidates whose skills match the company’s requirements and culture.

Preconditions:

- The recruiter has an active profile on "Adopte Un Candidat".
- The company profile is complete and active.

Main Success Scenario:

1. The recruiter logs into the "Adopte Un Candidat" application.
2. They navigate to the "Search Candidates" section.
3. The recruiter sets search criteria based on desired soft skills, experience level, and location.
4. They apply additional filters as needed.
5. The system displays a list of anonymized candidates that match the criteria.
6. The recruiter reviews candidate profiles and saves the ones of interest.
7. They initiate contact with selected candidates through the in-app messaging system.

Postconditions:

- The recruiter has a list of potential candidates saved for further consideration.
- Initial contact has been made with candidates who match the job requirements.
Extensions:

- If no candidates meet the criteria, the recruiter can broaden the search parameters or set up alerts for new matches.
- If a candidate is not responsive, the system can send reminders or suggest alternative candidates.

#### Use Case 5 : Candidate and Company Match

Title: Candidate and Company Match

Primary Actor: Job Candidate (e.g., Emily Chen) and Company Recruiter (e.g., John Kramer)

Goal: To facilitate a match between the candidate and a company based on mutual interests and skills.

Preconditions:

- Both the candidate and recruiter have active profiles on "Adopte Un Candidat".
- The system has identified potential matches based on overlapping skills and preferences.

Main Success Scenario:

1. The system identifies a 50% or higher overlap between the candidate’s and recruiter’s specified soft skills.
2. The system notifies both the candidate and the recruiter of the potential match.
3. The candidate reviews the company profile anonymously and indicates interest.
4. The recruiter reviews the candidate’s anonymized profile and indicates interest.
5. The system reveals contact details to both parties and enables them to schedule an interview.
6. The candidate and recruiter communicate via the in-app messaging system to set up an interview.
7. The interview is conducted, and feedback is shared through the application.

Postconditions:

- A match has been made between the candidate and the company based on skills and preferences.
- Both parties have initiated direct communication and scheduled an interview.

Extensions:

- If either party declines the match, the system records feedback and uses it to improve future matches.
- If the interview leads to a job offer, the system can track the hiring process and provide status updates.

#### Use Case 6 : Candidate Receives Job Offer

Title: Candidate Receives Job Offer

Primary Actor: Job Candidate (e.g., Ahmed Al-Farsi)

Goal: To receive and accept a job offer through the "Adopte Un Candidat" application.

Preconditions:

- The candidate has applied for jobs and completed interviews.
- The company has decided to extend a job offer.

Main Success Scenario:

1. The candidate logs into the "Adopte Un Candidat" application.
2. They receive a notification about a job offer.
3. The candidate navigates to the "Job Offers" section.
4. They review the details of the job offer, including position, salary, and benefits.
5. The candidate accepts or declines the offer through the application.
6. If accepted, the candidate and company finalize the onboarding process within the app.

Postconditions:

- The candidate has officially accepted the job offer.
- The system updates the candidate’s profile status to “Hired.”
  
Extensions:

- If the candidate needs more information, they can request additional details from the company through the messaging system.
- If the candidate declines the offer, the system prompts for feedback and continues to assist with job search.


## III. Functionalities 

### 1. Design

The design of the "Adopte Un Candidat" application is crucial to ensuring a seamless user experience across various platforms, including mobile, tablet, and desktop. This section details the design requirements, emphasizing accessibility and usability to cater to a diverse user base.
        
#### A. logo

The logo of the application has been provided by WE ARE EVOLUTION :

<img src="..\FunctionalSpecification\images\Logo.png" alt="Logo"/>

- The typography of the logo is simple, the most significant things is the inclusion of the number "1" emphasizes the uniqueness and premier status of the platform. 
  
- The simplicity of the black and white design ensures that the logo can be easily adapted to different backgrounds and media without losing its impact.
  
- It can be effectively used in various formats, including digital interfaces, print materials, and promotional items, ensuring consistent branding.

The logo is very important beacuse it will appear a lot in the application, at the top of all the pages :

<img src="..\FunctionalSpecification\images\app.png" alt="app logo"/>


#### B. Application 
       

The application design must focus on user-friendliness, intuitive navigation, and maintaining anonymity while fostering interaction between candidates and companies. Here is the mockup of what we plan to do in the application, they include Login, Profile Editing, Chatbox, and Settings :

<img src="..\FunctionalSpecification\images\Overview.png" alt="app overview"/>

And here are the key elements of the application design :

1. Layout:

- Consistent Layout: The application features a consistent layout across all screens, ensuring users can easily navigate from one section to another. 

- Modular Design: The layout is modular, making it easy to update and expand. Each section, such as Profile, Job Search, and Messages, has a distinct area with clear boundaries and functions.

2. Navigation:

- Bottom Navigation Bar: A persistent navigation bar at the bottom of the screen provides quick access to primary functions like profile management, job search, and messaging. Icons and labels ensure easy recognition.

- Intuitive Flow: The navigation flow is intuitive, guiding users logically from login to profile creation, job search, and interaction with potential employers. Breadcrumbs and progress indicators enhance this flow.

3. Style:

- Contrast and Readability: High contrast between text and background colors ensures readability. Important buttons and links use a distinct color (peach) to stand out.

- Consistency: The color scheme is consistent across all screens, maintaining a cohesive look and feel.

4. Anonymity and Interaction:

- Anonymous Profiles: User profiles are designed to anonymize personal information while highlighting skills, experiences, and preferences. Profile pictures and names are replaced with placeholders until mutual interest is confirmed.

- Secure Messaging: The chatbox feature allows candidates and recruiters to communicate securely. Messages are clear and conversational, supporting easy interaction while maintaining anonymity until both parties decide to reveal their identities.

- Privacy Controls: Users have control over their privacy settings, enabling them to manage the visibility of their information and adjust their preferences as needed.

5. User Experience Enhancements:

- Onboarding Process: An intuitive onboarding process helps new users create their profiles and understand the app’s features. Guided steps and tips ensure users complete their profiles accurately and efficiently.

- Interactive Elements: Features like tooltips, hover effects, and subtle animations make the app interactive and engaging, helping users understand their options and actions better.

6. Colors:

The chosen colors for the application are the following:

| Color                                                                                       | Color Name | Hex Code |
| ------------------------------------------------------------------------------------------- | ---------- | -------- |
| <img src="images\Colors\white.png" width="30px" height="30px">       | White      | #FFFFFF  |
| <img src="images/Colors/light-grey.png" width="30px" height="30px">  | Light Grey | #F5F5F5  |
| <img src="images/Colors/black.png" width="30px" height="30px">       | Black      | #000000  |
| <img src="images/Colors/red.png" width="30px" height="30px">         | Red        | #C8553D  |
| <img src="images/Colors/flash-red.png" width="30px" height="30px">   | Flash Red  | #FF0000  |
| <img src="images/Colors/light-red.png" width="30px" height="30px">   | Light Red  | #FFBABA  |
| <img src="images/Colors/pink.png" width="30px" height="30px">        | Pink       | #FFD5C2  |
| <img src="images/Colors/orange.png" width="30px" height="30px">      | Orange     | #F28F3B  |
| <img src="images/Colors/flash-green.png" width="30px" height="30px"> | Flash Green| #51C66A  |

1. Typography:

For the various elements of the application, the chosen typographies are the following:

| Font name    | Name     | Weight    | Size | Google font link                                               |
| ------------ | -------- | --------- | ---- | -------------------------------------------------------------- |
| Josefin sans | JS-R-20  | Regular   | 20   | [Josefin Sans](https://fonts.google.com/specimen/Josefin+Sans) |
| Josefin sans | JS-R-16  | Regular   | 16   | [Josefin Sans](https://fonts.google.com/specimen/Josefin+Sans) |
| Josefin sans | JS-SB-16 | Semi Bold | 16   | [Josefin Sans](https://fonts.google.com/specimen/Josefin+Sans) |
| Josefin sans | JS-I-16  | Italic    | 16   | [Josefin Sans](https://fonts.google.com/specimen/Josefin+Sans) |
| Josefin sans | JS-R-12  | Regular   | 12   | [Josefin Sans](https://fonts.google.com/specimen/Josefin+Sans) |


### 2. Constraints 

In developing the "Adopte Un Candidat" application, several technical and legal constraints must be considered to ensure compliance and smooth operation. These constraints include:

1. Usage of flutter :

- The usage of flutter is mandatory for this project. Flutter is an open-source UI (User Interface) software development toolkit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter enables developers to create high-performance, visually appealing, and interactive user interfaces using a reactive programming framework and a rich set of customizable widgets.

2. Data Protection Laws:

- GDPR Compliance: The application must adhere to the General Data Protection Regulation (GDPR) guidelines, ensuring the protection of users personal data.

3. Technology Stack Limitations:

- Flutter Framework: The application is built using the Flutter framework, which provides cross-platform development capabilities for mobile, web, and desktop applications. Development must adhere to the limitations and requirements of Flutter, including compatibility with supported platforms and adherence to Flutter's coding standards.

4. Integration Requirements:

- IDE Compatibility: Development environments such as Visual Studio Code (VS Code) must be compatible with the Flutter framework to support coding, debugging, and testing processes efficiently.

5. Legal Compliance:

- Employment Laws: The application must comply with relevant employment laws and regulations, including non-discrimination laws, equal employment opportunity (EEO) regulations, and labor standards.

- Intellectual Property Rights: All content, including logos, trademarks, and copyrighted material, must be used in accordance with intellectual property laws and regulations. Proper licensing and permissions must be obtained for any third-party assets used in the application.

6. Security Considerations:

- Data Encryption: Sensitive user data must be encrypted during transmission and storage to prevent unauthorized access or data breaches.

- Authentication and Authorization: Robust authentication mechanisms must be implemented to ensure that only authorized users can access sensitive features and data within the application.

## IV. Application's features

"Adopte Un Candidat" is designed to revolutionize the recruitment process by focusing on key features that enhance user experience, promote fairness, and ensure efficient matching between job seekers and employers. Here are the detailed key features of the application:






| Feature                                             | Purpose                                                                                                   | Functionality                                                                                                                                                                    | Implementation                                                                                                                                                                                 | Illustration                                                             |
| --------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| 1. Anonymized Profiles for Candidates and Companies | To eliminate biases based on personal information such as name, gender, age, and ethnicity.               | Profiles are anonymized by default, displaying only relevant skills, experiences, and preferences. Personal details are revealed only when both parties agree to a match.        | Use placeholder names and avatars. Ensure secure storage and encryption of personal data to maintain anonymity and comply with data protection regulations.                                    | <img src="..\FunctionalSpecification\images\swipe.png" alt="app"/>       |
| 2. Profile Creation and Management                  | To allow users to create detailed profiles that highlight their skills, experiences, and job preferences. | Users can fill out personal details (anonymized), select their soft skills, upload portfolios, and set job preferences.                                                          | Provide an intuitive interface for profile setup, including guided steps and tips. Enable users to update and manage their profiles easily.                                                    | <img src="..\FunctionalSpecification\images\createjob.png" alt="app"/>   |
| 3. Job Offer Creation                               | To enable companies to create and post job offers that attract suitable candidates.                       | Companies can create job postings by specifying job titles, descriptions, required skills, and other relevant details.                                                           | Offer a structured form for job offer creation, ensuring all necessary information is collected. Allow companies to edit or remove job postings as needed.                                     | <img src="..\FunctionalSpecification\images\createoffer.png" alt="app"/> |
| 4. Soft Skills Inventory and Selection Interface    | To emphasize the importance of soft skills in the recruitment process.                                    | Candidates can select their soft skills from a predefined list during profile creation. Employers can specify the soft skills they are looking for in candidates.                | Develop an easy-to-use interface with a searchable and categorized list of soft skills. Allow candidates to add multiple skills and rate their proficiency.                                    | <img src="..\FunctionalSpecification\images\softskills.png" alt="app"/>  |
| 5. Matching Algorithm                               | To facilitate accurate matches between candidates and job offers based on skills and preferences.         | The algorithm matches candidates with job offers by comparing selected soft skills and other criteria. A match occurs when there is a 50% or higher overlap in specified skills. | Use advanced matching algorithms that weigh various factors such as skill overlap, job preferences, and location. Continuously improve the algorithm based on user feedback and success rates. | <img src="..\FunctionalSpecification\images\anonyme.png" alt="app"/>     |
| 6. Communication Tools                              | To facilitate secure and anonymous communication between candidates and recruiters.                       | Users can send and receive messages within the app, schedule interviews, and share additional information securely.                                                              | Develop a robust messaging system with features like real-time notifications, message history, and attachment support. Ensure messages are encrypted to maintain privacy.                      | <img src="..\FunctionalSpecification\images\chat.png" alt="app"/>        |
| 7. Settings                                         | To provide users with control over their account preferences and privacy settings.                        | Users can manage their account details, notification preferences, and privacy settings. Options to deactivate or delete accounts are also available.                             | Create a comprehensive settings menu that is easy to navigate. Include toggles and drop-down menus for different settings, and ensure all changes are saved and applied instantly.             | <img src="..\FunctionalSpecification\images\settings.png" alt="app"/>    |





## V. Non-Functional Requirements

1. Security

**Objective**: Protect user data and ensure the application is secure from unauthorized access and breaches.

**Data Encryption**: All user data, including personal information and messages, should be encrypted both in transit and at rest using industry-standard encryption protocols.

**Authorization**: We have to ensure users can only access features and data relevant to their role (e.g., candidate, recruiter, admin).

**Data Privacy**: Comply with data protection regulations such as GDPR and CCPA. Ensure users have control over their personal data, including the ability to delete their accounts and data permanently.

**Regular Security Audits**: Conduct regular security audits and vulnerability assessments to identify and mitigate potential security threats.


2. Compatibility

**Objective**: Ensure the application works seamlessly across different platforms, devices, and browsers.

**Cross-Platform Support**: The application should be compatible with major operating systems, including Windows, macOS, iOS, and Android.

**Browser Compatibility**: Ensure compatibility with the latest versions of major web browsers, including Chrome, Firefox, Safari, and Edge.

**Responsive Design**: Implement a responsive design to ensure the application functions well on various screen sizes and devices, including smartphones, tablets, and desktops.


3. Usability

**Objective**: Provide a user-friendly and intuitive interface that enhances the user experience.

**User Interface (UI)**: Design a clean, intuitive, and accessible user interface that follows best practices in UX design.

**Localization**: Support multiple languages and regional settings to cater to a diverse user base. Ensure text, dates, and currencies are formatted correctly based on the user's locale.


4. Compliance

**Objective**: Ensure the application complies with relevant laws, regulations, and industry standards.

**Data Protection Laws**: Comply with data protection laws such as GDPR, CCPA, and HIPAA, ensuring user data is handled and stored securely.

**Industry Standards**: Adhere to industry standards and best practices in software development, security, and data privacy.

**Legal Requirements**: Ensure the application includes necessary legal disclaimers, terms of service, and privacy policies that users must agree to.



## VI. Assumptions

| Assumption                         | Details                                                                                                                                                                                                                                                                                                         |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1. User Accessibility              | **Assumption:** Users will have access to stable internet connections. <br> **Justification:** The application is designed to be web-based and relies on internet connectivity for functionality such as profile creation, job searching, and messaging.                                                        |
| 2. User Technology Proficiency     | **Assumption:** Users will have a basic level of digital literacy. <br> **Justification:** The application interfaces are designed to be user-friendly and intuitive; however, users will need basic skills such as navigating a website, filling out forms, and using a messaging system.                      |
| 3. Device Availability             | **Assumption:** Users will have access to compatible devices such as smartphones, tablets, or computers. <br> **Justification:** The application is designed to be responsive and accessible across multiple device types and operating systems, ensuring broad usability.                                      |
| 4. Market Demand                   | **Assumption:** There is a significant demand for fair and anonymized recruitment platforms. <br> **Justification:** Trends in recruitment and job search show an increasing need for platforms that promote equality and minimize bias.                                                                        |
| 5. Data Integrity and Privacy      | **Assumption:** Users will provide accurate and truthful information in their profiles and job postings. <br> **Justification:** The effectiveness of the matching algorithm and the overall success of the platform depend on the accuracy of the data provided by users.                                      |
| 6. Legal and Regulatory Compliance | **Assumption:** The application will comply with all relevant data protection and employment regulations. <br> **Justification:** Compliance with laws such as GDPR and CCPA is essential to avoid legal repercussions and ensure user trust.                                                                   |
| 7. User Engagement                 | **Assumption:** Users will actively engage with the platform by creating profiles, searching for jobs, and responding to messages. <br> **Justification:** The platform’s success relies on active participation from both job seekers and employers to create a dynamic and effective recruitment environment. |



## VII. Conclusion 

"Adopte Un Candidat" aims to revolutionize recruitment by focusing on fairness, inclusivity, and soft skills. With anonymized profiles, a sophisticated matching algorithm, and a user-friendly interface, the platform promotes unbiased, skill-based hiring. Key features include profile and job offer creation, a soft skills inventory, secure messaging and customizable settings. The application ensures high performance, security, compatibility, usability, reliability, and compliance with relevant laws. Assumptions include stable internet access, basic digital literacy, compatible devices, and active user engagement. Success depends on collaboration, continuous improvement, and adherence to core values of fairness and opportunity.


## IX. Glossary

| Term                 | Definition                                                                                                                                                                                 |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Stakeholders         | Individuals or groups with an interest in the outcome of the project, including the project team, clients, and developers.                                                                 |
| Personas             | Fictional characters created to represent different user types that might use the application in a similar way.                                                                            |
| Use Case             | A description of how a user will interact with the system to achieve a specific goal.                                                                                                      |
| Anonymized Profiles  | User profiles that hide personal details to prevent bias, showing only relevant skills, experiences, and preferences.                                                                      |
| Soft Skills          | Non-technical skills that relate to how one works, such as communication, teamwork, and problem-solving.                                                                                   |
| Matching Algorithm   | A system that matches candidates with job offers based on overlapping skills and preferences.                                                                                              |
| GDPR                 | General Data Protection Regulation, a legal framework that sets guidelines for the collection and processing of personal information from individuals who live in the European Union (EU). |
| Encryption           | The process of converting information or data into a code, especially to prevent unauthorized access.                                                                                      |
| Data Protection Laws | Regulations that govern the collection, storage, and use of personal data to protect individuals' privacy.                                                                                 |
| Compliance           | The act of adhering to, and demonstrating adherence to, external laws and regulations, as well as corporate policies and procedures.                                                       |
