import SwiftUI

struct SignupView: View {
    @StateObject var signupViewModel = SignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_hi_doc_logo_42x115")
                        .resizable()
                        .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(42.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Text(StringConstants.kMsgLetSGetStarted)
                        .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(27.0))
                    Text(StringConstants.kMsgCreateAnNewAccount)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                        .fontWeight(.medium)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(15.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(115.0),
                       alignment: .center)
                HStack {
                    Spacer()
                    Image("img_lock")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    TextField(StringConstants.kLblFullName, text: $signupViewModel.fullnameText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(29.0))
                HStack {
                    Spacer()
                    Image("img_system_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    TextField(StringConstants.kLblYourEmail, text: $signupViewModel.emailText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(8.0))
                HStack {
                    Spacer()
                    Image("img_location")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    SecureField(StringConstants.kLblPassword, text: $signupViewModel.passwordText)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(8.0))
                HStack {
                    Spacer()
                    Image("img_location")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(12.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    SecureField(StringConstants.kLblPasswordAgain,
                                text: $signupViewModel.passwordText1)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(8.0))
                Button(action: {}, label: {
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
                            .padding(.top, getRelativeHeight(39.0))
                    }
                })
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                           bottomRight: 8.0))
                .padding(.top, getRelativeHeight(39.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(158.0))
                Text(StringConstants.kMsgHaveAnAccount)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(144.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .onTapGesture {
                        signupViewModel.nextScreen = "LoginView"
                    }
                Group {
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $signupViewModel.nextScreen,
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

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
