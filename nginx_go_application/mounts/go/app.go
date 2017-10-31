package main

import (
	"net/http"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func getIndex(c echo.Context) error {
	return c.String(http.StatusOK, "[Go] getIndex().\n")
}

func getProxy(c echo.Context) error {
	return c.String(http.StatusOK, "[Go] getProxy().\n")
}

func postProxy(c echo.Context) error {
	return c.String(http.StatusOK, "[Go] postProxy().\n")
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", getIndex)
	e.GET("/proxy", getProxy)
	e.GET("/proxy", postProxy)

	e.Logger.Fatal(e.Start(":5000"))
}
