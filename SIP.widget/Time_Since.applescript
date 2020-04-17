on run (argument)
	set startDate to date (item 1 of argument)
	set cDate to current date
	
	set diff to cDate - startDate
	set daysDiff to diff / 86400
	set daysDiff to round of daysDiff rounding down

	return daysDiff as string
end run
