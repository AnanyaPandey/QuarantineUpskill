"""
Temp File is Created to check the modularity, how python script is run durectly from 
python command prompt and how it can be imported as a module and function within 
can be called for specific purpose.
"""
def fun1(url):
"""
Info : This fuction is to check how modularity works

Args :  It takes one variable, that can be either string or number 
    
REturns : This function doesnt return any object. just prints the information to verify the functionality
"""
    import sys
    url = sys.args[1]
    print('inside function')
    print("url =",url)

    if __name__ == "__main__":
        print("Name is Main")
