(ns simplejdbc.core
  (:require [korma.db :refer :all]
            [korma.core :refer :all]))

(defn foo
  "I don't do a whole lot."
  [x]
  (println x "Hello, World!"))


(defdb db (postgres {:classname "org.postgresql.Driver"
                     :subprotocol "postgresql"
                     :subname "//localhost:5432/clojure"
                     :user "postgres"
                     :password "postgres"}))

(defentity employee)

(select employee)

(println (select employee))