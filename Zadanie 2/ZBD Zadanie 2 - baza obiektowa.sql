    CREATE TYPE Hall_type
    AS OBJECT(
       Hall_id NUMBER(7),
       Hall_number NUMBER(7),
       Number_of_seats NUMBER(7),
       MEMBER FUNCTION Get_number_of_seats RETURN NUMBER);
    /

    CREATE TYPE BODY Hall_type AS
       MEMBER FUNCTION Get_number_of_seats RETURN NUMBER IS
       BEGIN
          RETURN (Number_of_seats);
       END;
    END;
    /

    CREATE TYPE Seat_type
    AS OBJECT(
       Seat_id NUMBER(7),
       Seat_number NUMBER(3),
       Seat_state VARCHAR2(7),
       Hall Hall_type,
       MEMBER FUNCTION Get_seat_state RETURN VARCHAR2,
       MEMBER PROCEDURE Set_seat_state (new_state VARCHAR2));
    /

    CREATE TYPE BODY Seat_type AS
       MEMBER FUNCTION Get_seat_state RETURN VARCHAR2 IS
       BEGIN
          RETURN (Seat_state);
       END;
       MEMBER PROCEDURE Set_seat_state(new_state VARCHAR2) IS
       BEGIN
          Seat_state := new_state;
       END;
    END;
    /

    CREATE TYPE Movie_type
    AS OBJECT(
       Movie_id NUMBER(7),
       Movie_name VARCHAR2(25),
       Duration NUMBER(7),
       MEMBER FUNCTION Get_movie_info RETURN VARCHAR2);
    /

    CREATE TYPE BODY Movie_type AS
       MEMBER FUNCTION Get_movie_info RETURN NUMBER IS
       BEGIN
          RETURN (Movie_name ||' - '|| Duration || ' minutes');
       END;
    END;
    /

    CREATE TYPE Screening_type
    AS OBJECT(
       Id_seansu NUMBER(7),
       Movie Movie_type,
       Hall Hall_type,
       Price NUMBER(7),
       Screening_Date DATE);
    /

    CREATE TYPE Ticket_type
    AS OBJECT(
       Id_seansu NUMBER(7),
       Screening Screening_type,
       Buyer VARCHAR2(25),
       Sold_date DATE,
       MEMBER PROCEDURE Set_sold_date (new_sold_date DATE));
    /

    CREATE TYPE BODY Ticket_type AS
       MEMBER PROCEDURE Set_sold_date(new_sold_date VARCHAR2) IS
       BEGIN
          Sold_date := new_sold_date;
       END;
    END;
    /
    
   CREATE TABLE Hall_table OF Hall_type; 
   CREATE TABLE Seat_table OF Seat_type; 
   CREATE TABLE Movie_table OF Movie_type; 
   CREATE TABLE Screening_table OF Screening_type; 
   CREATE TABLE Ticket_table OF Ticket_type; 


   --INSERT INTO Hall_table VALUES (1, 1, 50);
   -- INSERT INTO Seat_table VALUES (1, 1, 'A', Hall_type(1,1,50));

    --SELECT ht.Number_of_seats_in_room() from Hall_table ht;