library("neuralnet")
traininginput <- as.data.frame(runif(500, min=-5, max=5))
trainingoutput <- traininginput^(3)+ sin(traininginput)
trainingdata <- cbind(traininginput,trainingoutput)
colnames(trainingdata) <- c("Input","Output")

net.sqre <- neuralnet(Output~Input,trainingdata, hidden=10,threshold=0.1)
#print(net.sqre)

testdata <- as.data.frame((-5:5)) 
net.results <- compute(net.sqre, testdata) 
ls(net.results)
#print(net.results$net.result)
cleanoutput <- cbind(testdata,(testdata)^(3) + sin(testdata), as.data.frame(net.results$net.result))
colnames(cleanoutput) <- c("Input","Expected Output","Neural Net Output")
print(cleanoutput)

