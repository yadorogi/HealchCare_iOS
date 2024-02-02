import SwiftUI

struct ScheduleTabContainerView: View {
    @StateObject var scheduleTabContainerViewModel = ScheduleTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblSchedule)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(16.0))
                ZStack(alignment: .bottomTrailing) {
                    Image("img_user_onprimary")
                        .resizable()
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
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
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(47.0),
                   alignment: .leading)
            VStack {
                TabsView(tabs: $scheduleTabContainerViewModel.tabTabviewList,
                         selectedTabIndex: $scheduleTabContainerViewModel.selectedTabviewIndex,
                         selectedTab: scheduleTabContainerViewModel.tabTabviewList[0],
                         fontSize: 14.0,
                         fontName: FontScheme.kInterRegular(size: getRelativeHeight(14.0)),
                         cornerRadius: 8.0,
                         type: .customBackground)
                    .frame(height: getRelativeHeight(46.0))
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                PagerView(content: {
                    Schedule1View()
                    Schedule1View()
                    Schedule1View()
                }, tabIndex: $scheduleTabContainerViewModel.selectedTabviewIndex,
                pagers: $scheduleTabContainerViewModel.tabTabviewList)
                    .frame(height: getRelativeHeight(603.0), alignment: .center)
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(649.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0))
        .hideNavigationBar()
    }
}

struct ScheduleTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleTabContainerView()
    }
}
