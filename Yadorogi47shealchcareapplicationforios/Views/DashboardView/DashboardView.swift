import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(StringConstants.kMsgFindYourDesire)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(20.0))
                    Image("img_user")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(26.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(20.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(72.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            Spacer()
                            Image("img_contrast")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                                .padding(.leading, getRelativeWidth(17.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            TextField(StringConstants.kMsgSearchDoctorDrugs,
                                      text: $dashboardViewModel.search)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                bottomRight: 8.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        TicketCell()
                                            .onTapGesture {
                                                dashboardViewModel.nextScreen = "DrListView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(335.0), alignment: .center)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgEarlyProtection)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(54.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblLearnMore)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(106.0),
                                               height: getRelativeHeight(26.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                                   bottomLeft: 4.0,
                                                                   bottomRight: 4.0))
                                        .padding(.top, getRelativeHeight(7.0))
                                }
                            })
                            .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(26.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0))
                            .padding(.top, getRelativeHeight(7.0))
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(116.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0))
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack {
                            Text(StringConstants.kLblTopDoctor)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(86.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeAll)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(38.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(5.0))
                                .onTapGesture {
                                    dashboardViewModel.nextScreen = "DrListView"
                                }
                        }
                        .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(42.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        DoctorCell()
                                            .onTapGesture {
                                                dashboardViewModel.nextScreen = "DrDetailsView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(354.0), alignment: .trailing)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(20.0))
                        HStack {
                            Text(StringConstants.kLblHealtArticle)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeAll)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(38.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .onTapGesture {
                                    dashboardViewModel.nextScreen = "ArticleView"
                                }
                        }
                        .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(31.0))
                        .padding(.leading, getRelativeWidth(20.0))
                        .padding(.trailing, getRelativeWidth(23.0))
                        HStack {
                            Image("img_thumbnail")
                                .resizable()
                                .frame(width: getRelativeWidth(55.0),
                                       height: getRelativeWidth(55.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgThe25Healthiest)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.semibold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(179.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                HStack {
                                    Text(StringConstants.kLblJun102021)
                                        .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                                        .fontWeight(.medium)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                    ZStack {}
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(2.0),
                                               height: getRelativeWidth(2.0), alignment: .top)
                                        .clipShape(Circle())
                                        .padding(.leading, getRelativeWidth(5.0))
                                    Text(StringConstants.kLbl5minRead)
                                        .font(FontScheme.kInterMedium(size: getRelativeHeight(8.0)))
                                        .fontWeight(.medium)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(10.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(5.0))
                                }
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(10.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(8.0))
                            }
                            .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(48.0),
                                   alignment: .top)
                            .padding(.leading, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(67.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.horizontal, getRelativeWidth(20.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .padding(.bottom, getRelativeHeight(5.0))
                }
                .padding(.top, getRelativeHeight(13.0))
                Group {
                    NavigationLink(destination: DrListView(),
                                   tag: "DrListView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AmbulanceView(),
                                   tag: "AmbulanceView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ArticleView(),
                                   tag: "ArticleView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DrDetailsView(),
                                   tag: "DrDetailsView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: PharmacyView(),
                                   tag: "PharmacyView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
