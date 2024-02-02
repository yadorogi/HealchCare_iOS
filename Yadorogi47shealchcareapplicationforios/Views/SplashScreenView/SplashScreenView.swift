import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(106.0))
                Image("img_hi_doc_logo")
                    .resizable()
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(368.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Button(action: {
                    splashScreenViewModel.nextScreen = "LoginView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblLogin)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                    bottomRight: 8.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(87.0))
                            .padding(.trailing, getRelativeWidth(6.0))
                    }
                })
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                        bottomRight: 8.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 2))
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(87.0))
                .padding(.trailing, getRelativeWidth(6.0))
                Button(action: {
                    splashScreenViewModel.nextScreen = "SignupView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                       bottomRight: 8.0))
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.trailing, getRelativeWidth(6.0))
                    }
                })
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
                .padding(.top, getRelativeHeight(15.0))
                .padding(.trailing, getRelativeWidth(6.0))
                Group {
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $splashScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $splashScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
