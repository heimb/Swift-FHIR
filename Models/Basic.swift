//
//  Basic.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3926 (basic.profile.json) on 2015-01-06.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Resource for non-supported content.
 *
 *  Basic is used for handling concepts not yet defined in FHIR, narrative-only resources that don't map to an existing
 *  resource, and custom resources not appropriate for inclusion in the FHIR specification.
 */
public class Basic: FHIRResource
{
	override public class var resourceName: String {
		get { return "Basic" }
	}
	
	/// Who created
	public var author: Reference?
	
	/// Kind of Resource
	public var code: CodeableConcept?
	
	/// When created
	public var created: NSDate?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// Identifies the
	public var subject: Reference?
	
	public convenience init(code: CodeableConcept?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["author"] as? JSONDictionary {
				self.author = Reference(json: val, owner: self)
			}
			if let val = js["code"] as? JSONDictionary {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = NSDate(json: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}
