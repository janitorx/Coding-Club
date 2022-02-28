
T = readtable('emp_records.txt','PreserveVariableNames',true);
num_of_rows = height(T);
disp(num_of_rows);
Gender_table = T.Gender;
mvalue=0;
fvalue=0;
ovalue=0;

for row = 1 : num_of_rows

   test_value = Gender_table(row,:);

   if test_value == "M"
       mvalue = mvalue + 1;
   elseif test_value == "F" 
       fvalue = fvalue + 1;
   else
       ovalue = ovalue + 1;
   end
end

disp(mvalue);
disp(fvalue);
disp(ovalue);