
-- Create Foreign KEy for us_universities

ALTER TABLE `universities`.`us_universities` 
ADD INDEX `Predominant_degrees_idx` (`Predominant_degrees` ASC) VISIBLE,
ADD INDEX `Highest_Degrees_Awarded_idx` (`Highest_Degrees_Awarded` ASC) VISIBLE,
ADD INDEX `Ownership_idx` (`Ownership` ASC) VISIBLE;
;
ALTER TABLE `universities`.`us_universities` 
ADD CONSTRAINT `Predominant_degrees`
  FOREIGN KEY (`Predominant_degrees`)
  REFERENCES `universities`.`predominantdegree` (`PredominantDegree_Id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `Highest_Degrees_Awarded`
  FOREIGN KEY (`Highest_Degrees_Awarded`)
  REFERENCES `universities`.`higherdegree` (`HigherDegree_Id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `Ownership`
  FOREIGN KEY (`Ownership`)
  REFERENCES `universities`.`ownership` (`Ownership_Id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;




ALTER TABLE `universities`.`sat_score` 
ADD CONSTRAINT `Uni_Id`
  FOREIGN KEY (`Uni_Id`)
  REFERENCES `universities`.`us_universities` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
