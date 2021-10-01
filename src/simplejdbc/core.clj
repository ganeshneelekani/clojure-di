(ns simplejdbc.core
  (:require [korma.db :refer :all]
            [korma.core :refer :all]))

(defn foo
  "I don't do a whole lot."
  [x]
  (println x "Hello, World!"))


(defdb db (postgres {:db "clojure"
                     :user "postgres"
                     :password "postgres"}))

(defentity employee)

(println (select employee))

(println (select employee
                 (fields :empid :firstname)))

(println (select employee
                 (where {:empid 940761})))