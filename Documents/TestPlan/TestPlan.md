
<p style="text-align: center; font-size: 23px; font-weight: bold"> Flutter App Test Plan </p>
<p style="text-align: center;"> for </p>
<p style="text-align: center; font-size: 20px"> Adopt a Candidate</p>
<p style="text-align: center;">Prototype</p>

<hr>

<br>

<details>
    <summary>Table of content</summary>

- [I - INTRODUCTION](#i---introduction)
  - [1 - System Overview](#1---system-overview)
  - [2 - Test Objectives](#2---test-objectives)
  - [3 - Scope of Testing](#3---scope-of-testing)
  - [4 - Definitions / Acronyms](#4---definitions--acronyms)
    - [A - Definitions](#a---definitions)
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
    - [C - Simulators](#c---simulators)
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
    - [C - Extra](#c---extra-1)
  - [4 - Build 4](#4---build-4)
    - [A - Company chat](#a---company-chat)
    - [B - Candidate chat](#b---candidate-chat)
    - [C - Extra](#c---extra-2)
- [V - FEATURES NOT TO BE TESTED](#v---features-not-to-be-tested)
- [VI - TESTING PROCEDURES](#vi---testing-procedures)
  - [1 - Test Execution](#1---test-execution)
    - [A - Test Cases](#a---test-cases)
    - [B - Order of Testing](#b---order-of-testing)
  - [2 - Pass / Fail Criteria](#2---pass--fail-criteria)
  - [3 - Suspension Criteria and Resumption Requirements](#3---suspension-criteria-and-resumption-requirements)
    - [A - Normal Criteria](#a---normal-criteria)
    - [B - Abnormal Criteria](#b---abnormal-criteria)
  - [4 - Defect Management](#4---defect-management)
- [VII - RISKS AND CONTINGENCIES](#vii---risks-and-contingencies)
- [VIII - APPENDIX](#viii---appendix)


</details>

<br>

# I - INTRODUCTION

// todo WHAT AND HOW

Further information about the details of this project is available in the [Functional Specification](../FunctionalSpecification/FunctionalSpecification.md).

## 1 - System Overview

The "Adopt a Candidate" project is a cross-platform application.

It's a recruitment platform inspired by Tinder, designed to match job seekers with companies based on soft skills rather than traditional metrics like age, gender, or academic background. 

It operates on a unique model where both candidates and companies are anonymised to focus purely on the match of skills and company culture.

// todo provide analytics to to We are evolution

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
|Tinder       | |
|Match        ||

### B - Acronyms

| Acronym | Definition                         |
| ------- | ---------------------------------- |
| GDPR    | General Data Protection Regulation |
| UI      | User Interface                     |
| UX      | User Experience                    |
| API     | Application Programming Interface  |
| DB      | Database                           |

# II - APPROACH

## 1 - Assumptions & Constraints

### A - Assumptions

- Consistent and reliable internet connection
- All documentation provided (functional and technical specifications) is complete and has been reviewed and approved
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
  - This matrix will connect important application features, such as anonymization, matching algorithms, and user interaction, to their respective test cases

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
  - To ensure that a change to the system does not introduce new defects

## 5 - Test Data

- Synthetic Data
  - Generated data that mimic real user inputs for testing purposes
- Anonymised Real Data
  - Use of real data that has been anonymized to test system performance and functionality without compromising privacy
- Boundary Test Data
  - Specific data sets designed to test system limits and boundary conditions

// todo example of data or link to the data?

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
### C - Simulators
- iOS Simulator: 17.2 or later
- Android Studio: 2023.3.1 or later
### D - Version Control
- GitHub


# IV - FEATURES TO BE TESTED

Build have been created to organise as much as possible the testing of the app. 

Each build is a new version of the app with new features and bug fixes.
<!-- not sur  -->

These builds have been created this manner according to the timeline.

## 1 - Build 1 

### A - Subscribe

- Create a company account
- Create a candidate account 

### B - Log in 

- Log to a company account
- Log to a candidate account
- Forget password

### C - Extra

- Log out 
- Try wrong data
- Responsiveness
- Seamless navigation
- Compatibility

## 2 - Build 2 

### A - Company swiping
- 
- 

### B - Candidate swiping

### C - Match

### D - Extra

## 3 - Build 3

### A - Company algorithm
### B - Candidate algorithm
### C - Extra

Matching algorithm

Messaging system
Advanced swiping system
- no more swipe 
- 

responsiveness + Compatibility

## 4 - Build 4

### A - Company chat
### B - Candidate chat
### C - Extra

responsiveness + Compatibility

report and analytics


# V - FEATURES NOT TO BE TESTED

// todo add?

- Performance
- Scalability 
- Advanced security
  - File security procedure

# VI - TESTING PROCEDURES

## 1 - Test Execution

### A - Test Cases

<h2>Title example [ID]</h2>

Test Case ID: Unique identifier

Test Case Description: Detailed description of what the test case is designed to evaluate.

Preconditions: List any prerequisites that must be met before executing the test case.

Test Steps: Outline the specific steps to be followed during the test execution.

|Step|Instructions|Expected behaviour|Working version|
|---|---|---|---|
|01 |Do this |This should appear|The version were this is working|
|02 |Do that |That should move  | 0.0.1 - 0.1.3 - 0.2.0|
...

Expected Results: Clearly define the expected outcome at the end of those steps.

Postconditions: Note any conditions that should be verified after the test case execution.

### B - Order of Testing

// todo need list 

The order of testing will be driven primarily by the build order. Within each build, the following order of testing will be followed:

**Build 1**

1. Candidate account
2. Company account
3. ...

**Build 2**

1. Candidate swiping
2. Company swiping
3. User-friendly
4. ...

**Build 3**

1. Candidate algo
2. Company algo
3. ...

**Build 4**

1. Message company
2. Message candidate
3. ...

## 2 - Pass / Fail Criteria

// todo complete

To pass the system integration test, the following criteria must be met:



## 3 - Suspension Criteria and Resumption Requirements

### A - Normal Criteria

// todo complete




### B - Abnormal Criteria

// todo complete



## 4 - Defect Management

// todo complete

test report + github issues + resolved push as comment + only me can delete them
record of the test
test cases that have passed and failed 

OFT -> Open for testing tag 
Merge to Dev branch to be tested 
-> Or Push with OFT 
-> Version tag 


En/Fr

|Test Case ID|Test Case Description|Test Case Steps|Expected Result|Actual Result|Test Case Status|
|---|---|---|---|---|---|



# VII - RISKS AND CONTINGENCIES

// todo

# VIII - APPENDIX

- Functional 
- Technical
- Test cases
- timeline

