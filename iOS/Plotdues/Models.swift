import Foundation

struct Entry: Identifiable, Codable, Equatable {
    let id: UUID
    var kind: String
    var amount: Double
    var season: String
    var date: Date
    var createdAt: Date

    init(id: UUID = UUID(), kind: String = "", amount: Double = 0, season: String = "", date: Date = Date(), createdAt: Date = Date()) {
        self.id = id
        self.kind = kind
        self.amount = amount
        self.season = season
        self.date = date
        self.createdAt = createdAt
    }
}
