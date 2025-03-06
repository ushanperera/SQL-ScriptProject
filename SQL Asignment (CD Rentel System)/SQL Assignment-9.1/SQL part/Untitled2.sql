--------------------SP_Hotel_Reservation_System---------------------------------------------------

-- Stored Procedures to Display the Hotel Details For a given Name

CREATE PROC sp_showhoteldetails
@Name dataTypeName
As
BEGIN
IF EXISTS (SELECT * FROM tlbHotel WHERE Name=@Name)
BEGIN
PRINT 'Hotel Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given Hotel Name'
RETURN 1
END

-- Stored Procedures to Display the Guest Details For a GuestID

CREATE PROC sp_showguestdetails
@GuestID dataTypeGuestID
As
BEGIN
IF EXISTS (SELECT * FROM tlbGuest WHERE GuestID=@GuestID)
BEGIN
PRINT 'Guest Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given GuestID'
RETURN 1
END


-- Stored Procedures to Display the Reservation Details For a ReservationID

CREATE PROC sp_showreservationdetails
@ReservationID dataTypeReservationID
As
BEGIN
IF EXISTS (SELECT * FROM tlbReservation WHERE ReservationID=@ReservationID)
BEGIN
PRINT 'Reservation Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given ReservationID'
RETURN 1
END

-- Stored Procedures to Display the Room Details For a RoomNumber

CREATE PROC sp_showroomdetails
@RoomNumber dataTypeRoomNumber
As
BEGIN
IF EXISTS (SELECT * FROM tlbRoom WHERE RoomNumber=@RoomNumber)
BEGIN
PRINT 'Room Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given RoomNumber'
RETURN 1
END

-- Stored Procedures to Display the Invoice Details For a InvoiceNo

CREATE PROC sp_showinvoicedetails
@ InvoiceNo Varchar(10)
As
BEGIN
IF EXISTS (SELECT * FROM Invoice WHERE  InvoiceNo=@ InvoiceNo)
BEGIN
PRINT ' Invoice Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given  Invoice Number'
RETURN 1
END












