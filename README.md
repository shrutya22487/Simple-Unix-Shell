# 🐚 Simple Unix Shell (C)

A **minimal Unix shell implemented from scratch in C**.
This shell reads user commands, parses them, executes system programs using Unix system calls, and maintains execution history.

---

## ✨ Features

✅ Custom shell prompt
✅ Execute standard Unix commands (`ls`, `wc`, `grep`, `sort`, `uniq`, etc.)
✅ Support for **command-line arguments**
✅ **Pipelines (`|`)** for chaining commands
✅ Execute **local binaries** (`./program`)
✅ Built-in **command history**
✅ Graceful termination with execution summary
✅ Uses core Unix system calls: `fork`, `exec`, `wait`, `pipe`, `dup2`

---

## 📂 Project Structure

```
.
├── simple-shell.c     # Main shell implementation
├── Makefile           # Build instructions
├── README.md          # Project documentation
```

---

## ⚙️ System Requirements

* Linux / WSL (Unix APIs required)
* GCC compiler
* GNU Make

> ⚠️ macOS is **not recommended** for OS-level assignments using Unix internals 

---

## 🚀 How to Run

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/shrutya22487/Simple-Unix-Shell.git
cd Simple-Unix-Shell
```

### 2️⃣ Compile the Shell

```bash
make
```

(or manually)

```bash
gcc simple-shell.c -o simple-shell
```

### 3️⃣ Run the Shell

```bash
./simple-shell
```

---

## 🧪 Example Commands

```bash
ls
ls -l
echo hello world
wc -l file.txt
grep printf hello.c
cat file.txt | wc -l
./fib 40
```

---

## 🕘 Command History

The shell maintains a **session-specific history** of commands entered.
Typing:

```bash
history
```

Displays all commands executed during the current shell session.

---

## ⛔ Exit Behavior

When you terminate the shell (`Ctrl + C`), it prints:

* Process ID (PID)
* Execution timestamp
* Total execution time per command

Only commands from the **current invocation** are displayed.

---

## ⚠️ Limitations

* No support for:

  * Quoted strings (`"hello world"`)
  * Escaped characters (`\`)
  * Advanced shell scripting features
* Commands are whitespace-separated only
* Designed for **educational purposes**, not as a full Bash replacement

---

## 🧠 Concepts Used

* Process creation (`fork`)
* Program execution (`exec*`)
* Inter-process communication (`pipe`)
* File descriptor duplication (`dup2`)
* Parent-child synchronization (`wait`)
* Command parsing & tokenization
