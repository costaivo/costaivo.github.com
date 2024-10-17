// Prepare the headers for the csv files
csCourses = "Student_ID,Student_Name,Data Structures,Algorithms,Operating Systems,Database Systems,Software Engineering"
civilCourses = "Student_ID,Student_Name,Structural Analysis,Concrete Technology,Geotechnical Engineering,Hydrology,Transportation Engineering"
elecCourses = "Student_ID,Student_Name,Electromagnetics,Control Systems,Power Systems,Signal Processing"

// If its just the first run, create the csv files for all departments with the headers
if iteration equal to 1
{
    write `csCourses` to ./../exports/Computer Science.csv
    write `civilCourses` to ./../exports/Civil.csv
    write `elecCourses` to ./../exports/Electrical.csv
}

// Generate the row values dynamically based on department
row = ""
if Department equal to "Computer Science"
    row = "`Student_ID`,`Student_Name`,`Data Structures`,`Algorithms`,`Operating Systems`,`Database Systems`,`Software Engineering`"
else if Department equal to "Civil"
    row = "`Student_ID`,`Student_Name`,`Structural Analysis`,`Concrete Technology`,`Geotechnical Engineering`,`Hydrology`,`Transportation Engineering`"
else if Department equal to "Electrical"
    row = "`Student_ID`,`Student_Name`,`Electromagnetics`,`Control Systems`,`Power Systems`,`Signal Processing`"

// Append the rows to the respective department csv files
write `row` to ./../exports/`Department`.csv

// execution command:
// tagui ./workflows/3_student_classification_workflow.tag ./files/students_marks.csv -nobrowser && tagui ./workflows/4_excel_merger_workflow.tag -nobrowser