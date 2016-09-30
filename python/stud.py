from tabulate import tabulate
from datetime import datetime

class Student:
	"""docstring for ClassName"""
	def __init__(self,roll_no,name,studDob,studStd,marks):
		self.roll_no =	 roll_no
		self.name	= name
		self.studDob = studDob
		self.studStd = studStd
		self.marks = marks
	def totalMarks(self):
		total = self.marks[0] + self.marks[1] + self.marks[2] + self.marks[3] + self.marks[4]
		return total
	def avgMarks(self,total):
		avg = float(total) / 5
		return avg
	def calculateGrade(self,total):
		totalMark = 500
		percentage = (total*100/float(totalMark))
		if percentage >= 80:
			return "distinction"
		elif percentage >= 60 and percentage < 80:
			return "First Class"
		elif percentage >= 40 and percentage < 60:
			return "Second Class"
		else:
			return "Fail"

	def scholarshipEligibility(self,total):
		totalMark = 500
		percentage = (total*100/float(totalMark))
		if percentage >= 90:
			return 1
		else:
			return 0


totalStudents = input("Enter number of students: ")
i = 0
studentList = []

for i in range(0,totalStudents):
	marks = []
	print "\n"
	roll_no = raw_input("Enter student Roll Number: ")
	studName = raw_input("Enter student name: ")
	studDob = raw_input("Enter student Date of Birth dd/mm/yyyy: ")
	studStd = raw_input("Enter student Class: ")
	print "Enter Mark for Subject1: ",
   	marks.append(input())
   	print "Enter Mark for Subject2: ",
   	marks.append(input())
   	print "Enter Mark for Subject3: ",
   	marks.append(input())
   	print "Enter Mark for Subject4: ",
   	marks.append(input())
   	print "Enter Mark for Subject5: ",
   	marks.append(input())
	stud = Student(roll_no,studName,studDob,studStd,marks)
	studentList.append(stud)

print "\n"
studDetails = []
for i in range (0,len(studentList)):

	total = studentList[i].totalMarks()
	avg = studentList[i].avgMarks(total)
	grade = studentList[i].calculateGrade(total)
	scholarship = studentList[i].scholarshipEligibility(total)
	birthDate = datetime.strptime(studentList[i].studDob, "%d/%m/%Y").strftime('%Y-%m-%d')
	dt = datetime.strptime(birthDate, '%Y-%m-%d')
	age = datetime.now().year - dt.year
	studDetails.append([studentList[i].roll_no,studentList[i].name,studentList[i].studDob,age,studentList[i].studStd,studentList[i].marks[0],studentList[i].marks[1],studentList[i].marks[2],studentList[i].marks[3],studentList[i].marks[4],avg,grade,scholarship])
	
print tabulate(studDetails, headers=["RollNum","Name","Date of Birth", "Age", "Standerd","Mark 1" ,"Mark 2","Mark 3","Mark 4","Mark 5" ,"Average","Grade","Scholarship"])
