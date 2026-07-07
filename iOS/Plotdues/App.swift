import SwiftUI

@main
struct PlotduesApp: App {
    @StateObject private var store = Store()
    @StateObject private var purchaseManager = PurchaseManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environmentObject(purchaseManager)
                .task {
                    await purchaseManager.refreshEntitlements()
                    store.isPro = purchaseManager.isPro
                }
                .onChange(of: purchaseManager.isPro) { _, newValue in
                    store.isPro = newValue
                }
        }
    }
}
