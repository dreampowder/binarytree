//: Playground - noun: a place where people can play

import UIKit

print("Hello 😄")

class Node{
    var value:Int!
    var childs:[ChildType:Node]
    
    init(value:Int) {
        self.value = value
        childs = [:]
    }
    
    enum ChildType{
        case left
        case right
    }
    
    func addChild(node:Node) -> Node{
        let type:ChildType = (node.value < self.value) ? .left : .right
        if node.value == self.value{
            return self;
        }
        else if let childNode = self.childs[type] {
            return childNode.addChild(node:node)
        }else{
            self.childs[type] = node
            return node
        }
    }
    
    func printNode() -> String{
        return "[Value: \(self.value) - Left: \(self.childs[.left]?.printNode() ?? "") - Right: \(self.childs[.right]?.printNode() ?? "")]"
    }
    
    func searchNode(node:Node) -> Node?{
        if self.value == node.value{
            return self
        }else{
            let type:ChildType = (node.value < self.value) ? .left : .right
            if let childNode = self.childs[type]{
                return childNode.searchNode(node:node) //Search deeper
            }else{
                return nil //Current node is at the end of the search
            }
        }
    }
    
    func isBinaryTree() -> Bool{
        return self.childs.count > 0
    }
}

func generateSampleSet(valueArray:[Int], rootNode:Node) -> Node{
    var sortedArray =  valueArray
    for index in 0...valueArray.count - 1{
        rootNode.addChild(node: Node(value: sortedArray[index]))
    }
    return rootNode
}

let rootNode = Node(value: 100)

generateSampleSet(valueArray: [5,1,2,10,50,68,23,54,23,65], rootNode: rootNode)

func checkIfBinaryTree(rootNode:Node, node:Node){
    if let node = rootNode.searchNode(node:node) {
        let contentString:String = node.isBinaryTree() ? "" : "not"
        print("This is \(contentString) a binary Tree")
    }else{
        print("This is not a binary tryy")
    }
}

checkIfBinaryTree(rootNode:rootNode, node:Node(value:65))



