import GoogleMaps
import SwiftUI

/**
  GoogleMapView wrapper for `GMSMapView` so it can be used in SwiftUI

  # Input Variable: #

  - `zoomEnable`: Bool variable to enable zoom in map.

  - `defaultZoomLevel`: default zoom level in map.

  - `locationEnable`: Bool variable for enable user currunt location.

  # Example #
 ```
  GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0), locationEnable: .constant(true))
 ```
 */
struct GoogleMapView: UIViewRepresentable {
    @ObservedObject var locationManager = LocationManager()

    private let gmsMapView = GMSMapView(frame: .zero)
    @Binding var zoomEnable: Bool
    @Binding var defaultZoomLevel: Float
    @Binding var locationEnable: Bool

    func makeUIView(context: Context) -> GMSMapView {
        locationManager.updatingLocation(locationEnable)
        gmsMapView.delegate = context.coordinator
        gmsMapView.isUserInteractionEnabled = true
        gmsMapView.isMyLocationEnabled = locationEnable
        gmsMapView.settings.zoomGestures = zoomEnable
        gmsMapView.settings.myLocationButton = locationEnable
        return gmsMapView
    }

    func updateUIView(_: GMSMapView, context _: Context) {
        // When the locationManager publishes updates, respond to them
        if let myLocation = locationManager.lastLocation {
            gmsMapView.animate(toLocation: myLocation.coordinate)
            print("User's location: \(myLocation)")
        }
        gmsMapView.animate(toZoom: defaultZoomLevel)
    }

    func makeCoordinator() -> MapViewCoordinator {
        return MapViewCoordinator(self)
    }

    final class MapViewCoordinator: NSObject, GMSMapViewDelegate {
        var mapView: GoogleMapView

        init(_ mapView: GoogleMapView) {
            self.mapView = mapView
        }
    }
}
