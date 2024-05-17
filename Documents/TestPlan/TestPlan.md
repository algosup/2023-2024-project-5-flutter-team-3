
<p style="text-align: center; font-size: 23px; font-weight: bold"> Flutter App Test Plan </p>
<p style="text-align: center;"> for </p>
<p style="text-align: center; font-size: 20px"> Adopt a Candidate</p>
<p style="text-align: center;"> Version 1.0</p>

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
  - [5 - References](#5---references)
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
  - [2 - Test Report](#2---test-report)
  - [3 - Test Environment](#3---test-environment)
    - [A - Operating Systems](#a---operating-systems)
    - [B - Development Tools](#b---development-tools)
    - [C - Simulators](#c---simulators)
    - [D - Version Control](#d---version-control)
- [IV - FEATURES TO BE TESTED](#iv---features-to-be-tested)
- [V - FEATURES NOT TO BE TESTED](#v---features-not-to-be-tested)
- [VI - TESTING PROCEDURES](#vi---testing-procedures)
  - [1 - Test Execution](#1---test-execution)
    - [A - Test Cases](#a---test-cases)
    - [B - Order of Testing](#b---order-of-testing)
  - [2 - Pass / Fail Criteria](#2---pass--fail-criteria)
  - [3 - Suspension Criteria and Resumption Requirements](#3---suspension-criteria-and-resumption-requirements)
    - [A - Normal Criteria](#a---normal-criteria)
    - [B - Abnormal Criteria](#b---abnormal-criteria)
- [VII - RISKS AND CONTINGENCIES](#vii---risks-and-contingencies)
- [VIII - APPENDIX](#viii---appendix)


</details>

<br>

# I - INTRODUCTION

Further information about the details of this project is available in the [Functional Specification](../FunctionalSpecification/FunctionalSpecification.md).

## 1 - System Overview

The "Adopt a Candidate" project is a cross-platform application.

It's a recruitment platform inspired by Tinder, designed to match job seekers with companies based on soft skills rather than traditional metrics like age, gender, or academic background. 

It operates on a unique model where both candidates and companies are anonymised to focus purely on the match of skills and company culture.

## 2 - Test Objectives

The primary objectives of testing the “Adopt a Candidate” application are to ensure the software meets these criteria:

- The functional and non-functional requirements
- Seamless user experience across various devices (phone, tablet, computer)
- Adheres to the specified privacy standards to prevent discrimination

## 3 - Scope of Testing

<!-- The system integration test of the "Adopt a Candidate" application will include: -->

- All features such as matching, messaging, profile customisation, and soft skill selection
- The intuitiveness and user-friendliness
- The accessibility on different devices
- The implementation of data anonymisation and the protection of user data against unauthorised access
- The compliance with the European and GDPR laws

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

## 5 - References

// todo ?

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

// todo links?

If coverage levels fall short of expectations, the QA will assess whether the achieved coverage is acceptable based on the system’s risk profile.

## 3 - Test Tools

| Testing Tool            | Use                                    |
| ----------------------- | -------------------------------------- |
| Flutter Driver          | Integration tests                      | 
| Widget Tester           | Widget tests                           |
| Mockito                 | Unit tests for external services or API|
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


# III - PLAN

## 1 - Test Team

| Name | Title | Responsibilities |
| ---- | ----- | ---------------- |
| Clémentine Curel | Quality Assurance | Lead all testing activities, including test planning, test execution, and status reporting. <br> Design and execute test cases. |
| Thibaud Marlier | Software Developer | Assist with test planning and execution. Provide technical expertise and support. |

## 2 - Test Report



## 3 - Test Environment

### A - Operating Systems
- Windows: 10 or later
- macOS: Version 14.5 or later
- iPhone: iOS Version 15.6.1 or later
- Android Phone: 
### B - Development Tools
- Visual Studio Code: Version 1.89.1 or later
- Xcode: Version 15.3 or later
### C - Simulators
- iOS Simulator: 17.2 or later
- Android Studio: 2023.3.1 or later
### D - Version Control
- GitHub

# IV - FEATURES TO BE TESTED

# V - FEATURES NOT TO BE TESTED

# VI - TESTING PROCEDURES

## 1 - Test Execution
### A - Test Cases
### B - Order of Testing
## 2 - Pass / Fail Criteria
## 3 - Suspension Criteria and Resumption Requirements
### A - Normal Criteria
### B - Abnormal Criteria

# VII - RISKS AND CONTINGENCIES

# VIII - APPENDIX
