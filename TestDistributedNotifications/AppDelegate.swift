import AppKit


class AppDelegate: NSObject, NSApplicationDelegate {
    
    let distributedNotificationsWatcher = DistributedNotificationsWatcher()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidEnterInsertMode), name: NSNotification.Name("kindaVimDidEnterInsertMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidExitInsertMode), name: NSNotification.Name("kindaVimDidExitInsertMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidEnterNormalMode), name: NSNotification.Name("kindaVimDidEnterNormalMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidExitNormalMode), name: NSNotification.Name("kindaVimDidExitNormalMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidEnterVisualMode), name: NSNotification.Name("kindaVimDidEnterVisualMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidExitVisualMode), name: NSNotification.Name("kindaVimDidExitVisualMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidEnterOperatorPendingMode), name: NSNotification.Name("kindaVimDidEnterOperatorPendingMode"), object: nil)
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(self.kindaVimDidExitOperatorPendingMode), name: NSNotification.Name("kindaVimDidExitOperatorPendingMode"), object: nil)
    }
    
    @objc func kindaVimDidEnterInsertMode() {
        distributedNotificationsWatcher.add("kV entered Insert Mode!")
    }
    
    @objc func kindaVimDidExitInsertMode() {
        distributedNotificationsWatcher.add("kV exited Insert Mode!")
    }
    
    @objc func kindaVimDidEnterNormalMode() {
        distributedNotificationsWatcher.add("kV entered Normal Mode!")
    }
    
    @objc func kindaVimDidExitNormalMode() {
        distributedNotificationsWatcher.add("kV exited Normal Mode!")
    }
    
    @objc func kindaVimDidEnterVisualMode() {
        distributedNotificationsWatcher.add("kV entered Visual Mode!")
    }
    
    @objc func kindaVimDidExitVisualMode() {
        distributedNotificationsWatcher.add("kV exited Visual Mode!")
    }
    
    @objc func kindaVimDidEnterOperatorPendingMode() {
        distributedNotificationsWatcher.add("kV entered Operator-pending Mode!")
    }
    
    @objc func kindaVimDidExitOperatorPendingMode() {
        distributedNotificationsWatcher.add("kV exited Operator-pending Mode!")
    }
    
}
