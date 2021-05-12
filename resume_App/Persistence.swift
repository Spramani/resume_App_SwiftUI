//
//  Persistence.swift
//  coreproject
//
//  Created by Adsum MAC 2 on 08/05/21.
//
import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "Model")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    
    func updateMovie() {
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
        }
        
    }
    
    func deleteMovie(movie: Job) {
        
        
        
        persistentContainer.viewContext.delete(movie)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    func getAllMovies() -> [Job] {
        
        let fetchRequest: NSFetchRequest<Job> = Job.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
        
    }
    
    func saveMovie(companyname:String, possion:String, month:String, year:String) {
        
        let jobs = Job(context: persistentContainer.viewContext)
        jobs.company = companyname
        jobs.possion = possion
        jobs.months = month
        jobs.years = year
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    
}
