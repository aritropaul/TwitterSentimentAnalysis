import Cocoa
import CoreML
import NaturalLanguage

let compileURL = try  MLModel.compileModel(at: URL(fileURLWithPath: "/Users/aritropaul/Documents/Codes/iOS/Playgrounds/ML Playground/TwitterAnalysis.mlmodel"))
let model = try MLModel(contentsOf: compileURL)

let textClassifier = try NLModel(mlModel: model)
print(textClassifier.predictedLabel(for: "This is awesome")!)
