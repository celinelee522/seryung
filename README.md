# seryung

Visual studio 2015 
C


0.Read data files
1.display statistics
2.Top 5 most tweeted words
3.Top most tweeted users
4.Find users who tweeted a word
5.Find all people who are friends of the above users
6.Delete all mentions of a word
7.Delete all users who mentioned a word
8.Find strongly connected components
9.Find shortest path from a given user
99.Quit
Select Menu


0. Read data files 에선 UTP-8 data를 parsing하여 각 각의 entity에 대한 배열에 나눠 저장하여 tuple 수를 return
1. 연산자를 이용하여 값 계산
4. 특정 단어를 tweet한 user를 찾는다.
5. 4번에서 return한 user에 대한 친구 (user - > friend)



Documentation 

switch 문으로 case 99에서는 exit()함수를 써서 닫아주는 것 생각.


외부 data를 source code내로 가져와야 하는데 이것때문에 많이 헤멨다.
#include ("C:\Users\세령\Desktop\dataset.zip\cp949.user.txt")
를 쓰는 건지 #include ("users.txt",datadump);
이렇게 쓰는 건지 잘 몰랐다. datadump는 array

일단 그래서 디버깅 실패했고
머릿속으로 알고리즘은 
datadump라는 char 1차원 배열에 모든 char를 다 받아서 이걸 users와 userid로 파싱을 해야겠다 생각했다.
\n 나올때마다 구분해줘서 dataset이라는 2차원 배열에 일단 저장해주고 얘네 배열 column%4==0이면 dataid에다가 저장하고
column%4==2면 username 2차원 배열에 저장하는 것으로 생각

