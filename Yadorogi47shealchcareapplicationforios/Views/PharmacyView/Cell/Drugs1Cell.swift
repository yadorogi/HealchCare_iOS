import SwiftUI

struct Drugs1Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_drug_thumbnail_1")
                .resizable()
                .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(50.0),
                       alignment: .leading)
                .scaledToFit()
                .clipShape(Circle())
                .clipShape(Circle())
                .padding(.top, getRelativeHeight(16.0))
            Text(StringConstants.kLblObhCombi)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
            Text(StringConstants.kLbl75ml)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
            HStack {
                Text(StringConstants.kLbl999)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                Button(action: {}, label: {
                    Image("img_facebook_primary")
                })
                .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(18.0),
                       alignment: .center)
                .padding(.leading, getRelativeWidth(45.0))
            }
            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(19.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(4.0))
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

/* struct Drugs1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Drugs1Cell()
 }
 } */
