class ItemList:
		def __init__(self, list):
			self.a = list

		def add(self):
			item = raw_input("Enter item : ")
			self.a.append(item)
			print self.a

		def delete(self):
			if len(self.a) == 0:
				print "Sorry the list is empty"
			else:
				print self.a
				c = raw_input("which item to delete?")
				while c in self.a: 
					self.a.remove(c)
				print self.a

		def display(self): 
			if len(self.a) == 0:
				print "No items in the list !!"
			else:
				print "This is your list"
				print self.a


ans = 1
a=[]
myList = ItemList(a)
while ans:
	print ("""
	1.Add Item
	2.View Item
	3.Delete Item
	4.Exit
	""")
	ans=raw_input("What would you like to do? ") 
	if ans=="1": 
		myList.add()
	elif ans=="2":
		myList.display()
	elif ans=="3":
		myList.delete() 
	elif ans=="4":
		print("\n Goodbye") 
		exit()
	else:
	  print("\n Not Valid Choice Try again")
	  continue