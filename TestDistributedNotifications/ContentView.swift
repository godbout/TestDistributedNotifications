import SwiftUI


struct ContentView: View {

    @EnvironmentObject var distributedNotificationsWatcher: DistributedNotificationsWatcher

    var body: some View {
        ScrollView {
            Text(distributedNotificationsWatcher.notifications.joined(separator: "\n"))
                .fixedSize()
        }
        .frame(height: 300)
    }

}
