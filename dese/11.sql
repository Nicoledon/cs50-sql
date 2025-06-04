SELECT name ,per_pupil_expenditure,graduated from schools Join graduation_rates
ON school_id  = schools.id Join expenditures ON expenditures.district_id =
schools.district_id order by per_pupil_expenditure DESC , name ;