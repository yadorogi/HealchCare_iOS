import SwiftUI

struct Chat1Cell: View {
    var body: some View {
        HStack {
            Image("img_profile_thumbnail")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgDrMarcusHorizon)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(145.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                    Text(StringConstants.kMsgIDonTHaveAny2)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(4.0))
                }
                .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(39.0),
                       alignment: .leading)
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLbl1024)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                    Image("img_checkmark")
                        .resizable()
                        .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(9.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(7.0))
                }
                .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(31.0),
                       alignment: .leading)
                .padding(.bottom, getRelativeHeight(4.0))
                .padding(.leading, getRelativeWidth(13.0))
            }
            .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(39.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(5.0))
            .padding(.leading, getRelativeWidth(15.0))
        }
        .frame(width: getRelativeWidth(331.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Chat1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Chat1Cell()
 }
 } */
