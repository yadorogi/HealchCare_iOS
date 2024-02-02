import SwiftUI

struct Message1View: View {
    @StateObject var message1ViewModel = Message1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 2, id: \.self) { index in
                                Chat1Cell()
                                    .onTapGesture {
                                        message1ViewModel.nextScreen = "ChatView"
                                    }
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(335.0), alignment: .center)
                .padding(.horizontal, getRelativeWidth(20.0))
                Group {
                    NavigationLink(destination: ChatView(),
                                   tag: "ChatView",
                                   selection: $message1ViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(575.0),
                   alignment: .center)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct Message1View_Previews: PreviewProvider {
    static var previews: some View {
        Message1View()
    }
}
