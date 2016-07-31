@echo off
color 5F
cls
echo The following quiz has five questions.
echo Each questions has three choices.
echo Choose the letter of the correct choice.
echo 1. What is my first name?
echo A. Renee B. Thea C. Noel
set /p num1=Choice:
color 1F
echo 2. What is my last name?
echo A. Lee B. Co C. Leano
set /p num2=Choice:
color 2F
echo 3. How old am I?
echo A. 21 B. 23 C. 18
set /p num3=Choice:
color 4F
echo 4. What month is my birthday on?
echo A. September B. January C. November
set /p num4=Choice:
color 3F
echo 5. What is my favorite number?
echo A. 11 B. 23 C. 16
set /p num5=Choice:
color 0F
set /a total=0
if "%num1%"=="B" set /a total +=2
if "%num2%"=="A" set /a total +=2
if "%num3%"=="B" set /a total +=2
if "%num4%"=="C" set /a total +=2
if "%num5%"=="C" set /a total +=2
echo Your total is %total%.
if "%total%"=="10" echo Congrations! You got all the questions right!
if "%total%"=="10" GOTO gotall
if "%total%"=="0" GOTO gotnone
echo The numbers you got correct are:
if "%num1%"=="B" echo 1
if "%num2%"=="A" echo 2
if "%num3%"=="B" echo 3
if "%num4%"=="C" echo 4
if "%num5%"=="C" echo 5
:gotnone
echo The numbers you got wrong are:
if not "%num1%"=="B" echo 1 the correct answer is B.
if not "%num2%"=="A" echo 2 the correct answer is A.
if not "%num3%"=="B" echo 3 the correct answer is B.
if not "%num4%"=="C" echo 4 the correct answer is C.
if not "%num5%"=="C" echo 5 the correct answer is C.
:gotall
pause