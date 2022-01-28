//
//  DBManager.swift
//  workoutTracker
//
//  Created by Sathya Narayan  on 24.01.22.
//

import Foundation
import CoreData
import UIKit

//.instance of this class wil be created once
// its a singleton class
class DBManager {
    
    enum CoreDataSaveResult {
        case success
        case failure(NSError)
        
        public func error() -> NSError? {
            if case .failure(let error) = self {
                return error
            }
            return nil
        }
    }
    
    static let shared: DBManager = DBManager()
    
    func getManagedObjectComntext() -> NSManagedObjectContext? {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return nil}
        let manageContext = appDelegate.persistentContainer.viewContext
        return manageContext
    }
    
    func getEntityDetails(tableName: String, context: NSManagedObjectContext) -> NSEntityDescription? {
        let entity = NSEntityDescription.entity(forEntityName: tableName, in: context)
        return entity
    }
}
