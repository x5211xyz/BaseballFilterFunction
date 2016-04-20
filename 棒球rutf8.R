x <- read.csv(paste0("D:/棒球data處理區/","output0411",".csv"))
y=x[,16]


##直接grep只能針對一列 不能對全部
grep(".*[，].*[，].*[，].*[，]",y,value=TRUE)

###出局相關結果

##出局 12287
outall<=grep("[出][局]",y,value=TRUE)

##出局結尾 9405筆
grep("[出][局]$",y,value=TRUE)
outend<-grep("[出][局]$",y)

##[ ? ]出局-出局結尾
grep("[出][局]",y[-outend],value=TRUE)
grep("[一][出][局]",y[-outend],value=TRUE)
grep("[二][出][局]",y[-outend],value=TRUE)
grep("[三][出][局]",y[-outend],value=TRUE)

##出局...盜上 16筆
grep("[出][局].*[盜][上]",y,value=TRUE)

##打...盜 153筆(含有盜壘73筆)
out2<-grep("[打].*[盜]",y,value=TRUE)

## 打盜 19筆
grep("[打][盜]",y,value=TRUE)

## 安打...盜 114筆
grep("[安][打].*[盜]",y,value=TRUE)

##隨後 15筆
grep("[隨][後]",y,value=TRUE)

##暴投 201筆
grep("[暴][投]",y,value=TRUE)

##盜壘 288筆
grep("[盜][壘]",y,value=TRUE)
grep("[盜][壘][成][功]",y,value=TRUE)

###單一字眼判斷區

##盜上　73筆
out1<- grep("[盜][上]",y,value=TRUE)
grep("[盜].*[出][局]",y,value=TRUE)
grep("[盜][壘][失][敗].*[出][局]",y,value=TRUE)

##盜壘　288筆
grep("[盜][壘]",y,value=TRUE)


##資料輸出
write.table(out1, file="outex1.txt")
write.table(out2, file="打盜.txt")

zz=x[,16]

z<-
grep(".*[，].*[，].*[，].*[，]",y,value=TRUE)

grep(".*[:].*[)][:][(]",y,value=TRUE)

head(zz)
##zz[6]=grep("[盜][壘]",y,value=TRUE)[6]


 zz[  grep("[盜][壘]",y)]=  grep("[盜][壘]",y,value=TRUE)

ZZ[哪一列]=新的結果列





bb<-grep("[保][送]",y,value=TRUE)
bb

##不可以+value 因為R是向量運算

##bbwhere = y裡：四壞球保送 的樣本
bbwhere<-grep("[:][四][壞][球][保][送]$",y)
bbwhere

##cc ＝ y-(：四壞球保送)
cc=y[-bbwhere]
cc

##從cc裡取出的觸身球保送陣列
ccwhere<-grep("[:][觸][身][球][保][送]$",cc)
ccwhere

##dd = y -(:四壞球保送$)-(:觸身球保送$) 25560筆 需過濾
dd=cc[-ccwhere]

保送
	保送...有人
	保送,
	
	需拆
	保送...盜
	盜...保送
##保送狀況 1168筆
grep("[保][送]",dd,value=TRUE)

##保送...有人（含保送...盜壘＆盜壘...保送）603筆
grep("[保][送].*[有][人]",dd,value=TRUE)

##保送,
grep("[保][送][，]",dd,value=TRUE)

##以下需拆
##保送後盜壘狀況 42筆
grep("[保][送].*[盜]",dd,value=TRUE)
##盜壘再保送 7筆
grep("[盜].*[保][送]",dd,value=TRUE)



dd
ee=dd[,16]
ee
grep("[保][送][，]",y,value=TRUE)