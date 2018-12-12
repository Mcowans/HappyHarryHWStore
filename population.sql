INSERT INTO Address VALUES(1, "123 Main St", "Oswego", "IL", "60503");
INSERT INTO Address VALUES(2, "54 N North Ave", "Warrenville", "IL", "60555");
INSERT INTO Address VALUES(3, "0N122 Kirk Ct", "Aurora", "IL", "60506");
INSERT INTO Address VALUES(4, "12 Napper Blvd", "Naperville", "IL", "60440");
INSERT INTO Address VALUES(5, "43 S Evanslawn St", "Aurora", "IL", "60506");
INSERT INTO Address VALUES(6, "14 Bills Rd", "Oswego", "IL", "60503");
INSERT INTO Address VALUES(7, "0N232 Harper Dr", "Aurora", "IL", "60506");
INSERT INTO Address VALUES(8, "98 Gorgia Ln", "North Aurora", "IL", "60543");
INSERT INTO Address VALUES(9, "4N81 Franklin Blvd", "Naperville", "IL", "60440");


INSERT INTO Department VALUES("Plumbing");
INSERT INTO Department VALUES("Hardware");
INSERT INTO Department VALUES("Paint");
INSERT INTO Department VALUES("Front End");
INSERT INTO Department VALUES("Building Materials");


INSERT INTO Customer VALUES(1, "Nathan", "Hunt", "nhunt@gmail.com", "password", "6305668989", 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Customer VALUES(2, "Sam", "Smith", "superawesomedude93@aol.com", "password", "6306636544", 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Customer VALUES(3, "Danni", "Williams", "williamsd07@outlook.com", "password", "6305668989", 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Customer VALUES(4, "Maria", "Banks", "banks932@gmail.com", "password", "6305668989", 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO Customer VALUES(5, "Tony", "smith", "tsmith07@aurora.edu", "password", "6305668989", 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


INSERT INTO Product VALUES(1, 10.99, "Hardware", 211, 100, "Hammer");
INSERT INTO Product VALUES(2, 4.99, "Plumbing", 198, 321, "PVC Pipe");
INSERT INTO Product VALUES(3, 33.99, "Hardware", 233, 12, "Wrench");
INSERT INTO Product VALUES(4, 13.99, "Paint", 354, 6, "Red Paint");
INSERT INTO Product VALUES(5, 15.99, "Building Materials", 578, 93, "2x4");


INSERT INTO `Order` VALUES(1, 3, 2, 4.99, '2010-12-20 13:04:20');
INSERT INTO `Order` VALUES(2, 2, 3, 33.99, '2018-02-03 19:22:51');
INSERT INTO `Order` VALUES(3, 2, 1, 10.99, '2016-07-30 09:54:03');
INSERT INTO `Order` VALUES(4, 1, 2, 4.99, '2017-09-12 15:22:08');
INSERT INTO `Order` VALUES(5, 4, 5, 15.99, '2017-04-09 07:14:11');

INSERT INTO Job VALUES("Manager", 65000);
INSERT INTO Job VALUES("Assistant Manager", 50000);
INSERT INTO Job VALUES("Full-time", 40000);
INSERT INTO Job VALUES("Part-time", 20000);
INSERT INTO Job VALUES("Seasonal", 10000);

INSERT INTO Employee VALUES(1, "Manager", "Front End", "Bethany", "Rutter", "brutter@hhhardware.com", "6305550932", 5, '2009-05-09', "password");
INSERT INTO Employee VALUES(2, "Assistant Manager", "Hardware", "Etahn", "York", "eyork@hhhardware.com", "7082437272", 6, '2010-03-30', "password");
INSERT INTO Employee VALUES(3, "Full-time", "Plumbing", "Jim", "Sommer", "jsommer@hhhardware.com", "6308214443", 7, '2013-01-22', "password");
INSERT INTO Employee VALUES(4, "Part-time", "Building Materials", "Claire", "Jenson", "cjenson@hhhardware.com", "6307471101", 8, '2017-06-08', "password");
INSERT INTO Employee VALUES(5, "Part-time", "Paint", "Paula", "Kennedy", "pkennedy@hhhardware.com", "6307822823", 9, '2017-11-23', "password");
