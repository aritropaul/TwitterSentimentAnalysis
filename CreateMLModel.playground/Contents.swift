import Cocoa
import CreateML

let data = try MLDataTable(contentsOf: URL(fileURLWithPath:"/Users/aritropaul/Documents/Codes/iOS/Playgrounds/twitter-sanders-apple3.csv" ))
let (training_data,test_data) = data.randomSplit(by: 0.9)

let classifier = try MLTextClassifier(trainingData: training_data, textColumn: "text", labelColumn: "class")

let metrics = classifier.evaluation(on: test_data)
print(metrics.classificationError)

try classifier.prediction(from: "Nigga this is lit")
try classifier.write(toFile: "Users/aritropaul/Documents/Codes/iOS/Playgrounds/TwitterAnalysis")
