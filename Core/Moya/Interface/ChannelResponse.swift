import Foundation

public struct ChannelResponse: Codable {
    public let items: [Item]
}

public extension ChannelResponse {
    struct Item: Codable {
        public let id: String
        public let snippet: Snippet
    }

    struct Snippet: Codable {
        public let description: String
        public let title: String
        public let publishedAt: Date
        public let thumbnails: Thumbnails

    }

    struct Thumbnails: Codable {
        public let `default`: Thumbnail
        public let medium: Thumbnail
        public let high: Thumbnail
    }

    struct Thumbnail: Codable {
        public let url: String
        public let width: Int
        public let height: Int
    }
}
