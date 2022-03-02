import csv

#  initialise variable
fval = 0
mval = 0
errorval = 0

#  open file and read it line by line
with open("emp-records.txt", 'r') as f:
    csv_reader = csv.reader(f)

#  for each line get the 5th value
    for line in csv_reader:
        gender = (line[5])
        #  test the value to see if it is F, M or other
        if gender == "F":
            fval = fval + 1
        elif gender == "M":
            mval = mval + 1
        else:
            errorval = errorval + 1

print("The number of women are ", fval)
print("The number of men are", mval)
print("Errors, prob the header ", errorval)
