CREATE TABLE `productlines` (
  `productlines` int PRIMARY KEY,
  `TextDescrition` text,
  `htmlDescription` text,
  `image` varchar(255)
);

CREATE TABLE `Employees` (
  `employeesNumber` int PRIMARY KEY,
  `lastName` varchar(255),
  `firstName` varchar(255),
  `ektension` bool,
  `email` varchar(255),
  `officeCode` int,
  `reportTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `products` (
  `producCode` int PRIMARY KEY,
  `producName` varchar(255),
  `productLine` varchar(255),
  `productScale` varchar(255),
  `productVendor` varchar(255),
  `productDescription` varchar(255),
  `quantitylnStock` varchar(255),
  `buyPrice` varchar(255),
  `MSRP` varchar(255)
);

CREATE TABLE `offices` (
  `officeCode` int PRIMARY KEY,
  `city` int,
  `phone` int,
  `addresLine1` int,
  `addresLine2` int,
  `state` int,
  `country` int,
  `postalCode` int,
  `territory` int
);

CREATE TABLE `customers` (
  `customerNumber` int PRIMARY KEY,
  `customerName` varchar(255),
  `contactLastName` varchar(255),
  `contactFirstName` varchar(255),
  `phone` varchar(255),
  `addressLine1` int,
  `addresLine2` int,
  `city` int,
  `state` varchar(255),
  `postalCode` int,
  `country` varchar(255),
  `salesRepEmployeesNumber` varchar(255),
  `creditLimit` varchar(255)
);

CREATE TABLE `orderdetail` (
  `ordersNumber` int PRIMARY KEY,
  `productCode` int,
  `quantityOrdered` varchar(255),
  `priceEach` varchar(255),
  `orderLineNumber` int
);

CREATE TABLE `orders` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` varchar(255),
  `required` varchar(255),
  `shhipedDate` varchar(255),
  `status` varchar(255),
  `comments` varchar(255),
  `customerNumber` varchar(255)
);

CREATE TABLE `payments` (
  `customerNumber` int PRIMARY KEY,
  `checkNumber` varchar(255),
  `paymentDate` varchar(255),
  `amount` varchar(255)
);

ALTER TABLE `products` ADD FOREIGN KEY (`productLine`) REFERENCES `productlines` (`productlines`);

ALTER TABLE `offices` ADD FOREIGN KEY (`officeCode`) REFERENCES `Employees` (`officeCode`);

ALTER TABLE `orderdetail` ADD FOREIGN KEY (`productCode`) REFERENCES `products` (`producCode`);

ALTER TABLE `orders` ADD FOREIGN KEY (`orderNumber`) REFERENCES `orderdetail` (`ordersNumber`);

ALTER TABLE `payments` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);

ALTER TABLE `orders` ADD FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`);
