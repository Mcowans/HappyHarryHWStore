# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Customer.create(first_name: 'Nathan', last_name: 'Hunt', email: 'nhunt@gmail.com', phone: '6305668989', address_id: '1' )
Customer.create(first_name: 'Sam', last_name: 'Smith', email: 'superawesomedude93@aol.com', phone: '6306636544', address_id: '2' )
Customer.create(first_name: 'Danni', last_name: 'Williams', email: 'williamsd07@outlook.com', phone: '6307832109', address_id: '3' )
Customer.create(first_name: 'Maria', last_name: 'Banks', email: 'banks932@gmail.com', phone: '3125499211', address_id: '4' )
Customer.create(first_name: 'Tony', last_name: 'Smith', email: 'tsmith07@aurora.edu', phone: '630902774', address_id: '2' )


Address.create(street: '123 Main St', city: 'Oswego', state: "IL", zip: '60503')
Address.create(street: '54 N North Ave', city: 'Warrenville', state: "IL", zip: '60555')
Address.create(street: '0N122 Kirk Ct', city: 'Aurora', state: "IL", zip: '60506')
Address.create(street: '12 Napper Blvd', city: 'Naperville', state: "IL", zip: '60440')
Address.create(street: '43 S Evanslawn St', city: 'Aurora', state: "IL", zip: '60506')
Address.create(street: '14 Bills Rd', city: 'Oswego', state: "IL", zip: '60503')
Address.create(street: '0N232 Harper Dr', city: 'Aurora', state: "IL", zip: '60506')
Address.create(street: '98 Gorgia Ln', city: 'North Aurora', state: "IL", zip: '60542')
Address.create(street: '4N81 Franklin Blvd', city: 'Naperville', state: "IL", zip: '60440')


Order.create(customer_id: "3", product_id: '2', amount: "4", date: "12-Sep-18")
Order.create(customer_id: "2", product_id: '3', amount: "33", date: "9-Dec-15")
Order.create(customer_id: "2", product_id: '1', amount: "10", date: "4-Aug-13")
Order.create(customer_id: "1", product_id: '2', amount: "4", date: "4-Aug-14")
Order.create(customer_id: "4", product_id: '5', amount: "15", date: "7-Apr-17")


Product.create(price: "10", deparment_name: "Hardware", SKU: "211", quantity: '100', description: 'Hammer')
Product.create(price: "4", deparment_name: "Plumbing", SKU: "198", quantity: '321', description: 'Coupler')
Product.create(price: "33", deparment_name: "Hardare", SKU: "233", quantity: '12', description: 'Wrench')
Product.create(price: "13", deparment_name: "Paint", SKU: "354", quantity: '6', description: 'Red Paint')
Product.create(price: "15", deparment_name: "Building Materials", SKU: "578", quantity: '93', description: 'Singles')


Employee.create(job_title: 'Manager', deparment_name: 'Front Name', first_name: 'Bethany', last_name: 'Rutter', email: "brutter@hhhardware.com", phone: "6305550932", address_id: '5', hire_date: '5-May-09')
Employee.create(job_title: 'Assistant Manager', deparment_name: 'Hardware', first_name: 'Ethan', last_name: 'York', email: "eyork@hhhardware.com", phone: "7082437272", address_id: '6', hire_date: '30-Mar-10')
Employee.create(job_title: 'full-time', deparment_name: 'Plumbing', first_name: 'Jim', last_name: 'Sommer', email: "jsommer@hhhardware.com", phone: "6308214443", address_id: '7', hire_date: '22-Jan-13')
Employee.create(job_title: 'Part-time', deparment_name: 'Building Materials', first_name: 'Claire', last_name: 'Jenson', email: "cjenson@hhhardware.com", phone: "6307471101", address_id: '8', hire_date: '8-Jun-17')
Employee.create(job_title: 'Part-time', deparment_name: 'Paint', first_name: 'Bethany', last_name: 'Kennedy', email: "pkenned@hhhwardware.com", phone: "6307822823", address_id: '9', hire_date: '23-Nov-17')

Job.create(job_title: 'Manager', salary: '45000')
Job.create(job_title: 'Assistant Manager', salary: '32000')
Job.create(job_title: 'Full-time', salary: '30000')
Job.create(job_title: 'Part-time', salary: '20000')
Job.create(job_title: 'Seasonal', salary: '15000')

Deparment.create(deparment_name: 'Plumbing')
Deparment.create(deparment_name: 'Hardware')
Deparment.create(deparment_name: 'Paint')
Deparment.create(deparment_name: 'FrontEnd')
Deparment.create(deparment_name: 'Building Materials')

