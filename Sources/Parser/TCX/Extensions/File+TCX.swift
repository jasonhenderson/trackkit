//
//  TrackKit
//
//  Created by Jelle Vandebeeck on 15/03/16.
//

import AEXML

extension File {

    convenience init(tcx rootElement: AEXMLElement) throws {
        // When the element is an error, don't create the instance.
        if rootElement.attributes["xmlns"] != "http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2" {
            throw TrackParseError.invalidVersion
        }
        self.init()

        applicationAuthor <~ Author(tcx: rootElement["Author"])
        courses           <~ rootElement["Courses"]["Course"].all?.flatMap { Course(tcx: $0) }
        activities        <~ rootElement["Activities"]["Activity"].all?.flatMap { Activity(tcx: $0) }
    }

}