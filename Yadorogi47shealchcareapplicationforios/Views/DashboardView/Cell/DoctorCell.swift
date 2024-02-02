import SwiftUI

struct DoctorCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_ellipse_27image")
                .resizable()
                .frame(width: getRelativeWidth(66.0), height: getRelativeWidth(68.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
                .padding(.top, getRelativeHeight(11.0))
            Text(StringConstants.kMsgDrMarcusHorizo)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(18.0))
            Text(StringConstants.kLblChardiologist)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
            HStack {
                HStack {
                    Image("img_signal")
                        .resizable()
                        .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(10.0),
                               alignment: .leading)
                        .scaledToFit()
                    Spacer()
                    Text(StringConstants.kLbl47)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(10.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                }
                .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                Text(StringConstants.kLbl800mAway)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(23.0))
            }
            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(13.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(6.0))
        }
        .frame(width: getRelativeWidth(116.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0, bottomRight: 11.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                   bottomRight: 11.0)
                .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct DoctorCell_Previews: PreviewProvider {

 static var previews: some View {
 			DoctorCell()
 }
 } */
