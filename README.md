# Flex & Bison Expression Evaluator with Custom `**` Operator

This project is a basic expression evaluator built using **Flex** and **Bison**, supporting standard arithmetic operators and a custom `**` operator.

### 💡 Custom Operator

- `x ** y` is **not exponentiation**.
- It evaluates to: `x³ + y³` (i.e., `x*x*x + y*y*y`)

---

## 🧱 Features

- Arithmetic operations: `+`, `-`, `*`, `/`
- Custom operation: `**` → evaluates `x³ + y³`
- Parentheses for grouping
- Line-by-line REPL-like input

---

## 🗂 File Structure

| File       | Purpose                                  |
|------------|------------------------------------------|
| `calc.l`   | Flex lexer to tokenize input             |
| `calc.y`   | Bison parser with grammar rules          |
| `main.c`   | Driver code to run the parser            |
| `Makefile` | Automates build steps                    |

---

## ⚙️ Build Instructions

1. Open MSYS2 or any terminal with Flex & Bison installed.
2. Run:

```bash
make
```

3. To clean generated files:

```bash
make clean
```

---

## 🚀 Usage

Run the compiled binary:

```bash
./calc
```

Input expressions line by line. For example:

```
2 ** 3
```

Output:

```
Result: 35
```

---

## 🧪 Examples

| Input      | Output        |
|------------|---------------|
| `2 + 3`    | `Result: 5`   |
| `4 ** 5`   | `Result: 189` |
| `(2+1)**2` | `Result: 36`  |

---

## 📌 Notes

- Press `Ctrl+D` to exit.
- Make sure input ends with a newline (`Enter` key).

---

## 🧑‍💻 Author

Varun Agrawal
NIT Raipur
