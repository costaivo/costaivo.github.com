// open the start menu
keyboard [win]
wait 1

// type excel and press enter to open excel
keyboard excel[enter]
wait 2

// create new empty workbook using keyboard shortcut Alt+n+l
keyboard [alt]nl

// Create an array of files/items
files = "Computer Science.csv,Civil.csv,Electrical.csv"
items = files.split(',')

// Loop over each item
for index from 0 to items.length-1
{
    item = items[index]
    
    // Open the Data > From text/csv menu using keyboard shortcut Alt + a + f + t
    keyboard [alt]a
    keyboard ft
    wait 5

    // Type on the filename in the filename inputbox
    type ./../files/elements/file_name.png as "D:\\Projects\\session-automation\\exports\\`item`"
    
    // Press enter to load the file data
    keyboard [enter]
    wait 3

    // Click on load button to load the data into a separate worksheet
    click ./../files/elements/load_button.png
    wait 5

    // Press Ctrl + home button to select the first cell in the current worksheet
    keyboard [ctrl][home]

    // Press Alt + n to go to insert tab
    keyboard [alt]n

    // Press s + a to insert statistics
    keyboard sa

    // click on histogram option to insert a histogram
    click ./../files/elements/excel_histogram.png
}

// Press ctrl + s to save the file
keyboard [ctrl]s

// enter a file name a student_department_marks
keyboard students_departments_marks

// click on save button
click ./../files/elements/save_file.png