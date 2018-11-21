#reut21578XMLgz <- system.file("texts","reut21578.xml.gz", package = "tm")
#(Reuters <- Corpus(ReutersSource(gzfile(reut21578XMLgz)),
#                   readerControl = list(reader = readReut21578XML,
#                                        language = "en_US",
#                                        load = TRUE)))
#reuters21578 <- system.file("texts", "reuters-21578.xml", package = "tm")
#rs <- ReutersSource(reuters21578)
#inspect(Corpus(rs)[1:2])

#reuters <- Corpus(DirSource(reuters21578, pattern = "00001.xml"), 
#                  readerControl = list(reader = readReut21578XMLasPlain))

#cat(content(reuters[[1]]))

data("acq")
data("crude")

crudeTDM <- TermDocumentMatrix(crude, control = list(stopwords = TRUE))
(crudeTDMHighFreq <- findFreqTerms(crudeTDM, 10, Inf))
Data(crudeTDM)[1:10, crudeTDMHighFreq] #doesn't work
