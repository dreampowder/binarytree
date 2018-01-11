# binarytree

Repository İçerikleri: 

**Mojilala-BinaryTree.playground :** İkili binary tree'lerin oluşturulduğu ve içerisinde aratılan herhangi bir elemanın da bir binary tree olup olmadığını anladığımız kod bloğu

Kod bloğu içerisindeki fonksiyonlar: 

1. ```let node = Node(value:Int)``` ile child elemanları boş bir node oluşturuluyor.
2. ```node.addChild(node:Node)``` ile node'a yeni child node ekleniyor. Burada eğer eklenecek değer ana node value'sundan küçük ise ```.left``` , büyük ise ```.right``` değerleri ile set ediliyor
3. ```node.searchNode(node:Node)``` ile verilen değer tree içerisinde aratılıp getirliyor, return value optional olduğu için bulunamaz ise nil değeri geliyor
4. ```node.isBinaryTree()``` çağrısı ile de ilgili node'un eğer her iki child değeri de nil ise ```false``` değeri yoksa ```true``` değeri getiriliyor

**MojiLala-LinkedList.playground :** Linked list içerisinde herhangi bir elemanın bir cycle içerip içermediği araştırılıt

1. ```let node = Node(value:Int)``` ile child elemanları boş bir node oluşturuluyor.
2. ```node.addNode(node:Node)``` ile ilgili node'a bir chil ekleniyor. Burada eğer node'un zaten bir cihld elemanı varsa, listede child elemanı olmayan node'a kadar ilerleniyor
3. ```node.findChildNode(node:Node)``` ile node içerisinde value değerleri aynı olan bir child bulunana kadar devam edilir. eğer bulunamaz ise ```nil``` değeri getirilir
4. ```node.doesChildContainsCycle()``` eğer bir node'un childNode'u yok ise ```false```, değil ise ```true``` döndürülür
