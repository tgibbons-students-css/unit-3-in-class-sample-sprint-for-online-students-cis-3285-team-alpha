﻿USE Sermo;

CREATE TABLE room
(
	id INTEGER PRIMARY KEY NOT NULL,
	name NVARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE message
(
	id BIGINT PRIMARY KEY NOT NULL,
	room_id INTEGER NOT NULL,
	[text] NTEXT NOT NULL,
	author_name NVARCHAR(50) NOT NULL,
	FOREIGN KEY (room_id) REFERENCES room(id)
);



