import SwiftUI

struct DrListView: View {
    @StateObject var drListViewModel = DrListViewModel()
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
                Text(StringConstants.kLblTopDoctor)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                Image("img_notification")
                    .resizable()
                    .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.horizontal, getRelativeWidth(14.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                   alignment: .leading)
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ... 3, id: \.self) { index in
                            CardCell()
                        }
                    }
                }
            }
            .frame(width: getRelativeWidth(335.0), alignment: .center)
            .padding(.top, getRelativeHeight(24.0))
            .padding(.horizontal, getRelativeWidth(20.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct DrListView_Previews: PreviewProvider {
    static var previews: some View {
        DrListView()
    }
}
