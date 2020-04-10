### Ananya Pandey #### 
### Modularity ####
# mod2 
def fetch_words(url):
""" Fetch a list of words from a URL 

	Args : 
		Url : The url of a  utf8 document

	Returns :
		A list of strings containing the words from the document

"""
# mod3
	import sys
# mod1
	from urllib.request import urlopen
	story = urlopen(url)
	story_words = []
	for eachline in story:
		line_words = eachline.decode('utf8').split()
		for eachword in line_words: 
			story_words.append(eachword)
	story.close()
	return(story_words)

def print_items(items):
	for each in items:
			print(each)

def main(url):
	words = fetch_words(url)
	print_items(words)

if __name__ == '__main__':
	main(sys.argv[1])

# http://sixty-north.com/c/t.txt