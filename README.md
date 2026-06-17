# Tauri Robot Framework Demo

## Prerequisites

Make sure the following are installed:

* Node.js (v18 or later recommended)
* Rust
* Cargo (installed with Rust)
* Python 3.10+
* Robot Framework
* Robot Framework Browser Library
* Playwright browsers

---

## Project Setup

## Setup

Clone the repository:

```bash
git clone <repository-url>
cd <repository-folder>
```

Install the Node.js dependencies (React, TypeScript, Vite, Tauri packages, etc.):

```bash
npm install
```

Install Robot Framework:

```bash
pip install robotframework
pip install robotframework-browser
```

Install Playwright browsers:

```bash
rfbrowser init
```

## Run the Application

```bash
npm run tauri dev
```

## Run Robot Framework Tests

Keep the application running in one terminal.

In another terminal:

```bash
robot robot-tests/tauri_test.robot
```

## Test Results

After execution, Robot Framework generates:

- `report.html`
- `log.html`
- `output.xml`
