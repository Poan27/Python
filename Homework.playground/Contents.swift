//1
//var total :Int = 0
//var b :Int = 0
//
//for i in 0...7{
//    for j in 0...7{
//        b = i*j
//        total += b
//    }
//}
//print(total)

//2.
//var odd :Int = 0
//var b :Int = 0
//
//for w in 0...7{
//    for e in 0...7{
//        if e % 2 != 0{
//            b = w * e
//            odd += b
//        }
//    }
//}
//print(odd)

//3.
//var y : Int = 0
//var c : Int = 0
////var q : Int = 0
//
//for i in 0...7{
//    for j in 0...7{
//        if j<i{
//            y = j * i
//            c += y
//        }
//    }
//}
//print(c)

//4.
//var a = 0 不用
//var b = 0 不用
//var c = 0 不用
//var sum = 0
//
//func S(a:Int, b:Int, c:Int) { // -> Int
//    for i in a...b{
//        if ( i % c == 0 ){
//           sum += i
//        }
//    }
//    print(sum)
////    return sum
//}
//S(a:3,b:98,c:5)

//5.
//class movie {
//
//    var o : Int = 0
//    var total : Int = 0
//    var student : Int = 0
//    var star : Int = 0
//    var allPrice : Int = 0
//    var totalPrice : Int = 0
//
//    enum ticket:Int{
//        case o = 300
//        case student = 270
//        case star = 255
//    }
//
////    func test() {
////
////        switch price {
////        case .o:
////            print(o)
////        case .student:
////            print(student)
////        case .star:
////            print(star)
////        }
////    }
//
//
//    func price(total:Int, student:Int, star:Int){
//        o = total - student - star
//        totalPrice = o * 300 + student * 270 + star * 255
//        print("全票：\(o)、總金額 ＄\(totalPrice)")
//    }
//}
//
//let test = movie()
//var test1 = test()

//5.1(init)
//class movie {
//    var total : Int
//    var student : Int
//    var star : Int
//
//    init(total : Int, student : Int, star : Int){
//        self.total = total
//        self.student = student
//        self.star = star
//    }
//
//    enum ticket:Int{
//        case o = 300
//        case student = 270
//        case star = 255
//    }
//
//    var o : Int = 0
//    var totalPrice : Int = 0
//
//    func price(total:Int, student:Int, star:Int){
//        o = total - student - star
//        totalPrice = o * 300 + student * 270 + star * 255
//        print("全票：\(o)、總金額 ＄\(totalPrice)")
//    }
//}
//
//var test = movie(total: 10, student: 3, star: 2)
//test.price(total :10,student:3,star:2)／

//5.2
//class movie {
//    var total : Int = 0
//    var student : Int = 0
//    var star : Int = 0
//
//    enum ticket:Int{
//        case o = 300
//        case student = 270
//        case star = 255
//    }
//
//    var o : Int = 0
//    var totalPrice : Int = 0
//
//    func price(total:Int, student:Int, star:Int){
//        o = total - student - star
//        totalPrice = o * 300 + student * 270 + star * 255
//        print("全票：\(o)、總金額 ＄\(totalPrice)")
//    }
//}
//
//var test = movie()
//test.price(total :10,student:3,star:2)

//6.(init)
//class box1 {
//    var length : Double
//    var width : Double
//    var height : Double
//
//    init(length:Double ,width:Double ,height:Double){
//        self.length = length
//        self.width = width
//        self.height = height
//    }
//
//    func area (length:Double ,width:Double ,height:Double){
//        if (length < 23) && (width < 14) && (height < 13){
//            print("true")
//        }else{
//            print("false")
//        }
//    }
//
//}   //func area (length:Double ,width:Double ,height:Double)
//let testclass = box1(length:0, width:0, height:0)
//testclass.area(length:15, width:18, height:10)

//6.1
//class box1 {
//    var length : Double = 0
//    var width : Double = 0
//    var height : Double = 0
//
//    func area (length:Double ,width:Double ,height:Double){
//        if (length < 23) && (width < 14) && (height < 13){
//            print("true")
//        }else{
//            print("false")
//        }
//    }
//
//}   //func area (length:Double ,width:Double ,height:Double)
//let testclass = box1()
//testclass.area(length:15, width:18, height:10)

//6.0.0
class box1 {
    var length : Double
    var width : Double
    var height : Double
    
    init(length:Double ,width:Double ,height:Double){
        self.length = length
        self.width = width
        self.height = height
    }

    func area (length:Double ,width:Double ,height:Double) -> Bool {
        if (length < 23) && (width < 14) && (height < 13) {
            return true
        }
        return false
    }

}   //func area (length:Double ,width:Double ,height:Double)
let testclass = box1(length:0, width:0, height:0)
print(testclass.area(length:15, width:18, height:10))

class box2 {
    var length : Double
    var width : Double
    var height : Double
    
    init(length:Double ,width:Double ,height:Double) {
        self.length = length
        self.width = width
        self.height = height
    }

    func area (length:Double ,width:Double ,height:Double) -> Bool {
        if (length < 39.5) && (width < 27.5) && (height < 23) {
            return true
        }
        return false
    }
    
}   //func area (length:Double ,width:Double ,height:Double)
let testclass2 = box2(length:0, width:0, height:0)
print(testclass2.area(length:20, width:11, height:9))

func TF(length:Double ,width:Double ,height:Double) -> String {
    var str = ""
    let box1Test = box1(length:length, width:width, height:height)
    let box2Test = box2(length:length, width:width, height:height)

    if (box1Test.area(length:length, width:width, height:height) == true) {
        str = "Box1"
        if (box2Test.area(length:length, width:width, height:height) == true){
            str += ",Box2" //str = str+Box2
            return str
        }
    }
    if (box2Test.area(length:length, width:width, height:height) == true){
        str += "Box2" //str = str+Box2
    }
    return str
}
let test1 = TF(length: 15, width: 18, height: 10)
print(test1)
let test2 = TF(length: 20, width: 11, height: 9)
print(test2)
