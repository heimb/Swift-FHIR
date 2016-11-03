//
//  CommunicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CommunicationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Communication {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Communication {
		return try SwiftFHIR.Communication(json: json)
	}
	
	func testCommunication1() {
		do {
			let instance = try runCommunication1()
			try runCommunication1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw")
		}
	}
	
	@discardableResult
	func runCommunication1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Communication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example-fm-attachment.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "SolicitedAttachment")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.id, "fm-attachment")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.providerco.com/communication")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.creation?.description, "2010-02-01T11:50:23-05:00")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.data, Base64Binary(value: "SGVsbG8="))
		XCTAssertEqual(inst.payload?[0].contentAttachment?.title, "accident notes 20100201.pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.creation?.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.hash, Base64Binary(value: "SGVsbG8gdGhlcmU="))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.size, UInt(104274))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.url?.absoluteString, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst.recipient?[0].identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurer")
		XCTAssertEqual(inst.recipient?[0].identifier?.value, "123456")
		XCTAssertEqual(inst.sender?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/provideroffices")
		XCTAssertEqual(inst.sender?.identifier?.value, "3456")
		XCTAssertEqual(inst.sent?.description, "2016-06-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachment which is unsolicited</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.topic?[0].identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.topic?[0].identifier?.value, "12345")
		XCTAssertEqual(inst.topic?[1].identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/claimresponse")
		XCTAssertEqual(inst.topic?[1].identifier?.value, "R3500")
		
		return inst
	}
	
	func testCommunication2() {
		do {
			let instance = try runCommunication2()
			try runCommunication2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw")
		}
	}
	
	@discardableResult
	func runCommunication2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Communication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example-fm-solicited-attachment.json")
		
		XCTAssertEqual(inst.basedOn?[0].reference, "#request")
		XCTAssertEqual(inst.category?.coding?[0].code, "SolicitedAttachment")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.contained?[0].id, "provider")
		XCTAssertEqual(inst.contained?[1].id, "payor")
		XCTAssertEqual(inst.contained?[2].id, "request")
		XCTAssertEqual(inst.id, "fm-solicited")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.providerco.com/communication")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.creation?.description, "2010-02-01T11:50:23-05:00")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.data, Base64Binary(value: "SGVsbG8="))
		XCTAssertEqual(inst.payload?[0].contentAttachment?.title, "accident notes 20100201.pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.creation?.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.hash, Base64Binary(value: "SGVsbG8gdGhlcmU="))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.size, UInt(104274))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.url?.absoluteString, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst.recipient?[0].reference, "#payor")
		XCTAssertEqual(inst.sender?.reference, "#provider")
		XCTAssertEqual(inst.sent?.description, "2016-06-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachment in response to a Request</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testCommunication3() {
		do {
			let instance = try runCommunication3()
			try runCommunication3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw")
		}
	}
	
	@discardableResult
	func runCommunication3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Communication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "Alert")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.category?.text, "Alert")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Paging System")
		XCTAssertEqual(inst.identifier?[0].value, "2345678901")
		XCTAssertEqual(inst.payload?[0].contentString, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst.payload?[1].contentReference?.reference, "Observation/643666aa12f")
		XCTAssertEqual(inst.recipient?[0].reference, "Practitioner/21")
		XCTAssertEqual(inst.sender?.reference, "Device/f001")
		XCTAssertEqual(inst.sent?.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient has very high serum potassium</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
