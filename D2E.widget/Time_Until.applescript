on run (argument)
	set endDate to date (item 1 of argument)
	set cDate to current date
	
	set diff to  endDate - cDate
	set daysDiff to diff / 86400
	set daysDiff to round of daysDiff rounding down

	return daysDiff as string
end run
