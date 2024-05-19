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
 
Persona 1: Job Candidate
Name: Emily Chen
Age: 28
Occupation: Graphic Designer
Education: B.A. in Graphic Design
Location: Urban area, Chicago, Illinois
Tech Proficiency: High
Primary Goal: To find a creative role in a progressive company that values innovative design skills and offers room for professional growth.

Challenges:

- Emily has often faced challenges in traditional job searches due to the focus on extensive experience over creative potential.
- She feels that her portfolio is more indicative of her abilities than her work history or educational background.

Behavioral Traits:

- Emily is very active on social media and digital platforms.
- Prefers intuitive, visually appealing apps with straightforward navigation.

Needs and Motivations:

- Wants to work in a company that values creativity and innovation.
- Looks for an inclusive work environment that appreciates diverse perspectives and skills.
- Needs a job search tool that allows her to showcase her portfolio and skills effectively.

How Adopte Un Candidat Helps:

- Anonymization ensures she is evaluated on her skills and portfolio, not just her resume.
- The emphasis on soft skills like creativity and communication plays to her strengths.

---------------------------------------------------------------------------------------------------------------------------------------------

Persona 2: Company Recruiter
Name: John Kramer
Age: 35
Occupation: HR Manager
Education: M.S. in Human Resource Management
Location: Suburban area, Dallas, Texas
Tech Proficiency: Moderate
Primary Goal: To efficiently find innovative talent that fits the company culture and meets the dynamic needs of the organization.

Challenges:

- Difficulty in assessing candidates’ soft skills through resumes and conventional applications.
- Time-consuming recruitment processes that often don’t lead to finding the right match.

Behavioral Traits:

- John values structured and reliable tools that streamline and automate parts of his workflow.
- Prefers data-driven decision-making processes.

Needs and Motivations:

- Needs a reliable tool that can help quickly assess a candidate's potential beyond their resume.
- Wants to improve the quality of hires by matching candidates based on cultural fit and shared values.
- Seeks to reduce the time and costs associated with the recruitment process.

How Adopte Un Candidat Helps:

- Provides a tool that matches candidates based on shared soft skills, helping ensure a good fit for the company’s culture.
- Anonymization helps minimize bias, focusing on the qualifications that matter most.
- 
---------------------------------------------------------------------------------------------------------------------------------------------

Persona 4: Young Professional
Name: Sarah Thompson
Age: 22
Occupation: Job Seeker
Education: B.A. in Marketing
Location: Urban area, New York City, New York
Tech Proficiency: High
Primary Goal: To find a role in a forward-thinking company where she can apply her innovative ideas and grow her career without being underestimated because of her age.

Challenges:

Sarah often feels that her ideas are not taken seriously due to her young age.
She encounters barriers where employers expect more years of experience than she has, despite her strong skill set and education.

Behavioral Traits:

- Sarah is very active on social media and enjoys using the latest apps and digital tools.
- She prefers dynamic and collaborative work environments where she can learn and contribute actively.
- Highly motivated and eager to prove her capabilities in a professional setting.

Needs and Motivations:

- Seeks a platform that allows her to highlight her innovative ideas and recent accomplishments.
- Wants to work in an inclusive environment that values new perspectives and is open to fresh approaches.
- Needs a tool that helps her connect with employers who appreciate her potential and are willing to invest in her growth.

How Adopte Un Candidat Helps:

- The anonymization feature helps ensure that her skills and ideas are evaluated fairly, without bias towards her age.
- The focus on soft skills allows her to demonstrate her creativity, adaptability, and communication abilities.
- The matching process helps her find companies that value innovation and are eager to mentor young talent, providing her with the support she needs to succeed.

### 2. Use cases

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