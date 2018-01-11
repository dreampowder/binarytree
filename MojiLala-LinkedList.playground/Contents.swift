//: Playground - noun: a place where people can play

import UIKit

//Serdar Coskun
var str = "Hello, playground 🥃"

class Node{
    var value:Int!
    var nextNode:Node?
    var parent:Node?
    
    init(value:Int) {
        self.value = value
    }
    
    func addNode(node:Node){
        if let childNode = self.nextNode{
            childNode.addNode(node:node)
        }else{
            node.parent = self
            self.nextNode = node
        }
    }
    
    func isLinkedList()->Bool{
        return (parent != nil)
    }
    
    func printDescription(){
        print("\(self.value ?? 0)")
        guard let nextNode = self.nextNode else{
            return
        }
        nextNode.printDescription()
    }
    
    func findChildNode(node:Node) -> Node?{
        guard let childNode = self.nextNode else {
            return nil //child not found
        }
        if childNode.value != node.value{
            return childNode.findChildNode(node:node)
        }else{
            return childNode
        }
    }
    
    func doesChildContainsCycle() -> Bool{
        return self.nextNode != nil;
    }
}

func generateChildNodes(values:[Int],rootNode:Node) -> Node{
    for value in values{
        rootNode.addNode(node: Node(value: value))
    }
    return rootNode
}
let rootNode = generateChildNodes(values: [1,5,3,4,5,6,7,8,9,6,4,2], rootNode: Node(value: 0))

rootNode.printDescription()
print("Does Contain ChilNode? \(rootNode.findChildNode(node: Node(value: 2))?.doesChildContainsCycle())")
print("Does Contain ChilNode? \(rootNode.findChildNode(node: Node(value: 5))?.doesChildContainsCycle())")

