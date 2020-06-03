# coding: utf-8
# Your code here!

#list0 = []
list1 = [
        ["SHINAGAWA","TAMACHI"],
        ["OOIMACHI","OOMORI","KAMATA"],
        ["SHIBUYA","IKEBUKURO","TAKADANOBABA","YOYOGI"]
        ]

#print(len(list1))

#len(list1):何行あるか 3
#len(list1[0]):上から0番目の配列の長さ 2
#これを組み合わせると。。。

for i in range(len(list1)):
    for j in range(len(list1[i])):
        print(list1[i][j]),
    print("\n")
    
#iをlen(list1)繰り返せ → iを3回繰り返せ
#繰り返し中にjをlen(list1[i])繰り返せ → jをlist1[i]回繰り返せ → iが0のときは0番目の配列の長さ繰り返せ → 2回繰り返せ
#つまり、こういうこと
#iが0のときjは上から0番目の長さ分jをループさせる、0のとき2回繰り返し
#i:0 j:2, i:1 j:3, i:2 j:4
