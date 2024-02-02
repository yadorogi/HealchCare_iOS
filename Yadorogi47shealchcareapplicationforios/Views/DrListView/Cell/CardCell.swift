import SwiftUI

struct CardCell: View {
    var body: some View {
        HStack {
            Image("img_profile_pic")
                .resizable()
                .frame(width: getRelativeWidth(109.0), height: getRelativeWidth(111.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgDrMarcusHorizon)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kLblChardiologist)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
                HStack {
                    Image("img_signal")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeWidth(13.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl472)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(33.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(13.0))
                HStack {
                    Image("img_linkedin")
                        .resizable()
                        .frame(width: getRelativeWidth(11.0), height: getRelativeWidth(13.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl800mAway)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(10.0))
            }
            .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(99.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(18.0))
        }
        .frame(width: getRelativeWidth(333.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0, bottomRight: 11.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                   bottomRight: 11.0)
                .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct CardCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardCell()
 }
 } */
