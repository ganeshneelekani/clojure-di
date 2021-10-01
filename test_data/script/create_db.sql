CREATE ROLE clojureuser LOGIN PASSWORD 'password';
GRANT ALL ON SCHEMA public TO clojureuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO clojureuser;

CREATE DATABASE clojure OWNER clojureuser;

\connect clojure;
CREATE SCHEMA IF NOT EXISTS public AUTHORIZATION clojureuser;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO clojureuser;