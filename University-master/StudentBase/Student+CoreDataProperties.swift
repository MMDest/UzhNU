//
//  Student+CoreDataProperties.swift
//  StudentBase
//
//  Created by Андрій Бойко on 04.11.2019.
//  Copyright © 2019 Andriy. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var userBirthDate: Date?
    @NSManaged public var userCourse: Int16
    @NSManaged public var userEmail: String?
    @NSManaged public var userFaculty: String?
    @NSManaged public var userLastName: String?
    @NSManaged public var userName: String?
    @NSManaged public var userPassword: String?

}
