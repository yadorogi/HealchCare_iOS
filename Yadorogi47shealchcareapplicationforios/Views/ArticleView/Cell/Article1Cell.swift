import SwiftUI

struct Article1Cell: View {
    var body: some View {
        HStack {
            Image("img_thumbnail")
                .resizable()
                .frame(width: getRelativeWidth(57.0), height: getRelativeWidth(59.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                           bottomRight: 6.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgThe25Healthiest)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                HStack {
                    Text(StringConstants.kLblJun102021)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(2.0), height: getRelativeWidth(2.0),
                               alignment: .leading)
                        .clipShape(Circle())
                        .padding(.leading, getRelativeWidth(10.0))
                    Text(StringConstants.kLbl5minRead)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(10.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(10.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(53.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
            Text("Spacer")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
            Image("img_bookmark_cyan_300")
                .resizable()
                .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(15.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.trailing, getRelativeWidth(7.0))
        }
        .frame(width: getRelativeWidth(333.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0, bottomRight: 10.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                   bottomRight: 10.0)
                .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct Article1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Article1Cell()
 }
 } */
