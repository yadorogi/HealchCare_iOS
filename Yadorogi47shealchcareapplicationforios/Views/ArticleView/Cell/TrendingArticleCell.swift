import SwiftUI

struct TrendingArticleCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topTrailing) {
                Image("img_rectangle_54")
                    .resizable()
                    .frame(width: getRelativeWidth(136.0), height: getRelativeHeight(87.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                Image("img_bookmark")
                    .resizable()
                    .frame(width: getRelativeWidth(13.0), height: getRelativeWidth(15.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.bottom, getRelativeHeight(66.65))
                    .padding(.leading, getRelativeWidth(120.99))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(136.0), height: getRelativeHeight(87.0),
                   alignment: .leading)
            Text(StringConstants.kLblCovid19)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                .fontWeight(.medium)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(13.0))
                .padding(.leading, getRelativeWidth(6.0))
            Text(StringConstants.kMsgComparingTheAstrazeneca)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(72.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(5.0))
            HStack {
                Text(StringConstants.kLblJun122021)
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
                Text(StringConstants.kLbl6MinRead)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                    .fontWeight(.medium)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(10.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(4.0))
            }
            .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(10.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(4.0))
        }
        .frame(width: getRelativeWidth(151.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0, bottomRight: 10.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                   bottomRight: 10.0)
                .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct TrendingArticleCell_Previews: PreviewProvider {

 static var previews: some View {
 			TrendingArticleCell()
 }
 } */
