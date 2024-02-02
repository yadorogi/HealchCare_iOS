import SwiftUI

struct DashboardContainerView: View {
    @StateObject var dashboardContainerViewModel = DashboardContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Text("Content")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                Text("bottomBar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                           alignment: .center)
                Group {
                    NavigationLink(destination: PharmacyView(),
                                   tag: "PharmacyView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AmbulanceView(),
                                   tag: "AmbulanceView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ArticleView(),
                                   tag: "ArticleView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DrListView(),
                                   tag: "DrListView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DrDetailsView(),
                                   tag: "DrDetailsView",
                                   selection: $dashboardContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {}
    }
}

struct DashboardContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardContainerView()
    }
}
