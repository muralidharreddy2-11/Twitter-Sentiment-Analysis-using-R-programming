


pos.words = scan('C:/Users/Acer/Desktop/twitter/positive-words.txt', what='character', comment.char=';') 
neg.words = scan('C:/Users/Acer/Desktop/twitter/negative-words.txt', what='character', comment.char=';')




pos.words=c(pos.words, 'Congrats', 'prizes', 'prize', 'thanks', 'thnx', 'Grt', 'gr8', 'plz', 'trending', 'recovering', 'brainstorm', 'leader')
neg.words = c(neg.words, 'Fight', 'fighting', 'wtf', 'arrest', 'no', 'not')
