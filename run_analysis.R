fea <- read.table('data/features.txt', header=F, stringsAsFactors=F)
data.t <- read.table('data/train/X_train.txt', colClasses=c("numeric"))
data.s <- read.table('data/test/X_test.txt', colClasses=c("numeric"))
names(data.t) <- fea$V2
names(data.s) <- fea$V2
mean.std <- grep('mean|std', fea$V2)
data.t <- data.t[, mean.std]
data.s <- data.s[, mean.std]
data.t$type <- 'train'
data.s$type <- 'test'
ysub.t <- read.table('data/train/subject_train.txt', colClasses=c("integer"))
ysub.s <- read.table('data/test/subject_test.txt', colClasses=c("integer"))
data.t$subject <- ysub.t[,1]
data.s$subject <- ysub.s[,1]
y.t <- read.table('data/train/y_train.txt', colClasses=c("numeric"))
y.s <- read.table('data/test/y_test.txt', colClasses=c("integer"))
activity <- read.table('data/activity_labels.txt', header=F, stringsAsFactors=F)
