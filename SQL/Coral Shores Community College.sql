CREATE TABLE books (
  book_id           NUMBER(4) CONSTRAINT book_pk PRIMARY KEY,
  isbn              VARCHAR(120) NOT NULL,
  title             VARCHAR(120) NOT NULL,
  subject_area      VARCHAR(120) NOT NULL,
  author            VARCHAR(120) NOT NULL,
);

CREATE TABLE addresses (
  address_id    NUMBER(4) CONSTRAINT address_pk PRIMARY KEY,
  address1      VARCHAR(120) NOT NULL,
  address2      VARCHAR(120),
  city          VARCHAR(100) NOT NULL,
  state         CHAR(2) NOT NULL,
  country       CHAR(2) NOT NULL,
  postalCode    VARCHAR(16) NOT NULL,
);

CREATE TABLE user_types (
  user_type_id      NUMBER(4) CONSTRAINT user_type_pk PRIMARY KEY,
  position          VARCHAR(120) NOT NULL,
);

CREATE TABLE campuses (
  campus_id      NUMBER(4) CONSTRAINT campus_pk PRIMARY KEY,
  camp_name      VARCHAR(120) NOT NULL,
);


CREATE TABLE users (
  user_id       NUMBER(4) CONSTRAINT user_pk PRIMARY KEY,
  first_name    VARCHAR2( 255 ) NOT NULL,
  last_name     VARCHAR2( 255 ) NOT NULL,
  dob           DATE,
  address_id    NUMBER(4) CONSTRAINT address_id_fk REFERENCES addresses(address_id),
  email         VARCHAR2( 255 ),
  phone         VARCHAR2( 255 ),
  photo         VARCHAR2( 255 ),
  user_type_id  NUMBER(4) CONSTRAINT user_type_id_fk REFERENCES user_types(user_type_id),
  campus_id     NUMBER(4) CONSTRAINT campus_id_fk REFERENCES campuses(campus_id),
);

CREATE TABLE rented_books (
  rent_id       NUMBER(4) CONSTRAINT rented_book_pk PRIMARY KEY,
  book_id       NUMBER(4) CONSTRAINT book_id_fk REFERENCES books(book_id),
  rented_by_id  NUMBER(4) CONSTRAINT user_id_fk REFERENCES users(user_id),
  issued_by_id  NUMBER(4) CONSTRAINT user_id_fk REFERENCES users(user_id),
  date_rented   DATE,
  due_date      DATE
  
);