class ItemList:
		def __init__(self, list):
			self.NewList = list

		def add(self):
			item = raw_input("Enter item : ")
			self.NewList.append(item)
			print self.NewList

		def delete(self):
			if len(self.NewList) == 0:
				print "Sorry the list is empty"
			else:
				print self.NewList
				c = raw_input("which item to delete?")
				while c in self.NewList: 
					self.NewList.remove(c)
				print self.NewList

		def display(self): 
			if len(self.NewList) == 0:
				print "No items in the list !!"
			else:
				print "This is your list"
				print self.NewList
choice = 1
NewList=[]
myList = ItemList(NewList)
while choice:
	print ("""
	1.Add Item
	2.View Item
	3.Delete Item
	4.Exit
	""")
	choice=raw_input("What would you like to do? ") 
	if choice=="1": 
		myList.add()
	elif choice=="2":
		myList.display()
	elif choice=="3":
		myList.delete() 
	elif choice=="4":
		print("\n Goodbye") 
		exit()
	else:
	  print("\n Not Valid Choice Try again")
	  continue