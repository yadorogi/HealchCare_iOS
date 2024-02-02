import SwiftUI

struct ChatView: View {
    @StateObject var chatViewModel = ChatViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                    Text(StringConstants.kMsgDrMarcusHorizon)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    Image("img_group_266")
                        .resizable()
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(14.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        Text(StringConstants.kMsgConsultionStart)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgYouCanConsult)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(8.0))
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(75.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                            bottomRight: 11.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 11.0, topRight: 11.0, bottomLeft: 11.0,
                                               bottomRight: 11.0)
                            .fill(Color.clear.opacity(0.7)))
                    HStack {
                        Image("img_ellipse_27image_40x40")
                            .resizable()
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgDrMarcusHorizon)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(129.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Text(StringConstants.kLbl10MinAgo)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                        }
                        .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(37.0),
                               alignment: .bottom)
                        .padding(.leading, getRelativeWidth(13.0))
                    }
                    .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(20.0))
                    VStack {
                        Text(StringConstants.kMsgHelloHowCanI)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(36.0),
                           alignment: .leading)
                    .cornerRadius(0.0)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.trailing, getRelativeWidth(129.0))
                    VStack {
                        Text(StringConstants.kMsgIHaveSuffering)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(63.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(237.0), height: getRelativeHeight(82.0),
                           alignment: .trailing)
                    .cornerRadius(8.0)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.leading, getRelativeWidth(98.0))
                    HStack {
                        Image("img_ellipse_27image_40x40")
                            .resizable()
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgDrMarcusHorizon)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(129.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Text(StringConstants.kLbl5MinAgo)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(7.0))
                        }
                        .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(37.0),
                               alignment: .bottom)
                        .padding(.leading, getRelativeWidth(13.0))
                    }
                    .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    VStack {
                        Text(StringConstants.kMsgOkDoYouHave)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(58.0),
                           alignment: .leading)
                    .cornerRadius(0.0)
                    .padding(.top, getRelativeHeight(10.0))
                    .padding(.trailing, getRelativeWidth(113.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgIDonTHaveAny)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(42.0),
                                   alignment: .topLeading)
                            .padding(.trailing)
                    }
                    .frame(width: getRelativeWidth(237.0), height: getRelativeHeight(58.0),
                           alignment: .trailing)
                    .cornerRadius(8.0)
                    .padding(.top, getRelativeHeight(15.0))
                    .padding(.leading, getRelativeWidth(98.0))
                    HStack {
                        Image("img_ellipse_27image_40x40")
                            .resizable()
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgDrMarcusHorizon)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(129.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Text(StringConstants.kLblOnline)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(31.0),
                                       height: getRelativeHeight(13.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(36.0),
                               alignment: .center)
                        .padding(.leading, getRelativeWidth(13.0))
                    }
                    .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                    ZStack {
                        Image("img_group_141")
                            .resizable()
                            .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(5.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(13.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .cornerRadius(0.0)
                    .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(648.0),
                       alignment: .center)
                HStack {
                    HStack {
                        Spacer()
                        Image("img_attach")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                        TextField(StringConstants.kMsgTypeMessage, text: $chatViewModel.messageText)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(206.0), height: getRelativeHeight(49.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    Button(action: {
                        chatViewModel.nextScreen = "SignupView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSend)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(111.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.leading, getRelativeWidth(17.0))
                        }
                    })
                    .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    .padding(.leading, getRelativeWidth(17.0))
                }
                .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(20.0))
                Group {
                    NavigationLink(destination: SignupView(),
                                   tag: "SignupView",
                                   selection: $chatViewModel.nextScreen,
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
