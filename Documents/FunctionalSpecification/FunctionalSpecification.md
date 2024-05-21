# Functional Specification

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

Adopte Un Candidat is an innovative recruitment platform designed to revolutionize the traditional hiring process by leveraging a 'Tinder-style' matching system. The primary objective of this application is to facilitate a fair and efficient job matching process by prioritizing the anonymization of candidates and companies, thereby focusing solely on skills and compatibility rather than demographic factors that can lead to bias.

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
<img src="..\FunctionalSpecification\images\2.png" alt="Template ISSUE"/>

#### Second persona : 
<img src="..\FunctionalSpecification\images\3.png" alt="Template ISSUE"/>

#### Third persona : 
<img src="..\FunctionalSpecification\images\1.png" alt="Template ISSUE"/>


### 2. Use cases

#### Use Case 1: Candidate Creates Profile

Title: Candidate Creates Profile

Primary Actor: Job Candidate (e.g., Emily Chen)

Goal: To create a profile that highlights the candidate's skills, experiences, and preferences for job opportunities.

Preconditions:

- The candidate has downloaded and installed the Adopte Un Candidat application.
- The candidate has registered an account on the platform.

Main Success Scenario:

1. The candidate logs into the Adopte Un Candidat application.
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

#### Use Case 2: Company Creates Profile

Title: Company Creates Profile

Primary Actor: Company Recruiter (e.g., John Kramer)

Goal: To create a company profile that highlights the company’s culture, values, and job openings.

Preconditions:

- The recruiter has downloaded and installed the Adopte Un Candidat application.
- The recruiter has registered an account on the platform.

Main Success Scenario:

1. The recruiter logs into the Adopte Un Candidat application.
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

#### Use Case 3: Candidate Searches for Jobs

Title: Candidate Searches for Jobs

Primary Actor: Job Candidate (e.g., Ahmed Al-Farsi)

Goal: To search for job opportunities that match the candidate’s skills and preferences.

Preconditions:

- The candidate has an active profile on Adopte Un Candidat.

Main Success Scenario:

1. The candidate logs into the Adopte Un Candidat application.
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

#### Use Case 4: Company Searches for Candidates

Title: Company Searches for Candidates

Primary Actor: Company Recruiter (e.g., John Kramer)

Goal: To find candidates whose skills match the company’s requirements and culture.

Preconditions:

- The recruiter has an active profile on Adopte Un Candidat.
- The company profile is complete and active.

Main Success Scenario:

1. The recruiter logs into the Adopte Un Candidat application.
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

#### Use Case 5: Candidate and Company Match

Title: Candidate and Company Match

Primary Actor: Job Candidate (e.g., Emily Chen) and Company Recruiter (e.g., John Kramer)

Goal: To facilitate a match between the candidate and a company based on mutual interests and skills.

Preconditions:

- Both the candidate and recruiter have active profiles on Adopte Un Candidat.
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

#### Use Case 6: Candidate Receives Job Offer

Title: Candidate Receives Job Offer

Primary Actor: Job Candidate (e.g., Ahmed Al-Farsi)

Goal: To receive and accept a job offer through the Adopte Un Candidat application.

Preconditions:

- The candidate has applied for jobs and completed interviews.
- The company has decided to extend a job offer.

Main Success Scenario:

1. The candidate logs into the Adopte Un Candidat application.
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
Detail the design requirements including the user interface for different platforms (mobile, tablet, desktop). Ensure accessibility and usability are emphasized.

#### A. logo
Include specifications for logo design that reflects the app's focus on fairness and opportunity.

#### B. Application 
Describe the layout, navigation, color schemes, and themes that enhance the user experience while ensuring it supports anonymity and easy interaction.

### 2. Constraints 
Note any technical or legal constraints, such as data protection laws (GDPR, etc.), technology stack limitations, or integration requirements with other systems. + Flutter...

## IV. Application's features
- List all the key features such as:
    - Anonymized profiles for candidates and companies.
    - Profile creation and management.
    - Job offer creation.
    - Soft skills inventory and selection interface.
    - Matching algorithm.
    - Communication tools (e.g., messaging system).
    - Settings
    - Reporting and analytics.

## V. Non-Functional Requirements
Include requirements such as performance, security, scalability, compatibility...

## VI. Assumptions
project assumptions...

## VII. Conclusion 
Summarize the document’s key points and how it will contribute to the successful completion of the project.

## VIII. Future improvements 
Suggest potential areas for future enhancements, such as the introduction of AI for better matching or expanded feature sets.

## IX. Glossary
Define all technical terms, acronyms, and jargon that appear in the document to ensure clarity for all readers.