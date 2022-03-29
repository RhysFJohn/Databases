# Bookmark Manager

## User Story
> As a time-pressed user
> so that I can quickly go to the web sites I regularly visit
> I would like to see a list of bookmarks

> As a user
> so I can store a bookark data for later retrieval
> I want to add a bookmark to Bookmark Manager
<hr>

## Domain Model

<img src="Flowchart.jpg">

### Set up Database

#### To set up database, follow instructions below

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`