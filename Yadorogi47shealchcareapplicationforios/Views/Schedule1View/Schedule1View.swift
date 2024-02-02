import SwiftUI

struct Schedule1View: View {
    @StateObject var schedule1ViewModel = Schedule1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 1, id: \.self) { index in
                                Schedule2Cell(cancelbuttonClick: {
                                    schedule1ViewModel.nextScreen = "SignupView"
                                }, reschedulebuttonClick: {
                                    schedule1ViewModel.nextScreen = "SignupView"
                                })
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(335.0), alignment: .center)
                .padding(.horizontal, getRelativeWidth(20.0))
                Group {
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $schedule1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(604.0),
                   alignment: .center)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct Schedule1View_Previews: PreviewProvider {
    static var previews: some View {
        Schedule1View()
    }
}
