import SwiftUI

struct AmbulanceView: View {
    @StateObject var ambulanceViewModel = AmbulanceViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                Image("img_arrow_left")
                    .resizable()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.leading, getRelativeWidth(21.0))
                    .onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                Text(StringConstants.kLblAmbulance)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                   alignment: .leading)
            GoogleMapView(zoomEnable: .constant(false), defaultZoomLevel: .constant(5.0),
                          locationEnable: .constant(false))
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(710.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(13.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct AmbulanceView_Previews: PreviewProvider {
    static var previews: some View {
        AmbulanceView()
    }
}
