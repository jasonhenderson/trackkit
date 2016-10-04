//
//  TrackKit
//
//  Created by Jelle Vandebeeck on 15/03/16.
//

import AEXML

extension Route: Gpxable {

    convenience init?(gpx element: AEXMLElement) {
        // When the element is an error, don't create the instance.
        if let _ = element.error {
            return nil
        }

        // When there are not route points, don't create the instance.
        var routePoints: [Point]? = nil
        routePoints <~ element["rtept"].all?.flatMap { Point(gpx: $0) }
        if routePoints == nil {
            return nil
        }

        self.init()

        name        <~ element["name"]
        comment     <~ element["cmt"]
        description <~ element["desc"]
        source      <~ element["src"]
        number      <~ element["number"]
        type        <~ element["type"]
        link        <~ Link(gpx: element["link"])
        points      = routePoints
    }

}
