//
//  TrackKit
//
//  Created by Jelle Vandebeeck on 15/03/16.
//

import AEXML

extension Point: Gpxable {

    convenience init?(gpx element: AEXMLElement) {
        // When the element is an error, don't create the instance.
        if let _ = element.error {
            return nil
        }

        // Check if coordinate is avaiable.
        guard
            let latitude = element.attributes["lat"],
            let longitude = element.attributes["lon"] else {
                return nil
        }
        self.init()

        coordinate                    <~ (Double(latitude)!, Double(longitude)!)
        elevation                     <~ element["ele"]
        magneticVariation             <~ element["magvar"]
        meanSeaLevelHeight            <~ element["geoidheight"]
        name                          <~ element["name"]
        comment                       <~ element["cmt"]
        description                   <~ element["desc"]
        source                        <~ element["src"]
        symbol                        <~ element["sym"]
        type                          <~ element["type"]
        fix                           <~ element["fix"]
        satelites                     <~ element["sat"]
        horizontalDilutionOfPrecision <~ element["hdop"]
        verticalDilutionOfPrecision   <~ element["vdop"]
        positionDilutionOfPrecision   <~ element["pdop"]
        ageOfTheGpxData               <~ element["ageofdgpsdata"]
        dgpsStationType               <~ element["dgpsid"]
        time                          <~ element["time"]
        link                          <~ Link(gpx: element["link"])
    }

}
