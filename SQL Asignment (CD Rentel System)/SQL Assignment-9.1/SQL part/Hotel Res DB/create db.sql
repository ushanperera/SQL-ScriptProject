CREATE DATABASE HOTEL_RES
GO
USE  HOTEL_RES
GO

Create Table Hotel(Name Varchar(20) primary key,
			Add_No Varchar(4), Street Varchar(10), City Varchar(20), State Varchar(20),
			PostalCode Int, WebAddress Varchar(30),Phone InT,Email 					Varchar(30), SwimmingPool char(3), HeatingSystem char(3))

GO

Create Table Guest (GuestID  Varchar(5) primary key,
			IdentificationNo Varchar(10) Not null,
			FirstName Varchar(10) Not null,
			LastName Varchar(15) Not null,
			CreditCardNo int Not null,
			ExpiryDate DateTime, CardType Varchar(10), HouseNo Varchar(5),
			StreetName Varchar(10), City Varchar(10), Mobile int, WorkDone char(3),
			HomePhone int, Email Varchar(20),TypeOfStay Varchar(10),
			CheckInDate DateTime, CheckInTime DateTime, 
			Name Varchar(20) References Hotel (Name))

Create Table Reservation (ReservationID Varchar(6) primary key,
				ReservationDate DateTime Not null,
				ArrivalDate DateTime Not null,
				DepatureDate DateTime,CancellationNo int,CancelDate DateTime,
				GuestID  Varchar(5) References Guest(GuestID))

Create Table Room (RoomNumber  Varchar(4) primary key,
			RoomType Varchar(10) Not null,
			NoOfBeds int, CostPerDay Money,Smoking char(1),HairDryer char(1),
			TVFacility char(1), MiniBar char(1), BathroomType char(2), Availability char(1),
			ReservationID Varchar(6) References Reservation(ReservationID))

Create Table Invoice (InvoiceNo Varchar(10) primary key,
			RestaurantCharges Money, BarCharges Money, ShopCharges Money,
			SpaCharges Money, LaundaryCharges Money,
			PayAmount Money Not null,
			ReservationID Varchar(6) References Reservation(ReservationID))
