import SwiftUI

struct MessageTabContainerView: View {
    @StateObject var messageTabContainerViewModel = MessageTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                HStack {
                    Text(StringConstants.kLblMessages)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    ZStack(alignment: .bottomTrailing) {
                        Image("img_rewind")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(9.0))
                        Image("img_component_1")
                            .resizable()
                            .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(10.0))
                    }
                    .hideNavigationBar()
                    .padding(.horizontal, getRelativeWidth(14.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                VStack {
                    TabsView(tabs: $messageTabContainerViewModel.tabTabviewList,
                             selectedTabIndex: $messageTabContainerViewModel.selectedTabviewIndex,
                             selectedTab: messageTabContainerViewModel.tabTabviewList[0],
                             fontSize: 14.0,
                             fontName: FontScheme.kInterRegular(size: getRelativeHeight(14.0)),
                             cornerRadius: 8.0,
                             type: .customBackground)
                        .frame(height: getRelativeHeight(46.0))
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0))
                    PagerView(content: {
                        Message1View()
                        Message1View()
                        Message1View()
                    }, tabIndex: $messageTabContainerViewModel.selectedTabviewIndex,
                    pagers: $messageTabContainerViewModel.tabTabviewList)
                        .frame(height: getRelativeHeight(575.0), alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(621.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(46.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0),
                   alignment: .center)
            FabButton(action: {}, image: "img_user_primary",
                      frameInfo: (Double(getRelativeWidth(55.0)), Double(getRelativeHeight(55.0))))
                .frame(width: getRelativeWidth(55.0), height: getRelativeWidth(55.0),
                       alignment: .bottomTrailing)
                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                           bottomRight: 27.0))
                .padding(.top, getRelativeHeight(610.0))
                .padding(.leading, getRelativeWidth(300.0))
        }
        .hideNavigationBar()
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0))
    }
}

struct MessageTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MessageTabContainerView()
    }
}
