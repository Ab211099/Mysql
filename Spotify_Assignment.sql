create database Spotify;
use Spotify;

-- Create a table for User
create table  User(
userid int,
userName varchar(40),
playlistid int auto_increment primary key
);

-- create table for playlist
create table Playlist(
playlistId int,
playlistName varchar(30),
foreign key (playlistId) references User(playlistid)
);

-- Create table for tracks
create table Tracks(
trackid int,
trackName varchar(30),
playlistID int,
foreign key (playlistID) references Playlist(playlistId)
);


Insert into User(userid,userName)
Values(1,"Abhi");

Insert into Playlist(playlistId,playlistName)
Values(1,"Divine"),
(2,"MC stan");


Insert into Tracks(trackid,trackName,playlistID)
Values(12,"satya",1),
(13,"Bazigaar",2);

select *
from Pla left JOIN Playlist2
ON User.userid = Playlist2.playlisId2
where User.userid = 1;

select * from Playlist;

desc User;
select * from User;
desc Tracks;
select * from Tracks;
select * from Playlist;
desc Playlist;


select *
from Tracks left JOIN Playlist
ON Tracks.playlistID = Playlist.playlistId
where Playlist.playlistId = 2;