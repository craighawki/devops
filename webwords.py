from urllib.request import urlopen
with urlopen('http://www.apple.com') as story:
    story_words = []
    Count = 0
    for line in story:
        line_words = line.decode('utf-8').split()
        for word in line_words:
            if 'a' in word:
                Count += 1
                story_words.append(word)
                print(word[0:75])
print("There are this many:", Count)