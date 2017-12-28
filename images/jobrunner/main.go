package main

import (
    "database/sql"
    "fmt"
    "log"
    "os"

    _ "github.com/go-sql-driver/mysql"
)

var db *sql.DB

func getDSN() string {
    return os.Getenv("MYSQL_USERNAME") + ":" + os.Getenv("MYSQL_PASSWORD") +
        "@tcp(" + os.Getenv("MYSQL_HOST") + ")/" + os.Getenv("MYSQL_DATABASE")
}

func main() {
    var err error
    db, err = sql.Open("mysql", getDSN())
    if err != nil {
        log.Fatal(err)
    }

    defer db.Close()

    err = db.Ping()
    if err != nil {
        log.Fatal(err)
    }
    fmt.Println("Done")
}
