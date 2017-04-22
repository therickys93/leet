import Vapor

let drop = Droplet()

drop.get("/") {
    req in
    return "Hello, World!"
}

drop.get("/api/leet/", String.self) {
    req, leet in
    
    var newleet = leet.uppercased()
    newleet = newleet.replacingOccurrences(of: "A", with: "4")
    newleet = newleet.replacingOccurrences(of: "B", with: "8")
    newleet = newleet.replacingOccurrences(of: "E", with: "3")
    newleet = newleet.replacingOccurrences(of: "G", with: "9")
    newleet = newleet.replacingOccurrences(of: "I", with: "1")
    newleet = newleet.replacingOccurrences(of: "O", with: "0")
    newleet = newleet.replacingOccurrences(of: "S", with: "5")
    newleet = newleet.replacingOccurrences(of: "T", with: "7")
    newleet = newleet.replacingOccurrences(of: "Z", with: "2")
    
    return newleet.lowercased()
}

drop.get("/api/unleet/", String.self) {
    req, unleet in

    var newunleet = unleet.uppercased()
    newunleet = newunleet.replacingOccurrences(of: "4", with: "A")
    newunleet = newunleet.replacingOccurrences(of: "8", with: "B")
    newunleet = newunleet.replacingOccurrences(of: "3", with: "E")
    newunleet = newunleet.replacingOccurrences(of: "9", with: "G")
    newunleet = newunleet.replacingOccurrences(of: "1", with: "I")
    newunleet = newunleet.replacingOccurrences(of: "0", with: "O")
    newunleet = newunleet.replacingOccurrences(of: "5", with: "S")
    newunleet = newunleet.replacingOccurrences(of: "7", with: "T")
    newunleet = newunleet.replacingOccurrences(of: "2", with: "Z")

    return newunleet.lowercased()
}

drop.run()
