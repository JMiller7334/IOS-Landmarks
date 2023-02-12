//
//  MapView.swift
//  Landmarks
//
//  Created by student on 2/11/23.
//

import SwiftUI
import MapKit //imports map stuff.

struct MapView: View {
    
    //Below creates a value that can be modified from different views. this allows for the view to be updated else where and for changes to be made.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region) //using the data above to create a map element to the screen.
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
