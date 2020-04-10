### Ananya Pandey #### 
### Modularity ####
# mod2 
def fetch_words():
# mod1
	from urllib.request import urlopen
	story = urlopen('http://sixty-north.com/c/t.txt')
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

def main():
	words = fetch_words()
	print_items(words)

if __name__ == '__main__':
	main()