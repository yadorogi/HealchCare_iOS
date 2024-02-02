import SwiftUI

struct ArticleView: View {
    @StateObject var articleViewModel = ArticleViewModel()
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
                Text(StringConstants.kLblArticles)
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
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Spacer()
                    Image("img_contrast")
                        .resizable()
                        .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.bottom, getRelativeHeight(9.0))
                        .padding(.leading, getRelativeWidth(17.0))
                        .padding(.trailing, getRelativeWidth(12.0))
                    TextField(StringConstants.kMsgSearchArticle, text: $articleViewModel.search)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(40.0),
                       alignment: .leading)
                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                        bottomRight: 8.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(Color.clear.opacity(0.7)))
                Text(StringConstants.kMsgPopularArticles)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(20.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(23.0))
                Text("topics")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(50.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
                HStack {
                    Text(StringConstants.kMsgTrendingArticles)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                    Spacer()
                    Text(StringConstants.kLblSeeAll)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: getRelativeWidth(333.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(23.0))
                HStack(spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                TrendingArticleCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(323.0), alignment: .leading)
                .padding(.top, getRelativeHeight(11.0))
                .padding(.trailing, getRelativeWidth(12.0))
                HStack {
                    Text(StringConstants.kMsgRelatedArticles)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                    Spacer()
                    Text(StringConstants.kLblSeeAll)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(16.0))
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                Article1Cell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(335.0), alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(724.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView()
    }
}
