-- Cleansed DIM_Calendar --

  SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS WeekNo, 
  [EnglishMonthName] AS Month, 
  Left([EnglishMonthName], 3) AS MonthShort -- Useful for front end date navigation and front end graphs.
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [dbo].[DimDate] 
WHERE 
  CalendarYear >= 2022
