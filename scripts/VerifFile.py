#!/usr/bin/env python

import os
import sys
import getopt

def verifFiles(root, prefix, num):
	print("PWD: " + os.getcwd())
	if not os.path.isdir(root):
		sys.stderr.write("Root dir does not exist at: " + root)
		sys.exit(1)
	for i in range(int(num)):
		if not os.path.exists(root + "/" + prefix + str(i)):
			return (False, root + "/" + prefix + str(i))
	return (True, "")

def main():
	try:
		options,remainders = getopt.getopt(sys.argv[1:], "r:p:n:")
	except Exception as e:
		print("Error parsing command line of type: " + e.__class__.__name__)
		print("Usage: VerifFile -r <root> -p <prefix> -n <num>")
		sys.exit(1)
	
	root = ""
	prefix = ""
	num = 0

	for opt, arg in options:
		if opt == "-r":
			root = arg
		if opt == "-p":
			prefix = arg
		if opt == "-n":
			num = int(arg)
	retval = verifFiles(root, prefix, num)
	if not retval[0]:
		print("Not matched at " + retval[1])
		sys.exit(1)
	print("Success .... All files verified")

def nonInteractive():
	retVal = verifFiles(os.path.dirname(os.path.realpath(__file__)) + "/../files/", "File_", 65560)
	if not retVal[0]:
		sys.stderr.write("Failed at: " + retVal[1])
		sys.exit(1)
	sys.exit(0)

if __name__ == "__main__":
	nonInteractive()
	main()
	
