//
//  PlanDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PlanDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PlanDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.PlanDefinition {
		return try SwiftFHIR.PlanDefinition(json: json)
	}
	
	func testPlanDefinition1() {
		do {
			let instance = try runPlanDefinition1()
			try runPlanDefinition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runPlanDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example-kdn5-simplified.json")
		
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].activityDefinition?.reference, "#1111")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "Gemcitabine 1250 mg/m² IV over 30 minutes on days 1 and 8")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[1].activityDefinition?.reference, "#2222")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[1].textEquivalent, "CARBOplatin AUC 5 IV over 30 minutes on Day 1")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionIdentifier?.system?.absoluteString, "http://nccn.org/ordertemplates/KDN5")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionIdentifier?.value, "cycle-definition-1")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].cardinalityBehavior, "multiple")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "21-day cycle for 6 cycles")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].timingTiming?.repeat_fhir?.count, 6)
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].timingTiming?.repeat_fhir?.duration, NSDecimalNumber(string: "21"))
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].timingTiming?.repeat_fhir?.durationUnit, "d")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].groupingBehavior, "sentence-group")
		XCTAssertEqual(inst.approvalDate?.description, "2016-07-27")
		XCTAssertEqual(inst.contained?[0].id, "1111")
		XCTAssertEqual(inst.contained?[1].id, "2222")
		XCTAssertEqual(inst.contributor?[0].name, "Lee Surprenant")
		XCTAssertEqual(inst.contributor?[0].type, "author")
		XCTAssertEqual(inst.copyright, "All rights reserved.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "KDN5")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://nccn.org/ordertemplates")
		XCTAssertEqual(inst.identifier?[0].value, "KDN5")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-07-27")
		XCTAssertEqual(inst.publisher, "National Comprehensive Cancer Network, Inc.")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "NCCN Guidelines for Kidney Cancer. V.2.2016")
		XCTAssertEqual(inst.relatedArtifact?[0].type, "derived-from")
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://www.nccn.org/professionals/physician_gls/PDF/kidney.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].citation, "Oudard S, et al. J Urol. 2007;177(5):1698-702")
		XCTAssertEqual(inst.relatedArtifact?[1].type, "citation")
		XCTAssertEqual(inst.relatedArtifact?[1].url?.absoluteString, "http://www.ncbi.nlm.nih.gov/pubmed/17437788")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "additional")
		XCTAssertEqual(inst.title, "Gemcitabine/CARBOplatin")
		XCTAssertEqual(inst.type?.text, "Chemotherapy Order Template")
		XCTAssertEqual(inst.version, "1")
		
		return inst
	}
	
	func testPlanDefinition2() {
		do {
			let instance = try runPlanDefinition2()
			try runPlanDefinition2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runPlanDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example.json")
		
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].activityDefinition?.reference, "#referralToMentalHealthCare")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].expression, "Now()")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].path, "timing.event")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].expression, "Code '261QM0850X' from \"urn:oid:2.16.840.1.113883.11.19462\"")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].path, "specialty")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].expression, "ReferralRequestFulfillmentTime")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].path, "fulfillmentTime")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].expression, "Patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].path, "patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].expression, "Practitioner")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].path, "requester")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[5].expression, "RiskAssessmentScore")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[5].path, "reason")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[6].expression, "RiskAssessment")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[6].path, "supportingInformation")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "Refer to outpatient mental health program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].selectionBehavior, "any")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].title, "Consults and Referrals")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].activityDefinition?.reference, "#citalopramPrescription")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].expression, "'draft'")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].expression, "Patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].expression, "Practitioner")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].expression, "RiskAssessmentScore")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].path, "reasonCode")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].expression, "RiskAssessment")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].path, "reasonReference")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[1].textEquivalent, "escitalopram 10 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[2].textEquivalent, "fluoxetine 20 mg capsule 1 capsule oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[3].textEquivalent, "paroxetine 20 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[4].textEquivalent, "sertraline 50 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.title, "National Library of Medicine. DailyMed website. CITALOPRAM- citalopram hydrobromide tablet, film coated.")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.url?.absoluteString, "http://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=6daeb45c-451d-b135-bf8f-2d6dff4b6b01")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].type, "justification")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].title, "Selective Serotonin Reuptake Inhibitors (Choose a mazimum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[1].textEquivalent, "Dopamine Norepinephrine Reuptake Inhibitors (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[2].textEquivalent, "Serotonin Norepinephrine Reuptake Inhibitors (Choose a maximum of one or doument reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[3].textEquivalent, "Norepinephrine-Serotonin Modulators (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.title, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].type, "justification")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].title, "First-Line Antidepressants")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].title, "Medications")
		XCTAssertEqual(inst.actionDefinition?[0].title, "Suicide Risk Assessment and Outpatient Management")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "work")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, "work")
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contained?[0].id, "referralToMentalHealthCare")
		XCTAssertEqual(inst.contained?[1].id, "citalopramPrescription")
		XCTAssertEqual(inst.contained?[2].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[3].id, "citalopramSubstance")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].use, "work")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].use, "work")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.contributor?[0].type, "author")
		XCTAssertEqual(inst.date?.description, "2015-08-15")
		XCTAssertEqual(inst.description_fhir, "...")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "mmi:low-suicide-risk-order-set")
		XCTAssertEqual(inst.library?[0].reference, "Library/mmi-suiciderisk-orderset-logic")
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Low Suicide Risk Order Set...</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Low Suicide Risk Order Set")
		XCTAssertEqual(inst.topic?[0].text, "Suicide risk assessment")
		XCTAssertEqual(inst.useContext?[0].code?.code, "gender")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "133936004")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Adult")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[1].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].code, "87512008")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].display, "Mild major depression")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[2].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[2].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].code, "40379007")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].display, "Major depression, recurrent, mild")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[3].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[3].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "394687007")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "Low suicide risk")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "225337009")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Suicide risk assessment")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[5].code?.code, "user")
		XCTAssertEqual(inst.useContext?[5].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].code, "309343006")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].display, "Physician")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[6].code?.code, "venue")
		XCTAssertEqual(inst.useContext?[6].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].code, "440655000")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].display, "Outpatient environment")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testPlanDefinition3() {
		do {
			let instance = try runPlanDefinition3()
			try runPlanDefinition3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runPlanDefinition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-protocol-example.json")
		
		XCTAssertEqual(inst.actionDefinition?[0].activityDefinition?.reference, "#procedure")
		XCTAssertEqual(inst.actionDefinition?[0].condition?.expression, "Observation of Obesity or BMI Measured in Past 2 Years")
		XCTAssertEqual(inst.actionDefinition?[0].label, "Measure BMI")
		XCTAssertEqual(inst.actionDefinition?[0].title, "Measure, Weight, Height, Waist, Circumference; Calculate BMI")
		XCTAssertEqual(inst.contained?[0].id, "procedure")
		XCTAssertEqual(inst.contributor?[0].name, "National Heart, Lung, and Blood Institute http://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/algorthm/algorthm.htm")
		XCTAssertEqual(inst.contributor?[0].type, "author")
		XCTAssertEqual(inst.id, "protocol-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org")
		XCTAssertEqual(inst.identifier?[0].value, "example-1")
		XCTAssertEqual(inst.purpose, "Example of A medical algorithm for assessment and treatment of overweight and obesity")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Obesity Assessment Protocol")
		XCTAssertEqual(inst.type?.coding?[0].code, "protocol")
		
		return inst
	}
}
