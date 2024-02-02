import SwiftUI

struct Drugs2Cell: View {
    var body: some View {
        HStack {
            Image("img_drug_thumbnail_72x72")
                .resizable()
                .frame(width: getRelativeWidth(70.0), height: getRelativeWidth(72.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
                .padding(.vertical, getRelativeHeight(2.0))
                .padding(.leading, getRelativeWidth(6.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(85.0),
                       alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblObhCombi)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kLbl75ml)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(25.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                HStack {
                    Image("img_component_3")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl1)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(10.0))
                    Button(action: {}, label: {
                        Image("img_facebook_primary")
                    })
                    .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(13.0))
                }
                .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(25.0))
            }
            .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(85.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(4.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(87.0),
                       alignment: .leading)
            VStack {
                Image("img_thumbs_up_gray_500")
                    .resizable()
                    .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLbl999)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(47.0))
            }
            .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(87.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(4.0))
        }
        .frame(width: getRelativeWidth(332.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0, bottomRight: 11.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                   bottomRight: 11.0)
                .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct Drugs2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Drugs2Cell()
 }
 } */
