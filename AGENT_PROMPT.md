There is a list of tasks in the `tasks` folder.

Each task has one of the following states:

* `{name}.pending.md`
* `{name}.in_progress.md`
* `{name}.complete.md`

### Selecting a Task

1. Scan the `tasks` folder for tasks with the filename format:

   `{name}.pending.md`

2. Before selecting a task, verify that **all dependencies listed in the task file are marked as `.complete.md`**.

3. Select one eligible task and mark it as **in progress** by renaming the file:

   `{name}.pending.md` → `{name}.in_progress.md`

Only one task should be worked on at a time.

---

### Executing the Task

Read the task file and perform the following actions:

1. **Implement the feature**

   * Modify or create the required source code and supporting files.

2. **Test the feature**

   * Execute the test cases listed in the task file.
   * Fix any issues until all test cases pass.

3. **Update the task graph**

   * If new work is discovered, create additional task files in the format:

     `tasks/{new-task-name}.pending.md`

   * If an existing task needs to be expanded or split into smaller tasks, update or create additional tasks accordingly.

   * Ensure new tasks follow the same task format used in the repository.

---

### Updating Task Status

Once the feature is implemented **and all test cases pass**, mark the task as complete by renaming the file:

`{name}.in_progress.md` → `{name}.complete.md`

---

### Failure Handling

If the task cannot be completed because of missing prerequisites or blocked work:

1. Create one or more new tasks describing the missing work.
2. Return the current task to pending status:

   `{name}.in_progress.md` → `{name}.pending.md`

---

### General Rules

* Only work on **one task at a time**.
* Do not start tasks with incomplete dependencies.
* Ensure all tests pass before marking a task complete.
* Prefer creating **small, focused tasks** when additional work is discovered.
* Do not modify tasks that are already marked `.complete.md`.

