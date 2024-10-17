// visit the google form
https://docs.google.com/forms/d/e/1FAIpQLSfPBd5xSfuSuF-tyuzTprJUllabzHSyEGMufknzISCJc1lgww/viewform

// echo the row process
echo processing row: `iteration`

// enter full name
type //span[text()="Full Name"]//following::input[1] as `First Name` `Last Name`

// enter email
type //span[text()="Email"]//following::input[1] as `Email`

// enter contact
type //span[text()="Contact"]//following::input[1] as `Contact`

// select gender
if Gender equal to "M"
    click //div[@data-value="Male"]
else if Gender equal to "F"
    click //div[@data-value="Female"]

// enter address
type //span[text()="Address"]//following::textarea as `Address`

// submit registration form
click Submit

// Command
// tagui ./workflows/2_google_forms_via_csv_workflow.tag ./files/students.csv