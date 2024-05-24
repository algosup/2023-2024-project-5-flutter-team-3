# Test Plan - Adopt A Candidate

<br>

<details>
    <summary>Table of content</summary>

- [Test Plan - Adopt A Candidate](#test-plan---adopt-a-candidate)
- [I - INTRODUCTION](#i---introduction)
  - [1 - System Overview](#1---system-overview)
  - [2 - Test Objectives](#2---test-objectives)
  - [3 - Scope of Testing](#3---scope-of-testing)
  - [4 - Definitions / Acronyms](#4---definitions--acronyms)
    - [A - Definitions](#a---definitions)
    - [A - Definitions](#a---definitions-1)
    - [B - Acronyms](#b---acronyms)
- [II - APPROACH](#ii---approach)
  - [1 - Assumptions \& Constraints](#1---assumptions--constraints)
    - [A - Assumptions](#a---assumptions)
    - [B - Constraints](#b---constraints)
  - [2 - Coverage](#2---coverage)
  - [3 - Test Tools](#3---test-tools)
  - [4 - Test Type](#4---test-type)
  - [5 - Test Data](#5---test-data)
- [III - PLAN](#iii---plan)
  - [1 - Test Team](#1---test-team)
  - [2 - Major Tasks and Deliverables](#2---major-tasks-and-deliverables)
  - [3 - Test Environment](#3---test-environment)
    - [A - Operating Systems](#a---operating-systems)
    - [B - Development Tools](#b---development-tools)
    - [C - Emulators](#c---emulators)
    - [D - Version Control](#d---version-control)
- [IV - FEATURES TO BE TESTED](#iv---features-to-be-tested)
  - [1 - Build 1](#1---build-1)
    - [A - Subscribe](#a---subscribe)
    - [B - Log in](#b---log-in)
    - [C - Extra](#c---extra)
  - [2 - Build 2](#2---build-2)
    - [A - Company swiping](#a---company-swiping)
    - [B - Candidate swiping](#b---candidate-swiping)
    - [C - Match](#c---match)
    - [D - Extra](#d---extra)
  - [3 - Build 3](#3---build-3)
    - [A - Company algorithm](#a---company-algorithm)
    - [B - Candidate algorithm](#b---candidate-algorithm)
    - [C - Settings](#c---settings)
    - [D - Extra](#d---extra-1)
  - [4 - Build 4](#4---build-4)
    - [A - Company chat](#a---company-chat)
    - [B - Candidate chat](#b---candidate-chat)
    - [C - Extra](#c---extra-1)
- [V - FEATURES NOT TO BE TESTED](#v---features-not-to-be-tested)
- [VI - TESTING PROCEDURES](#vi---testing-procedures)
  - [1 - Test Execution](#1---test-execution)
    - [A - Test Cases](#a---test-cases)
    - [B - Order of Testing](#b---order-of-testing)
  - [2 - Pass / Fail Criteria](#2---pass--fail-criteria)
    - [A - Pass Criteria](#a---pass-criteria)
    - [B - Fail Criteria](#b---fail-criteria)
  - [3 - Suspension Criteria and Resumption Requirements](#3---suspension-criteria-and-resumption-requirements)
    - [A - Normal Criteria](#a---normal-criteria)
    - [B - Abnormal Criteria](#b---abnormal-criteria)
  - [4 - Defect Management](#4---defect-management)
  - [5 - Defect Tracking](#5---defect-tracking)
    - [A - GitHub Issues](#a---github-issues)
    - [B - Workflow for Handling Issues](#b---workflow-for-handling-issues)
- [VII - RISKS AND CONTINGENCIES](#vii---risks-and-contingencies)
- [VIII - REFERENCES](#viii---references)


</details>

<br>

<hr>

# I - INTRODUCTION

Further information about the details of this project is available in the [Functional Specification](../FunctionalSpecification/FunctionalSpecification.md).

## 1 - System Overview

The "Adopt a Candidate" project is a cross-platform application.

It's a recruitment platform inspired by Tinder, designed to match job seekers with companies based on soft skills rather than traditional metrics like age, gender, or academic background. 

It operates on a unique model where both candidates and companies are anonymised to focus purely on the match of skills and company culture. 

Additionally, we need to provide comprehensive analytics to our client, [We are evolution](https://www.we-are-evolution.com/), detailing the number of candidates, companies, and other key metrics to help them make informed decisions and improve their services.



## 2 - Test Objectives

The primary objectives of testing the “Adopt a Candidate” application are to ensure the software meets these criteria:

- The functional and non-functional requirements
- Seamless user experience across various devices (phone, tablet, computer)
- Adheres to the specified privacy standards to prevent discrimination

## 3 - Scope of Testing

- All features such as matching, messaging, profile customisation, and soft skill selection
- The intuitiveness and user-friendliness
- The accessibility on different devices
- The implementation of data anonymisation and the protection of user data against unauthorised access
- Compliance with the European and GDPR laws

## 4 - Definitions / Acronyms
### A - Definitions

| Term        | Definition |
| ----------- | --- |
|Anonymisation|The process of removing or encrypting personal identifiers|
|Soft Skills  |Personal attributes that enable someone to interact effectively and harmoniously with other people, such as communication and teamwork|
|GDPR         |Governs how we can use, process, and store personal data (information about an identifiable, living person)|
|Tinder       ||
|Match        ||

### A - Definitions

| Term          | Definition |
| ------------- | ---------- |
| Anonymisation | The process of removing or encrypting personal identifiers to protect the individual's identity |
| Soft Skills   | Personal attributes that enable someone to interact effectively and harmoniously with other people, such as communication, teamwork, adaptability, problem-solving, and emotional intelligence |
| GDPR          | General Data Protection Regulation, a legal framework that sets guidelines for the collection and processing of personal information from individuals who live in the European Union (EU) |
| Tinder        | A popular dating app that allows users to swipe right to "like" or left to "pass" on other users' profiles, inspiring the matching algorithm used in the "Adopt a Candidate" project |
| Match         | A successful pairing between a candidate and a company based on the matching algorithm that considers soft skills and company culture |
| Integration Testing | Testing in which individual software modules are combined and tested as a group to ensure they work together properly |
| Unit Testing  | Testing of individual units or components of a software |
| Regression Testing | Testing existing software applications to ensure that a change or addition hasn’t broken any existing functionality |
| Usability Testing | Testing to evaluate a product by testing it with representative users |
| Security Testing | Testing to uncover vulnerabilities of the system and determine that its data and resources are protected from possible intruders |
| Compatibility Testing | Testing to ensure compatibility of the application with different environments, including browsers, operating systems, and devices |
| Manual Testing | Testing of software manually without using any automated tools |
| Synthetic Data | Data that is artificially generated rather than obtained by direct measurement |
| Boundary Test Data | Data that is at the edge of the equivalence class partitions, used to test the boundary conditions |

### B - Acronyms

| Acronym | Definition                         |
| ------- | ---------------------------------- |
| GDPR    | General Data Protection Regulation |
| UI      | User Interface                     |
| UX      | User Experience                    |
| API     | Application Programming Interface  |
| DB      | Database                           |
| OFT     | Open For Testing                   |
| QA      | Quality Assurance                  |
| KPI     | Key Performance Indicator          |

<br>

# II - APPROACH

## 1 - Assumptions & Constraints

### A - Assumptions

- Consistent and reliable internet connection
- All testing tools and environments are available and configured for use throughout the testing phase
- There will be no major changes to the application’s requirements during the testing phase

### B - Constraints

- Testing must be completed within the specified project timeline, potentially limiting the depth of certain tests
- Limited availability of skilled testers might affect the comprehensive testing of all scenarios
- The application must be compatible with multiple device types and operating systems, which may limit testing on less popular platforms

## 2 - Coverage

Test coverage will be measured by:

- A completed matrix of testable requirements and test cases: 
  - This matrix will correlate specific requirements from the functional specification to individual test cases to ensure thorough coverage
- A completed matrix of key features and test cases: 
  - This matrix will connect important application features, such as anonymisation, matching algorithms, and user interaction, to their respective test cases

If coverage levels fall short of expectations, the QA will assess whether the achieved coverage is acceptable based on the system’s risk profile.

## 3 - Test Tools

| Testing Tool            | Use                                    |
| ----------------------- | -------------------------------------- |
| Flutter Driver          | Integration tests                      | 
| Widget Tester           | Widget tests                           |
| Flutter Testing Library | Unit tests                             |
| Manual Testing          | Seamless experience tests              |

## 4 - Test Type

- Functional testing
  - To verify all features work according to requirements
- Usability testing
  - To ensure the application is intuitive and user-friendly
- Security testing
  - To ensure data privacy and security compliance
- Compatibility testing
  - To confirm the application works across all targeted devices
- Regression testing
  - To ensure that a change to the system does not introduce new issues

## 5 - Test Data

- Synthetic Data
  - Generated data that mimic real user inputs for testing purposes
- Anonymised Real Data
  - Use of real data that has been anonymised to test system performance and functionality without compromising privacy
- Boundary Test Data
  - Specific data sets designed to test system limits and boundary conditions

<br>

# III - PLAN

## 1 - Test Team

| Name | Title | Responsibilities |
| ---- | ----- | ---------------- |
| Clémentine Curel | Quality Assurance | Lead all testing activities, including test planning, test execution, and status reporting. <br> Design and execute test cases. |
| Thibaud Marlier | Software Developer | Assist with test planning and execution. Provide technical expertise and support. |

## 2 - Major Tasks and Deliverables

|Task                       |Start     |Stop      |Deliverable(s)           |
|---------------------------|----------|----------|-------------------------|
|Issue templates            |16/05/2024|21/05/2024|[GitHub issues template](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues/new/choose)|
|Test planning              |16/05/2024|24/05/2024|Test plan                |
|Documentation review       |23/05/2024|13/06/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aopen+is%3Aissue+label%3Adocumentation) with the label "<text style="color:#00D0FF">documentation</text>"|
|Test design                |27/05/2024|31/05/2024|Test cases               |
|Build 1 delivered          |          |24/05/2024|Build 1 ready for testing|
|Build test data            |27/05/2024|27/05/2024|Candidates and companies synthetic data |
|Build 1 test execution     |27/05/2024|28/05/2024|Build 1 tested           |
|Build 1 report             |          |29/05/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aissue+label%3Abuild1) with the label "<text style="color:#FF1900">build1</text>"|
|Build 2 test execution     |03/06/2024|05/06/2024|Build 2 tested           |
|Build 2 report             |          |06/06/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aissue+label%3Abuild2) with the label "<text style="color:#37FF00">build2</text>"|
|Build 3 test execution     |06/06/2024|10/06/2024|Build 3 tested           |
|Build 3 report             |          |11/06/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aissue+label%3Abuild3) with the label "<text style="color:#FF00D4">build3</text>"|
|Build 4 test execution     |12/06/2024|12/06/2024|Build 4 tested           |
|Build 4 report             |          |13/06/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aissue+label%3Abuild4) with the label "<text style="color:#FBCA04">build4</text>"|
|Test closure               |13/06/2024|14/06/2024|[Github issues](https://github.com/algosup/2023-2024-project-5-flutter-team-3/issues?q=is%3Aissue+label%3Afinale) with the label "<text style="color:#9000FF">finale</text>"|

*DD/MM/YYYY

*Builds are defined [here](#iv---features-to-be-tested)

## 3 - Test Environment

### A - Operating Systems
- Windows: 10 or later
- macOS: Version 14.5 or later
- iPhone: iOS Version 15.6.1 or later
- Android Phone: Version 14.0.5
### B - Development Tools
- Visual Studio Code: Version 1.89.1 or later
- Xcode: Version 15.3 or later
### C - Emulators
- iOS Simulator: 17.2 or later
- Android Studio: 2023.3.1 or later
### D - Version Control
- GitHub

<br>

# IV - FEATURES TO BE TESTED

Builds have been created to organise the testing of the app as much as possible

Each build is a new version of the app that includes new features and bug fixes.

These builds have been created in the following manner according to the [timeline](https://docs.google.com/spreadsheets/d/16nZ7NnlbWonwxpdrqTKeNKlEg4DzgAToOoZ_Sj7gxq0/edit?hl=fr#gid=1569421064).

## 1 - Build 1 

### A - Subscribe

- Create a company account
- Create a candidate account 
- Delete account
- DB correlation (verify database integrity and relationships)

### B - Log in 

- Log into a company account
- Log into a candidate account
- Forget password
- Change password
- Log out
- DB correlation

### C - Extra

- Try boundary data
- Responsiveness
- Seamless navigation
- Compatibility

## 2 - Build 2 

### A - Company swiping

- Right swipe
- Left swipe

### B - Candidate swiping

- Right swipe
- Left swipe

### C - Match

- DB correlation

### D - Extra

- Accounts modification
- Responsiveness
- Seamless navigation
- Compatibility

## 3 - Build 3

### A - Company algorithm

- Accuracy of the candidates
- Score of the candidates

### B - Candidate algorithm

- Accuracy of the company
- Score of the company

### C - Settings

- Translation
- Laws requirements

### D - Extra

- Advanced swiping system
  - no more swipes 
  - Fast swipes
  - Swipes' direction
- Responsiveness
- Seamless navigation
- Compatibility

## 4 - Build 4

### A - Company chat

- Start conversation
- Send messages
- Receive messages

### B - Candidate chat

- Cannot start a conversation
- Send messages
- Receive messages

### C - Extra

- DB correlation
- Settings
- No sending of audio, pictures, etc.
- Full company journey
- Full candidate journey

<br>

# V - FEATURES NOT TO BE TESTED

- Performance
- Scalability 
- Advanced security
  - File security procedure

<br>

# VI - TESTING PROCEDURES

## 1 - Test Execution

### A - Test Cases

<h2>Title example [ID]</h2>

**Test Case ID:** Unique identifier

**Test Case Description:** Detailed description of what the test case is designed to evaluate.

**Preconditions:** List any prerequisites that must be met before executing the test case.

**Test Steps:** Outline the specific steps to be followed during the test execution.

|Step|Instructions|Expected behaviour|Working version|
|---|---|---|---|
|01 |Do this |This should appear|The version were this is working|
|02 |Do that |That should move  | 0.0.1 - 0.1.3 - 0.2.0|
...

**Expected Result:s** Clearly define the expected outcome at the end of those steps.

**Postconditions:** Note any conditions that should be verified after the test case execution.

### B - Order of Testing

The order of testing will be driven primarily by the build order. Within each build, the following order of testing will be followed:

**Build 1**

1. Candidate
2. Company
3. Extra all along
  

**Build 2**

1. Candidate swiping
2. Company swiping
3. Match
4. Extra all along

**Build 3**

1. Candidate algorithm
2. Company algorithm
3. Settings
4. Extra all along

**Build 4**

1. Company chat
2. Candidate chat
3. Extra all along

## 2 - Pass / Fail Criteria

### A - Pass Criteria

- The feature functions as described in the requirements documentation.
- No critical, major, or high-severity bugs are present.
- The feature meets performance benchmarks (e.g., load time, responsiveness).
- All user interface elements are displayed correctly and are functional.
- Database operations (e.g., creation, deletion, updates) reflect accurately in the database.
- Compatibility tests are successful across all supported devices, browsers, and operating systems.
- All security requirements (e.g., password changes, data encryption) are met.

### B - Fail Criteria

- The feature does not function as described in the requirements documentation.
- Critical, major, or high-severity bugs are present.
- The feature fails to meet performance benchmarks.
- User interface elements are missing, misaligned, or non-functional.
- Database operations do not reflect accurately in the database.
- Compatibility tests fail on any of the supported devices, browsers, or operating systems.
- Security requirements are not met.

## 3 - Suspension Criteria and Resumption Requirements

### A - Normal Criteria

At the end of each project time of a day, testing will be suspended. At that time, all test cases executed during the day should be marked as such. The QA will initiate a backup routine to save the day’s updated test files.

When all test cases have been executed, testing will be suspended, and the results will be documented for the Test Summary Report.

### B - Abnormal Criteria

If the number of GitHub issues continually increases over 3 days, testing should be suspended. This will allow the team time to fix existing issues without the pressure and confusion of new issues being added to the backlog.

When a change is being migrated to the test environment, the QA must notify the developer in advance to schedule a time for the move. After the move has been completed, a retest of previously tested functions should be performed.

If a critical processing unit is found to have severe issues (as defined by the defect management), testing should be suspended until the issues have been fixed. When the fixed unit is moved back into the test environment, any previously performed tests that affect the unit should be performed again to ensure new issues were not created as a result of the fix.

## 4 - Defect Management

The team intends to use GitHub Issues for reporting, maintaining, tracking, and overall management of issues in the project. 

The assignment and description of defect severity levels will be as follows:

|ID|Severity|Description|
|--|--------|-----------|
|1|Critical|The defect causes the system to fail to function|
|2|High    |Issues which prove to be detrimental to the system. Testing should not progress to the next build until corrective measures have been taken|
|3|Medium  |Issues that provide invalid or incorrect information|
|4|Low     |Aesthetic issues that do not impact functionality|
|5|Info    |Observations during testing that may require further information or clarification of requirements|

## 5 - Defect Tracking 

### A - GitHub Issues

- All issues will be logged and tracked using GitHub Issues.
  - Types of issues: Documentation, bug, feature request.
- Each issue will be tagged with the appropriate severity level.
- Only the QA has the permission to close or delete issues after verifying the resolution.

### B - Workflow for Handling Issues

1. **Logging Issues:**
   - The QA logs issues in GitHub during testing.
   - Each issue is assigned a severity level and detailed description.

2. **Tagging for Testing:**
   - Once the developer believes an issue is fixed, they will update the issue with a comment and tag it with "OFT".

4. **Verification and Closure:**
   - The QA retests the issue in the new build.
   - If the issue is resolved, the QA will close the GitHub Issue.
   - Only the QA has the authority to delete resolved issues to maintain an accurate issue history.

3. **Merging to Dev Branch:**
   - The developer merges the fix into the development branch for integration.

4. **Version Tagging:**
   - Each build or release will be tagged with a version number in GitHub to maintain a record of changes and fixes.

<br> 

# VII - RISKS AND CONTINGENCIES

This section describes the system or project risks and the contingency plans that should take effect if the project experiences problems.

| Risk                            | Risk Level        | Contingency Plan|
|---------------------------------|-------------------|-----------------|
| Implementation delays| Moderate| Ensure extra time is included in the project timeline to accommodate potential delays. Prioritise critical features to ensure they are completed first|
| Integration challenges| Moderate| Conduct thorough integration testing at regular intervals to identify and resolve issues early. Maintain clear documentation and communication between the QA and the developer|
| Data security and privacy| High | Implement robust security measures, including encryption and access controls. Regularly audit security protocols and ensure compliance with relevant data protection regulations|
| User acceptance and feedback | Moderate| Engage with users throughout the development process to gather feedback and ensure the application meets their needs. Plan for iterative updates based on user feedback|
| GDPR compliance| High| Stay informed about relevant regulations and ensure the application complies with all legal requirements. Conduct regular compliance audits and update the application as needed|
| Project scope creep| Moderate| Clearly define project scope and objectives at the outset. Use change management procedures to evaluate and approve any scope changes, ensuring they align with project goals and timelines|

# VIII - REFERENCES

- [Functional specification](../FunctionalSpecification/FunctionalSpecification.md) 
- [Technical specification](../TechnicalSpecification/TechnicalSpecification.md)
- [Test cases](./TestCases.md)
- [Timeline](https://docs.google.com/spreadsheets/d/16nZ7NnlbWonwxpdrqTKeNKlEg4DzgAToOoZ_Sj7gxq0/edit?hl=fr#gid=1569421064)

