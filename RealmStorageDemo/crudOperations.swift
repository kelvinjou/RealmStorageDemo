//
//  crudOperations.swift
//  RealmStorageDemo
//
//  Created by mimi on 3/6/21.
//

import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var name: String?
    @objc dynamic var url: URL?
}


class Operations {
    let realm = try! Realm()
    var uniquePerson = Person()
    var anotherPerson = Person()
    func write() {
        uniquePerson.name = "Bob"
        uniquePerson.url = URL(string: "https://github.com/kelvinjou")
        
        //Update will occur when you change the values
        anotherPerson.name = "John"
        anotherPerson.url = URL(string: "https://youtube.com")
        
        try? realm.write {
            realm.add(uniquePerson)
        }
    }
    
    func read() {
        //Filter using NSPredicate!
        let results = realm.objects(Person.self)//.filter("name" = 'Bob'")
        
        for i in results {
            print(i.name ?? "nothing saved yet" , i.url ?? "nothing saved in the local storage yet")
        }
    }
    func delete() {
        try? realm.write {
            //realm.deleteAll()
            realm.delete(anotherPerson)
        }
    }
}


