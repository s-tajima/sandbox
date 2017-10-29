package main

import (
	"net/http"

	"github.com/labstack/echo"
	"github.com/labstack/echo/middleware"
)

func getIndex(c echo.Context) error {
	return c.String(http.StatusOK, "[Go] getIndex().")
}

func getProxy(c echo.Context) error {
	return c.String(http.StatusOK, "[Go] getProxy().")
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", getIndex)
	e.GET("/proxy", getProxy)

	e.Logger.Fatal(e.Start(":5000"))
}
