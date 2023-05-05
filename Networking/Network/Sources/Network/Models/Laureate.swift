//
// Laureate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Laureate&#39;s full information and their respectives awarded Prizes */
public struct Laureate: Codable, JSONEncodable, Hashable {

    public enum Gender: String, Codable, CaseIterable {
        case female = "female"
        case male = "male"
    }
    public var id: String?
    public var knownName: Translation?
    public var givenName: Translation?
    public var familyName: Translation?
    public var fullName: Translation?
    /** Short slug version of familyname used in filenames */
    public var filename: String?
    /** Only for some Laureates in Literature category */
    public var penname: String?
    public var gender: Gender?
    public var birth: EventInfo?
    public var death: EventInfo?
    public var orgName: Translation?
    public var nativeName: String?
    public var acronym: String?
    public var founded: EventInfo?
    public var dissolution: EventInfo?
    public var headquarters: Location?
    public var wikipedia: LaureateWikipedia?
    public var wikidata: LaureateWikidata?
    public var sameas: [String]?
    public var links: ItemLinks?
    public var nobelPrizes: [NobelPrizePerLaureate]?

    public init(id: String? = nil, knownName: Translation? = nil, givenName: Translation? = nil, familyName: Translation? = nil, fullName: Translation? = nil, filename: String? = nil, penname: String? = nil, gender: Gender? = nil, birth: EventInfo? = nil, death: EventInfo? = nil, orgName: Translation? = nil, nativeName: String? = nil, acronym: String? = nil, founded: EventInfo? = nil, dissolution: EventInfo? = nil, headquarters: Location? = nil, wikipedia: LaureateWikipedia? = nil, wikidata: LaureateWikidata? = nil, sameas: [String]? = nil, links: ItemLinks? = nil, nobelPrizes: [NobelPrizePerLaureate]? = nil) {
        self.id = id
        self.knownName = knownName
        self.givenName = givenName
        self.familyName = familyName
        self.fullName = fullName
        self.filename = filename
        self.penname = penname
        self.gender = gender
        self.birth = birth
        self.death = death
        self.orgName = orgName
        self.nativeName = nativeName
        self.acronym = acronym
        self.founded = founded
        self.dissolution = dissolution
        self.headquarters = headquarters
        self.wikipedia = wikipedia
        self.wikidata = wikidata
        self.sameas = sameas
        self.links = links
        self.nobelPrizes = nobelPrizes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case knownName
        case givenName
        case familyName
        case fullName
        case filename
        case penname
        case gender
        case birth
        case death
        case orgName
        case nativeName
        case acronym
        case founded
        case dissolution
        case headquarters
        case wikipedia
        case wikidata
        case sameas
        case links
        case nobelPrizes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(knownName, forKey: .knownName)
        try container.encodeIfPresent(givenName, forKey: .givenName)
        try container.encodeIfPresent(familyName, forKey: .familyName)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(penname, forKey: .penname)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(birth, forKey: .birth)
        try container.encodeIfPresent(death, forKey: .death)
        try container.encodeIfPresent(orgName, forKey: .orgName)
        try container.encodeIfPresent(nativeName, forKey: .nativeName)
        try container.encodeIfPresent(acronym, forKey: .acronym)
        try container.encodeIfPresent(founded, forKey: .founded)
        try container.encodeIfPresent(dissolution, forKey: .dissolution)
        try container.encodeIfPresent(headquarters, forKey: .headquarters)
        try container.encodeIfPresent(wikipedia, forKey: .wikipedia)
        try container.encodeIfPresent(wikidata, forKey: .wikidata)
        try container.encodeIfPresent(sameas, forKey: .sameas)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encodeIfPresent(nobelPrizes, forKey: .nobelPrizes)
    }
}
