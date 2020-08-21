CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  note_name TEXT NOT NULL,
  content TEXT NOT NULL,
  folder_id INTEGER
    REFERENCES folders(id) ON DELETE CASCADE NOT NULL,
  date_created TIMESTAMPTZ DEFAULT now() NOT NULL
);