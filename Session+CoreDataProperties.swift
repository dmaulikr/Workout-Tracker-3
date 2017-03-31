//
//  Session+CoreDataProperties.swift
//  90 DWT 3
//
//  Created by Grant, Jared on 3/31/17.
//  Copyright © 2017 Grant, Jared. All rights reserved.
//

import Foundation
import CoreData


extension Session {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Session> {
        return NSFetchRequest<Session>(entityName: "Session")
    }

    @NSManaged public var currentSession: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var importPreviousSessionData: NSNumber?

}