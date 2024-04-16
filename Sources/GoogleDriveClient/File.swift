import Foundation

public struct File: Sendable, Equatable, Identifiable, Codable {
  public init(
    id: String,
    mimeType: String,
    name: String,
    createdTime: Date,
    modifiedTime: Date,
    thumbnailLink: String?
  ) {
    self.id = id
    self.mimeType = mimeType
    self.name = name
    self.createdTime = createdTime
    self.modifiedTime = modifiedTime
    self.thumbnailLink = thumbnailLink
  }

  public var id: String
  public var mimeType: String
  public var name: String
  public var createdTime: Date
  public var modifiedTime: Date
  public var thumbnailLink: String?
}

extension File {
  static let apiFields: String = [
    "id",
    "mimeType",
    "name",
    "createdTime",
    "modifiedTime",
    "thumbnailLink"
  ].joined(separator: ",")
}
