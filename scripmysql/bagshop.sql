-- Generated by Oracle SQL Developer Data Modeler 4.1.5.907
--   at:        2021-05-01 19:49:14 ICT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE Database bagshop;

CREATE TABLE BagType
  (
    BagTypeID   INTEGER NOT NULL,
    BagTypeName VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE BagType ADD CONSTRAINT BagType_PK PRIMARY KEY ( BagTypeID ) ;


CREATE TABLE Color
  (
    ColorID   INTEGER NOT NULL,
    ColorName VARCHAR (30) NOT NULL
  ) ;
ALTER TABLE Color ADD CONSTRAINT Color_PK PRIMARY KEY ( ColorID ) ;


CREATE TABLE Product
  (
    ProductID      INTEGER NOT NULL AUTO_INCREMENT,
    ProductName    VARCHAR (30) NOT NULL ,
    ProductDescrip VARCHAR (300) NOT NULL ,
    Price          DECIMAL (5,2) NOT NULL ,
    InStockDate    DATE NOT NULL ,
    ImageName      VARCHAR (50) NOT NULL ,
    BagTypeID      INTEGER NOT NULL,
    PRIMARY KEY (ProductID)
  ) ;
ALTER TABLE Product ADD CONSTRAINT Product__UN UNIQUE ( ProductName ) ;


CREATE TABLE ProductDetail
  (
    ProductID INTEGER NOT NULL,
    ColorID   INTEGER NOT NULL
  ) ;
ALTER TABLE ProductDetail ADD CONSTRAINT ProductDetail_PK PRIMARY KEY ( ColorID, ProductID ) ;


ALTER TABLE ProductDetail ADD CONSTRAINT FK_ASS_10 FOREIGN KEY ( ProductID ) REFERENCES Product ( ProductID ) ;

ALTER TABLE ProductDetail ADD CONSTRAINT FK_ASS_9 FOREIGN KEY ( ColorID ) REFERENCES Color ( ColorID ) ;

ALTER TABLE Product ADD CONSTRAINT Product_BagType_FK FOREIGN KEY ( BagTypeID ) REFERENCES BagType ( BagTypeID ) ;

Insert into BagType values (1, "Mini Flap Bag");
Insert into BagType values (2, "The Fae Bag");
Insert into BagType values (3, "Gabbi Bag");
Insert into BagType values (4, "Rantan Bag");
Insert into BagType values (5, "Envelope Bag");
Insert into BagType values (6, "Eva Shoulder Bag");
Insert into BagType values (7, "Maze Bag");
Insert into BagType values (8, "Mila Shoulder Bag");
Insert into BagType values (9, "Quinn Phone Bag");
Insert into BagType values (10, "Cloud Top Bag");

Insert into Color values (1, "#242423");
Insert into Color values (2, "#BF8B3F"); 
Insert into Color values (3, "#7F8164"); 
Insert into Color values (4, "#FFBFCB"); 
Insert into Color values (5, "#ABC3C7"); 
Insert into Color values (6, "#FFF3E4"); 
Insert into Color values (7, "#D18E64");
Insert into Color values (8, "#F9E37C"); 
Insert into Color values (9, "#E7DCD5");
Insert into Color values (10, "#FEA46D");


Insert into Product values (1, "Mini Flap Bag - Croc", "Canvas & Ultra-Microfiber Vegan Leather 100% Recycled Plastic Lining 7.9'' W × 6.1'' D × 3.1'' H (20cm x 15.5cm x 8cm) 16.9''（43cm）Handle Drop Detachable Strap (Unadjustable) Gold Hardware Push-Lock Closure 2 Interior Pockets 1 Zipping Pocket Imported", 102.02, '2021-04-30', "MFB-Croc.jpg", 1);

Insert into Product values (2, "Mini Flap Bag - Lizard", "Lizard-Embossed  Vegan Leather 100% Recycled Plastic Lining 7.9'' W × 6.1'' D × 3.1'' H (20cm x 15.5cm x 8cm) 16.9''（43cm）Handle Drop Detachable Strap (Unadjustable) Gold Hardware Push-Lock Closure 2 Interior Pockets 1 Zipping Pocket Imported", 102.02, '2021-04-30', "MFB-Lizard.jpg", 1);

Insert into Product values (3, "The Fae Bag - Croc","Croc-Embossed Vegan Leather Smooth Vegan Leather 7.4'' W × 6.9'' H × 3.1'' D (18.8cm x 17.5cm x 8cm) 17.3''  (44 cm) Shoulder Strap Drop 3.5'' (9cm)  Handle Drop Detachable Strap (Unadjustable) Gold Hardware Magnetic Snap Closure 1 Interior Pocket 1 Zipping Pocket Imported", 79.72, '2021-5-5', "TFB-Croc.jpg", 2);

Insert into Product values (4, "Gabbi Bag", "Vintage Hobo Vegan Leather Faux Suede Lining 10.2'' W × 2.4'' D × 5.1'' H (26cm x 6cm x 13cm) 6.7''(17cm) Handle Drop Magnetic Closure Undetachable Strap (Unadjustable) 1 Interior Pocket Fits All Sizes Of Phones Imported", 79.72, '2021-5-20', "GB.jpg", 3);

Insert into Product values (5, "Rantan Bag", "Croc-Embossed Vegan Leather Faux Suede Lining & Ultra-Microfiber Vegan Lining 8.7''W × 6.7''D× 8.7''H (22cm x 17cm x 22cm) 9.5''~ 11''(24~28cm) Handle Drop Detachable Strap (Adjustable) Gold Hardware Zip Closure 1 Interior Pocket Imported", 95.67, '2021-5-20', "RB.jpg", 4);

Insert into Product values (6, "Envelope Bag", "Smooth Vegan Leather Unlined Lining 8.9''W x 6.1''H x 2.4'' D (22.5cm x 15.5cm x 6cm) 11.8''-20.5'' (30cm - 52cm) Shoulder Strap Drop Undetachable Strap (Adjustbale) Gold Hardware Magnetic Snap Closure 1 Interior Pocket. Fits All Sizes Of Phones
1 Exterior Pocket 1 Zipping Slip Pocket Imported", 98.55, '2021-5-20', "EB.jpg", 5);

Insert into Product values (7, "Envelope Bag - Croc", "Smooth Vegan Leather Unlined Lining 8.9''W x 6.1''H x 2.4'' D (22.5cm x 15.5cm x 6cm) 11.8''-20.5'' (30cm - 52cm) Shoulder Strap Drop Undetachable Strap (Adjustbale) Gold Hardware Magnetic Snap Closure 1 Interior Pocket. Fits All Sizes Of Phones
1 Exterior Pocket 1 Zipping Slip Pocket Imported", 98.55, '2021-5-20', "EB-Croc.jpg", 5);

Insert into Product values (8, "Eva Shoulder Bag - Croc", "90s Classic Baguette Bag Type Croc-Embossed Vegan Leather 100% Recycled Plastic Lining 11.02'' W × 5.51'' D × 1.77'' H (28cm x 14cm x 4.5cm) 7.87'' (20cm) Handle Drop Undetachable Strap (Unadjustable) Silver Hardware Zip Closure Fits All Sizes Of Phones Imported", 79.72, '2021-4-30', "ESB-Croc.jpg", 6);

Insert into Product values (9, "Maze Bag", "Major Material: Vegan Leather Dimensions: 9''W × 5.9''H × 3.9''D (23cm x 15cm x 10cm) Shoulder Strap Drop: 17.7'' - 22''(45cm - 56cm) Silver Hardware 1 interior zip pocket and 1 interior slit pocket Fits for iPhone12 Pro Max and all sizes Of Phones which are smaller than it Imported", 89.29, '2021-5-5', "MB.jpg", 7);

Insert into Product values (10, "Mila Shoulder Bag", "Vegan Leather Twill cotton lining 9.4'' W × 2.4'' D × 5.3'' H (24cm x 6cm x 13.5cm) 9.8''(25cm) Shoulder Strap Drop Detachable Strap (Unadjustable) 1 Interior Pocket Gold Hardware Fits All Sizes Of Phones Imported", 79.99, '2021-05-20', "MSB.jpg", 8);

Insert into Product values (11, "Quinn Phone Bag", "Major Material: Croc-Embossed Vegan leather Dimensions: 4.1''W × 7.5''H × 0.8''D (10.3cm x 19cm x 2cm) Fits for all phones smaller than iPhone Pro Max (Screen Size - 6.7'', without phone case)", 60.77, '2021-04-30', "QPB.jpg", 9);

Insert into Product values (12, "Cloud Top Bag", "Vintage Vegan Leather Faux Suede Lining 12'' W × 3.5'' D × 5.5'' H (30.5cm x 9cm x 14cm) 3.5''(9cm) Handle Drop Magnetic Closure Gold Hardware Detachable Strap (Unadjustable) 1 Interior Pocket Fits All Sizes Of Phones Imported", 76.77, '2021-05-20', "CTB.jpg", 10);

Insert into ProductDetail values (1, 1);
Insert into ProductDetail values (1, 7);
Insert into ProductDetail values (2, 6);
Insert into ProductDetail values (2, 9);
Insert into ProductDetail values (3, 3);
Insert into ProductDetail values (3, 5);
Insert into ProductDetail values (3, 6);
Insert into ProductDetail values (4, 1);
Insert into ProductDetail values (4, 2);
Insert into ProductDetail values (4, 7);
Insert into ProductDetail values (5, 4);
Insert into ProductDetail values (5, 6);
Insert into ProductDetail values (5, 7);
Insert into ProductDetail values (6, 1);
Insert into ProductDetail values (6, 9);
Insert into ProductDetail values (7, 3);
Insert into ProductDetail values (7, 5);
Insert into ProductDetail values (7, 6);
Insert into ProductDetail values (8, 6);
Insert into ProductDetail values (8, 8);
Insert into ProductDetail values (9, 1);
Insert into ProductDetail values (9, 3);
Insert into ProductDetail values (9, 5);
Insert into ProductDetail values (10, 4);
Insert into ProductDetail values (10, 8);
Insert into ProductDetail values (11, 5);
Insert into ProductDetail values (11, 6);
Insert into ProductDetail values (11, 8);
Insert into ProductDetail values (12, 7);
Insert into ProductDetail values (12, 10);

create user 'backend'@'%' identified by 'GJM039098103';
grant select, insert, update, delete on Product to 'backend'@'%';
grant select, insert, update, delete on ProductDetail to 'backend'@'%';
grant select on Color to 'backend'@'%';
grant select on BagType to 'backend'@'%';
-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
