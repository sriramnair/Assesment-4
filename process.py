log_file = open("um-server-01.txt")
# this is opening a comma separated file

def sales_reports(log_file):
    #This is creating a function in which the opened file is passed as a parameter
    for line in log_file:
        #this is looping through each row in the file
        line = line.rstrip()
        #This line removes any trailing characters
        day = line[0:3]
        #prints the first three columns of the data frame
        if day == "Tue":
            print(line)
        # checks if the day is equal to tuesday then print the line    


sales_reports(log_file)

def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)
