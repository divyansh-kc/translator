#!/usr/bin/python
import sys
from googletrans import Translator

def translate(input_string):
    translator = Translator()
    translation = translator.translate(input_string, dest='hi')
    return translation.text

def main():
    input_string = sys.argv[1]
    output = translate(input_string)
    print(output.encode("utf-8"))
    #print(output)

if __name__=="__main__":
    main()

'''
while(1):
    input_string = input()
    if(input_string=="exit"):
        break
    output = translate(input_string)
    print(output)
'''
