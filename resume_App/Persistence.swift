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
    
//    func updateMovie() {
//        
//        do {
//            try persistentContainer.viewContext.save()
//        } catch {
//            persistentContainer.viewContext.rollback()
//        }
//        
//    }
    
    //MARK: - deletemovie
    func deletejob(movie: Job) {
    
        persistentContainer.viewContext.delete(movie)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    //MARK: - deletecollege
    func deletecollege(college: College) {
    
        persistentContainer.viewContext.delete(college)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    //MARK: - getallmovie
    func getAlljob() -> [Job] {
        
        let fetchRequest: NSFetchRequest<Job> = Job.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
        
    }
    
    //MARK: - getallcollege
    func getAllcolleges() -> [College] {
        
        let fetchRequests: NSFetchRequest<College> = College.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequests)
        } catch {
            return []
        }
        
    }
    
    //MARK: - savemovie
    func savejob(companyname:String, possion:String, month:String, year:String, endmonth:String, endyear:String) {
        
        let jobs = Job(context: persistentContainer.viewContext)
        jobs.company = companyname
        jobs.possion = possion
        jobs.months = month
        jobs.years = year
        jobs.endmonth = endmonth
        jobs.endyear = endyear
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    
    //MARK: - savecollege
    func saveCollege(college:String, degree:String, startyear:String, endyear:String) {
        
        let Colleges = College(context: persistentContainer.viewContext)
        Colleges.cname = college
        Colleges.degree = degree
        Colleges.startyear = startyear
        Colleges.endyear = endyear
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    
    //MARK: - saveskill
    func saveSkill(skill:String) {
        
        let skills = Skill(context: persistentContainer.viewContext)
        skills.skill = skill
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    //MARK: - getallskill
    func getAllskill() -> [Skill] {
        
        let fetchRequests: NSFetchRequest<Skill> = Skill.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequests)
        } catch {
            return []
        }
        
    }
    //MARK: - deletecollege
    func deleteskill(skill: Skill) {
    
        persistentContainer.viewContext.delete(skill)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    //MARK: - getallsoftwere
    func getAllsoftwere() -> [Softweres] {
        
        let fetchRequest: NSFetchRequest<Softweres> = Softweres.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
        
    }
    //MARK: - savesoftwere
    func savesoftwere(softwe:String , basicscore:String) {
        
        let softweress = Softweres(context: persistentContainer.viewContext)
        softweress.softname = softwe
        softweress.basicscore = basicscore
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    //MARK: - deletecollege
    func deletesoftwere(delsoft: Softweres) {
    
        persistentContainer.viewContext.delete(delsoft)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    
    func updateMovie() {

           do {
               try persistentContainer.viewContext.save()
           } catch {
               persistentContainer.viewContext.rollback()
           }
   
       }
    
    
    
    //MARK: - savesummary
    func savesummary(summaryTxt:String) {
        
        let summarys = Summarys(context: persistentContainer.viewContext)
        summarys.summarytxt = summaryTxt
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    
    //getallsummary
    func getallsummary() -> [Summarys] {
        let fetchrequest: NSFetchRequest<Summarys> = Summarys.fetchRequest()
        
        do{
            return try persistentContainer.viewContext.fetch(fetchrequest)
        }catch {
            return []
        }
    }
    
    
    //MARK: - savesummary
    func saveabout(firstname:String,middlename:String,lastname:String) {
        
        let abouts = About(context: persistentContainer.viewContext)
        abouts.firstname = firstname
        abouts.middlename = middlename
        abouts.lastname = lastname
     

        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save movie \(error)")
        }
        
    }
    
    //getallsummary
    func getallAbout() -> [About] {
        let fetchrequest: NSFetchRequest<About> = About.fetchRequest()
        
        do{
            return try persistentContainer.viewContext.fetch(fetchrequest)
        }catch {
            return []
        }
    }
}
