//
//  User.swift
//  ModelGen
//
//  Generated by [ModelGen]: https://github.com/hebertialmeida/ModelGen
//  Copyright © 2017 ModelGen. All rights reserved.
//

import Unbox

/// Definition of a User
public class User: Equatable {

    // MARK: Instance Variables

    public var email: String
    public var id: Int
    public var timezone: String?
    public var fullName: String
    public var createdAt: Date
    public var avatar: Avatar
    public var currentCompanyId: Int
    public var companies: [Company]

    // MARK: - Initializers

    public init(email: String, id: Int, timezone: String?, fullName: String, createdAt: Date, avatar: Avatar, currentCompanyId: Int, companies: [Company]) {
        self.email = email
        self.id = id
        self.timezone = timezone
        self.fullName = fullName
        self.createdAt = createdAt
        self.avatar = avatar
        self.currentCompanyId = currentCompanyId
        self.companies = companies
    }

    public init(unboxer: Unboxer) throws {
        self.email = try unboxer.unbox(key: "email")
        self.id = try unboxer.unbox(key: "id")
        self.timezone =  unboxer.unbox(key: "timezone")
        self.fullName = try unboxer.unbox(key: "full_name")
        self.createdAt = try unboxer.unbox(key: "created_at", formatter: Date.serverDateFormatter())
        self.avatar = try unboxer.unbox(key: "avatar")
        self.currentCompanyId = try unboxer.unbox(key: "current_company_id")
        self.companies = try unboxer.unbox(key: "companies")
    }
}

// MARK: - Equatable

public func == (lhs: User, rhs: User) -> Bool {
    guard lhs.email == rhs.email else { return false }
    guard lhs.id == rhs.id else { return false }
    guard lhs.timezone == rhs.timezone else { return false }
    guard lhs.fullName == rhs.fullName else { return false }
    guard lhs.createdAt == rhs.createdAt else { return false }
    guard lhs.avatar == rhs.avatar else { return false }
    guard lhs.currentCompanyId == rhs.currentCompanyId else { return false }
    guard lhs.companies == rhs.companies else { return false }
    return true
}
