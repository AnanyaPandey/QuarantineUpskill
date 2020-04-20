import sys
def fetch_words(url):
    from urllib.request import urlopen
    story = urlopen(url)
    story_words = []
    for eachline in story:
        line_words = eachline.decode('utf-8').split()
        for eachword in line_words: 
            story_words.append(eachword)
    return(story_words)

def print_items(items):
    for each in items:
        print(each)

def main(url):
    words = fetch_words(url)
    print_items(words)

if __name__ == '__main__':
    main(sys.argv[1])

