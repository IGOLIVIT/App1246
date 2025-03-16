//
//  SubscriptionsViewModel.swift
//  App1246
//
//  Created by IGOR on 15/03/2025.
//

import SwiftUI
import CoreData

final class SubscriptionsViewModel: ObservableObject {
    
    @AppStorage("paid") var paid: Double = 0
    @AppStorage("notpaid") var notpaid: Double = 0
    
    @AppStorage("pay") var pay: Int = 0
    @AppStorage("sub") var sub: Int = 0

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    
    @Published var ran1: String = String(format: "%.f", Double(.random(in: 1...5)))
    @Published var ran2: String = String(format: "%.f", Double(.random(in: 1...5)))

    @Published var days: [String] = ["PAY", "SUB"]
    @Published var curDay = ""
    
    @Published var statuses: [String] = ["Paid", "Not Paid"]
    @Published var curStatus = "Paid"

    @Published var types: [String] = ["Payment", "Subscriptions"]
    @Published var curType = "Payment"
    @Published var typeForFilter = "Payment"

    @Published var paVid: String = ""
    @Published var paTit: String = ""
    @Published var paType: String = ""
    @Published var paSum: String = ""
    @Published var paDateS: Date = Date()
    @Published var paDateE: Date = Date()
    @Published var paStatus: String = ""

    @Published var payments: [PaymentModel] = []
    @Published var selectedPay: PaymentModel?

    func addPay() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "PaymentModel", into: context) as! PaymentModel

        loan.paVid = paVid
        loan.paTit = paTit
        loan.paType = paType
        loan.paSum = paSum
        loan.paDateS = paDateS
        loan.paDateE = paDateE
        loan.paStatus = paStatus

        CoreDataStack.shared.saveContext()
    }

    func fetchPay() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<PaymentModel>(entityName: "PaymentModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.payments = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.payments = []
        }
    }
}
