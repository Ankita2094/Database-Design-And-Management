Select  us.School_Name,ss.SAT_Cumulative from `universities`.`us_universities` as `us`
 JOIN `universities`.`sat_score` as `ss`
 ON us.id = ss.Uni_Id where ss.SAT_Cumulative != 'Not Available' order by ss.SAT_Cumulative DESC;