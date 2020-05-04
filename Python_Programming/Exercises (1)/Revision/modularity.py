"""
Temp File is Created to check the modularity, how python script is run durectly from 
python command prompt and how it can be imported as a module and function within 
can be called for specific purpose.
"""
def fun1(url):

    # import sys
    url = "www.helloWorld.com"
    print("url =",url)
    print('inside function',__name__)


print('outside function',__name__)

