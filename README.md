# KU Assignment Template

A LaTeX template for assignment submissions at **Kathmandu University, Department of Computer Science and Engineering**. This template is designed to meet the formatting requirements for assignments and includes placeholders for the university logo, course code, instructor's name, and student details.

## Features
- Single-member submission support.
- Customizable title, course code, instructor's name, and student details.
- Pre-formatted title page with the university logo.
- Easy-to-use commands for adding content.

## How to Use

### **Using the Template Locally**
1. **Download the Template**
   - Clone this repository or download the `assignmenttemplate.cls` file.

2. **Include the Template in Your Project**
   - Place the `assignmenttemplate.cls` file in the same directory as your `.tex` file.

3. **Create Your Assignment Document**
   - Use the following template in your `.tex` file:

     ```latex
     \documentclass{assignmenttemplate}

     % Preamble
     \title{Traffic Simulator} % Assignment title
     \member{Kiran Dahal}{15} % Your name and roll number
     \coursecode{COMP 202} % Course code
     \instructor{Rupak Raj Ghimire} % Instructor's name
     \date{\today} % Submission date

     \begin{document}
     \maketitle

     \section{Problem Statement}
     Design and implement a traffic simulation system that models vehicle movement and traffic light control.

     \section{Solution}
     The solution involves the following steps:
     \begin{itemize}
         \item Modeling vehicles as objects with properties like speed and direction.
         \item Implementing traffic light logic using state machines.
         \item Simulating interactions between vehicles and traffic lights.
     \end{itemize}

     \section{Conclusion}
     The traffic simulation system successfully models real-world traffic scenarios and can be extended for further analysis.

     \end{document}
     ```

4. **Add the University Logo**
   - Place the university logo file (e.g., `logo-200.png`) in the same directory as your `.tex` file.
   - The logo will automatically be included in the title page.

5. **Compile the Document**
   - Compile your `.tex` file using a LaTeX editor (e.g., Overleaf, TeXShop, or TeXworks).

---

### **Using the Template in Overleaf**

1. **Create a New Project**
   - Log in to [Overleaf](https://www.overleaf.com/) and create a new project.

2. **Upload the `.cls` File**
   - Click the **Upload** button in the file explorer panel.
   - Upload the `assignmenttemplate.cls` file.

3. **Add the University Logo**
   - Upload the university logo file (e.g., `logo-200.png`) to the project.

4. **Create Your Assignment Document**
   - Create a new `.tex` file (e.g., `main.tex`) and use the template provided above.

5. **Compile the Document**
   - Click **Recompile** to generate the PDF.

---

## Example Output

The title page will look like this:

---

**Kathmandu University**  
**Department of Computer Science and Engineering**  
**Dhulikhel, Kavre**  

*(Logo)*  

**An Assignment on**  
**"Traffic Simulator"**  
**Subject to: Data Structures and Algorithms**  
**Course Code: COMP 202**  

**Submitted by:**  
Kiran Dahal (15)  

**Submitted to:**  
Rupak Raj Ghimire  
Department of Computer Science and Engineering  

**Date:** \today  

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit a pull request.

---

## Acknowledgments

- Thanks to Kathmandu University for providing the guidelines for assignment submissions.
- Inspired by the need for a standardized LaTeX template for students.

---

## Contact

For questions or feedback, please contact [Kiran Dahal](mailto:dahalkiran926@gmail.com).