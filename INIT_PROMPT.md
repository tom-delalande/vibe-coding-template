Create an implementation plan for the application described in this document.

Break the work into small, atomic tasks. Each task should represent a unit of work that can reasonably be completed in a single development session. Tasks should also be small enough that an AI coding agent can complete them in a single iteration without additional planning.

For every task, create a file at:

tasks/{task-name}.pending.md

Use lowercase kebab-case for {task-name}.

Each task file must follow this structure:

# Task: {Human Readable Name}

## Dependencies

List any tasks that must be completed before this task. Reference them by filename.

Example:

* tasks/database-schema.pending.md
* tasks/auth-api.pending.md

If there are no dependencies, write:
None

## Description

Provide a detailed explanation of what must be implemented. Include any relevant context from the application description.

## Implementation Notes

Provide technical guidance such as:

* relevant components
* data models
* APIs
* libraries or frameworks to use
* edge cases to consider

## Test Cases

List concrete tests that must pass for the task to be considered complete.

Example format:

* [ ] API returns 200 when valid credentials are provided
* [ ] Invalid input returns appropriate error
* [ ] Unit tests cover main success and failure paths

## Completion Criteria

Clearly define what conditions must be met before the task is considered done.

---

Additional rules:

* Tasks must be **atomic** and **independently testable**.
* Prefer many small tasks over a few large ones.
* Avoid circular dependencies.
* Create tasks in dependency order when possible.
* Do not overwrite existing task files.
* If a task would require modifying more than **3–5 files**, split it into multiple tasks.

### Artifact Requirement

Every task must produce a **concrete, verifiable artifact** in the repository.

Examples include:

* source code files
* database migrations
* configuration files
* tests
* implementation documentation

Avoid tasks that only involve thinking, researching, or planning.

Tasks such as the following are **NOT allowed**:

* “Research the best framework”
* “Design the system architecture”
* “Plan the API structure”

Instead, tasks must directly implement something, for example:

* “Create initial PostgreSQL schema for users table”
* “Implement authentication middleware”
* “Add API endpoint for user registration”
* “Write integration tests for login endpoint”

Also create a file:

tasks/README.md

This file should contain a list of all tasks in **dependency order** to provide an overview of the full task graph.

