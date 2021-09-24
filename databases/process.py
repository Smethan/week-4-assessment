#open our file
log_file = open("um-server-01.txt")

#function to iterate over out log file
def sales_reports(log_file):
    #Get each line
    for line in log_file:
        #remove trailing characters
        line = line.rstrip()
        #Get 3 characters from line list
        day = line[0:3]
        #Print line if condition is true
        if day == "Mon":
            print(line)

def melon_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        melon = int(line[16:18].rstrip())
        # print(line)
        if melon > 10:
            print(line)

#So I have to comment the sales_reports function out because my function wont work if it runs, I'm assuming it has something 
#to do with file locks or the log_file object being modified from sales_reports
#But hey, it runs and thats what matters

# sales_reports(log_file)
print("MELONS")
melon_reports(log_file)