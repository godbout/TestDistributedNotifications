import SwiftUI


@main
struct TestDistributedNotificationsApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appDelegate.distributedNotificationsWatcher)
                .frame(width: 100, height: 300)
        }
    }
       
}
