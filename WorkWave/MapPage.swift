//
//  MapPage.swift
//  WorkWave
//
//  Created by Scholar on 7/17/24.
//

import SwiftUI
import MapKit

struct MapPage: View {
        let aventura = CLLocationCoordinate2D(
                latitude: 25.95711804076231,
                longitude: -80.14282433287394)
            
            let wynwoodwalls = CLLocationCoordinate2D(
                latitude:25.80188713285414,
                longitude:-80.1993411845667)
            
            let southbeach = CLLocationCoordinate2D(
                latitude:25.780831049295138,
                longitude: -80.12834337299442)
            
            let ftlbeach = CLLocationCoordinate2D(
                latitude:26.136430105857773,
                longitude: -80.10347968391535)
            
            let frostmuseum = CLLocationCoordinate2D(
                latitude:25.785658182835746,
                longitude: -80.18786834230679)
            
            let evergladespark =
            CLLocationCoordinate2D(
                latitude: 25.79120796011077,
                longitude: -80.13103847256701)
            
            let hollywoodbeach = CLLocationCoordinate2D(
                    latitude: 26.012447831565705,
                    longitude: -80.1160363643584)

            let perezmuseum = CLLocationCoordinate2D(
                    latitude: 25.78637023013,
                    longitude: -80.18623412045986)
            
            let fmuseum = CLLocationCoordinate2D(
                    latitude: 25.78561671007427,
                    longitude: -80.18788636110321)

            let zoomiami = CLLocationCoordinate2D(
                    latitude: 25.60978332307911,
                    longitude: -80.39643779163109)

            let lasolas = CLLocationCoordinate2D(
                    latitude: 26.119828773119778,
                    longitude: -80.12399520510598)

            let morikamimuseum = CLLocationCoordinate2D( latitude: 26.429298642225245,
                longitude: -80.15648552043568)

            let fairchildgardens = CLLocationCoordinate2D(
                latitude: 25.71082069606784,
                longitude: -80.26642250872278)

            let daniabeach = CLLocationCoordinate2D(
                latitude: 26.08851736933196,
                longitude: -80.1034841261018)

            let keybiscaynebeach = CLLocationCoordinate2D(
                latitude: 25.695155518609294,
                longitude: -80.15703090260395)
            
            var body: some View {
                Map() {
                    
                    Marker("Aventura Mall", coordinate: aventura)
                        .tint(.red)
                    
                    Marker("Wynwood Walls", coordinate: wynwoodwalls)
                        .tint(.red)
                    
                    Marker("South Beach", coordinate: southbeach)
                        .tint(.yellow)
                    Marker("Fort Lauderdale Beach", coordinate: ftlbeach)
                        .tint(.yellow)
                    Marker("Frost Museum", coordinate: frostmuseum)
                        .tint(.blue)
                    Marker("Everglades National Park", coordinate: evergladespark)
                        .tint(.green
                        )
                    Marker("Hollywood Beach", coordinate: hollywoodbeach)
                        .tint(.yellow)

                    Marker("Perez Art Museum", coordinate: perezmuseum)
                        .tint(.red)
                    
                    Marker("Frost Museum", coordinate: fmuseum)
                    .tint(.blue)

                    Marker("Zoo Miami", coordinate: zoomiami)
                    .tint(.blue)

                    Marker("Las Olas", coordinate: lasolas)
                    .tint(.yellow)

                    Marker("Morikami Museum", coordinate: morikamimuseum)
                    .tint(.green)

                    Marker("Fairchild Tropical Botanic Gardens", coordinate: fairchildgardens)
                    .tint(.green)

                    Marker("Key Biscayne Beach", coordinate: keybiscaynebeach)
                    .tint(.yellow)

                }
                .mapStyle(.hybrid)
                }
            }

#Preview {
    MapPage()
}
