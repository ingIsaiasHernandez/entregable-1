CREATE TABLE "user" (
  "id_user" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(25) UNIQUE NOT NULL,
  "lastname" varchar(30) UNIQUE NOT NULL,
  "email" varchar(30) UNIQUE NOT NULL,
  "password" varchar(30) UNIQUE NOT NULL,
  "age" int UNIQUE NOT NULL,
  "role" int NOT NULL,
  "courses" int NOT NULL
);

CREATE TABLE "courses" (
  "id_curses" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar(25) NOT NULL,
  "description" varchar(25) NOT NULL,
  "level" int NOT NULL,
  "teacher" int NOT NULL
);

CREATE TABLE "teacher" (
  "id_teacher" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_role" int NOT NULL,
  "name" varchar(25) NOT NULL,
  "url" varchar(50) NOT NULL
);

CREATE TABLE "level_curse" (
  "id_level" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "level" varchar(25) UNIQUE NOT NULL
);

CREATE TABLE "video_courses" (
  "id_video" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "categories" int NOT NULL,
  "title" varchar(25) NOT NULL,
  "url" varchar(50) NOT NULL
);

CREATE TABLE "categories" (
  "id_categories" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(25) NOT NULL
);

CREATE TABLE "roles" (
  "id_role" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar(20) NOT NULL
);

ALTER TABLE "roles" ADD FOREIGN KEY ("id_role") REFERENCES "user" ("role");
