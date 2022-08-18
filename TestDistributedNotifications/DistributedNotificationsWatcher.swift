import SwiftUI


class DistributedNotificationsWatcher: ObservableObject {
    
    @Published var notifications: [String] = []
    
    func add(_ text: String) {
        notifications.insert(text, at: 0)
    }
       
}
