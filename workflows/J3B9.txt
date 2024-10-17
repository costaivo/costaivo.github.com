// visit the google form
https://docs.google.com/forms/d/e/1FAIpQLSfPBd5xSfuSuF-tyuzTprJUllabzHSyEGMufknzISCJc1lgww/viewform

// enter full name
type //span[text()="Full Name"]//following::input[1] as Salvino D'sa

// enter email
type //span[text()="Email"]//following::input[1] as salvino@example.com

// enter contact
type //span[text()="Contact"]//following::input[1] as 9145221362

// select gender
click //div[@data-value="Male"]

// enter address
type //span[text()="Address"]//following::textarea as Verna, Goa

// submit registration form
click Submit

// Command
// tagui ./workflows/1_google_forms_workflow.tag