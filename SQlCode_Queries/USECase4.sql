Select add.State, us.School_Name,add.City from `universities`.`us_universities` as `us`
 JOIN `universities`.`address` as `add`
 ON us.id = add.Univ_Id order by us.School_Name ASC limit 10;