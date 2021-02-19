SET /A i = 1349
:loop 

IF %i%==1357 GOTO END 
.>%i%.txt
SET /A j = %i% - 1000
(
  echo state={
  echo     id=%j%
  echo     name="STATE_%i%"
  echo     manpower = 1
  echo     state_category = town
  echo     history = {
  echo         buildings = {
  echo             infrastructure = 1
  echo             arms_factory = 1
  echo             industrial_complex = 1
  echo         }
  echo     }
  echo     provinces = {
  echo         PROVINCES
  echo     }
  echo }
) > %i%.txt
SET /a i=%i%+1 
GOTO :LOOP 
:END
PAUSE