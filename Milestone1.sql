
use abc;
create table Player (
	Playerid INT primary key,
	username VARCHAR(50),
	password VARCHAR(50),
	email VARCHAR(50),
	locked int,
	adminuser  boolean,
	loginattempts INT,
	useronline boolean NOT null,
	hittotal INT,
	misstotal INT,
	highscore INT
);

create table tank (
Tankid INT primary key,
Playerid int,
FOREIGN KEY (Playerid) REFERENCES Player(playerid)
);

create table Game (
Gameid INT  primary key,
gametype boolean,
gamestatus varchar(10)
);

Create table Alien (
Alienid int primary key,
Tankid int,
Missile int,
Foreign key  (Tankid) References tank(Tankid) );

Create table Missile (
missileid int primary key,
tankid int,
Foreign key  (Tankid) References tank(Tankid) );


Create table Session (
Gameid int PRimary key,
Playerid int,
Hit int,
Miss int,
Foreign key (Playerid) References Player(Playerid) );

Create table GameBoard (
Boardid int Primary key,
Gameid int,
Boardnumber int,
Foreign key (Gameid) References Game(Gameid) );


-- insert

INSERT INTO Player(Playerid, username, password, email, locked, adminuser, loginattempts, useronline, hittotal, misstotal, highscore) values (1, 'Gilbertina', 'Wight', 'gwight0@sfgate.com', '161', true, '30', false, '791', '435', '82');
INSERT INTO GameBoard ( Boardid, Gameid, Boardnumber) Values (1 ,1,1 );

Insert into Game ( Gameid, gametype, gamestatus) values (1 , true, 'yes' )
 
 
 
 -- UPDATING
 
UPDATE Player 
 Set Password = 'Hello' 
 Where Playerid =1;


END //
 


