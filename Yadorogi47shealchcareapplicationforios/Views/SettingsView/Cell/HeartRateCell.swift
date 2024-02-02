import SwiftUI

struct HeartRateCell: View {
    var body: some View {
        VStack {
            Image("img_television")
                .resizable()
                .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(32.0),
                       alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kLblHeartRate)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(10.0)))
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(5.0))
            Text(StringConstants.kLbl215bpm)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(4.0))
        }
        .frame(width: getRelativeWidth(61.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct HeartRateCell_Previews: PreviewProvider {

 static var previews: some View {
 			HeartRateCell()
 }
 } */
