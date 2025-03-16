//
//  ScheduleViewModel.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI
import CoreData

final class ScheduleViewModel: ObservableObject {
    
    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    
    @Published var ran1: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran2: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran3: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran4: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran5: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran6: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran7: String = String(format: "%.f", Double(.random(in: 1...5)))

    @Published var days: [String] = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
    @Published var curDay = ""

    @Published var types: [String] = ["Training", "Sections"]
    @Published var curType = "Training"
    @Published var typeForFilter = "Training"

    @Published var scType: String = ""
    @Published var scTyp: String = ""
    @Published var scTit: String = ""
    @Published var scPlace: String = ""
    @Published var scCoach: String = ""
    @Published var scTime: Date = Date()
    @Published var scDay: String = ""

    @Published var scheds: [SchedModel] = []
    @Published var selectedSched: SchedModel?

    func addSched() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "SchedModel", into: context) as! SchedModel

        loan.scType = scType
        loan.scTyp = scTyp
        loan.scTit = scTit
        loan.scPlace = scPlace
        loan.scCoach = scCoach
        loan.scTime = scTime
        loan.scDay = scDay

        CoreDataStack.shared.saveContext()
    }

    func fetchScheds() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<SchedModel>(entityName: "SchedModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.scheds = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.scheds = []
        }
    }
}
