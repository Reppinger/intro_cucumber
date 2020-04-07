USE [master]
GO

/****** Object:  Login [hero_worshipper]    Script Date: 4/7/2020 12:26:21 PM ******/
DROP LOGIN [hero_worshipper]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [hero_worshipper]    Script Date: 4/7/2020 12:26:21 PM ******/
CREATE LOGIN [hero_worshipper] WITH PASSWORD=N'HJxokpRbWiDHS8bfCkRgKmBLe3uJB06z+XtXNjIthik=', DEFAULT_DATABASE=[TourOfHeroes], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [hero_worshipper] DISABLE
GO


