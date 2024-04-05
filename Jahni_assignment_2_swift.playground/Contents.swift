import Foundation

var inRangeNewsletter : [String] = []



struct Customer{
    var fullName : String
    var email : String
    var phone : String
    var acceptedNewsletter: Bool
    let location : (Int,Int)
}

struct Location{
    var location : (Int,Int)
    let storeRange  = 2.5
}

let stores = [Location(location: (2,7)),Location(location: (2,2))]
var customers = [
    Customer(fullName: "Mr. Alexander Jackson", email: "Alex_Jackson@vasquez.biz", phone: "+1-372-351-2947", acceptedNewsletter: true, location: (4, 6)),
    Customer(fullName: "Michele Wright", email: "MWright@wilkins.com", phone: "+1-855-708-3311", acceptedNewsletter: true, location: (2, 1)),
    Customer(fullName: "Holly Harrell", email: "HarrelHollie@hotmail.com", phone: "+1-556-640-8429", acceptedNewsletter: true, location: (1, 8)),
    Customer(fullName: "Thomas Brown", email: "TinyTom@hotmail.com", phone: "+1-901-222-1557", acceptedNewsletter: false, location: (5, 2)),
    Customer(fullName: "Cory Hale", email: "HoryCale@thomas.com", phone: "+1-354-706-9356", acceptedNewsletter: false, location: (6, 8)),
    Customer(fullName: "Tyler Briggs", email: "TBriggs@black.com", phone: "+1-331-136-7232", acceptedNewsletter: false, location: (4, 4)),
    Customer(fullName: "Nancy Kirk", email: "NKtheMachine@hotmail.com", phone: "+1-288-666-2220", acceptedNewsletter: true, location: (1, 5)),
    Customer(fullName: "Amy Schwartz", email: "SchortSchwartz@moore.com", phone: "+1-690-322-5643", acceptedNewsletter: false, location: (7, 9)),
    Customer(fullName: "Laurie Anderson", email: "LaurieAnderson@cross.com", phone: "+1-630-747-1662", acceptedNewsletter: false, location: (5, 8)),
    Customer(fullName: "Timothy Moore", email: "TimTomMoore@cabrera-herring.com", phone: "+1-263-473-9865", acceptedNewsletter: false, location: (9, 6))
]

func inRange(storeIdx : Int){
    for customer in customers {
        var customerX = customer.location.0
        var customerY = customer.location.1
        var storeX =  stores[storeIdx].location.0
        var storeY = stores[storeIdx].location.1
        
        var distanceX = Double( customerX - storeX)
        var distanceY = Double( customerY - storeY)
        
        distanceX *= distanceX
        distanceY *= distanceY
        
        var inRange : Bool
        
        if (distanceX + distanceY).squareRoot() <= 2.5{
            inRange = true
            if inRange{
                inRangeNewsletter.append("Name: \(customer.fullName) Email: \(customer.email)  ")
            }
        }
    }
    print(inRangeNewsletter)
}

inRange(storeIdx: 1)
