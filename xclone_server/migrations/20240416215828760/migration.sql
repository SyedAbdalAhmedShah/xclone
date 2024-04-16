BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "posts" (
    "id" serial PRIMARY KEY,
    "caption" text NOT NULL,
    "imageUrl" text NOT NULL,
    "type" integer NOT NULL,
    "audience" integer NOT NULL,
    "reply" integer NOT NULL,
    "userId" integer NOT NULL,
    "username" text NOT NULL,
    "profileImageUrl" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" serial PRIMARY KEY,
    "email" text NOT NULL,
    "username" text NOT NULL,
    "handle" text NOT NULL,
    "bio" text NOT NULL,
    "profileImageUrl" text NOT NULL,
    "profileBannerUrl" text NOT NULL,
    "followerCount" integer NOT NULL,
    "followingCount" integer NOT NULL
);


--
-- MIGRATION VERSION FOR xclone
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('xclone', '20240416215828760', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240416215828760', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
