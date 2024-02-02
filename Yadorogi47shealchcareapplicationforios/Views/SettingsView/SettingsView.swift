import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                VStack {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                               alignment: .center)
                        .clipShape(Circle())
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                               alignment: .center)
                        .clipShape(Circle())
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(4.0), height: getRelativeWidth(4.0),
                               alignment: .center)
                        .clipShape(Circle())
                }
                .padding(.horizontal, getRelativeWidth(20.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack {
                ZStack(alignment: .center) {
                    Text(StringConstants.kLblAmeliaRenata)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(101.24))
                        .padding(.bottom, getRelativeHeight(102.76))
                        .padding(.horizontal, getRelativeWidth(82.0))
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_profile")
                                .resizable()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            ZStack {
                                Image("img_camera")
                                    .resizable()
                                    .frame(width: getRelativeWidth(10.0),
                                           height: getRelativeWidth(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.horizontal, getRelativeWidth(3.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                                   alignment: .bottomTrailing)
                            .clipShape(Circle())
                            .padding(.top, getRelativeHeight(59.0))
                            .padding(.leading, getRelativeWidth(60.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(80.0), height: getRelativeWidth(80.0),
                               alignment: .center)
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        HeartRateCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(290.0), alignment: .center)
                        .padding(.top, getRelativeHeight(71.0))
                    }
                    .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(226.0),
                           alignment: .center)
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(226.0),
                       alignment: .center)
                VStack {
                    HStack {
                        Button(action: {}, label: {
                            Image("img_favorite")
                        })
                        .frame(width: getRelativeWidth(43.0), height: getRelativeWidth(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                                   bottomRight: 21.0))
                        Text(StringConstants.kLblMySaved)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(24.0))
                        Image("img_arrow_right")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_megaphone")
                        })
                        .frame(width: getRelativeWidth(43.0), height: getRelativeWidth(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                                   bottomRight: 21.0))
                        Text(StringConstants.kLblAppointment)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(149.0), height: getRelativeHeight(24.0))
                        Image("img_arrow_right")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_thumbs_up_cyan_300")
                        })
                        .frame(width: getRelativeWidth(43.0), height: getRelativeWidth(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                                   bottomRight: 21.0))
                        Text(StringConstants.kLblPaymentMethod)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(118.0), height: getRelativeHeight(24.0))
                        Image("img_arrow_right")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.bottom, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_user_cyan_300_43x43")
                        })
                        .frame(width: getRelativeWidth(43.0), height: getRelativeWidth(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                                   bottomRight: 21.0))
                        Text(StringConstants.kLblFaqs)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.bottom, getRelativeHeight(10.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(209.0), height: getRelativeHeight(24.0))
                        Image("img_arrow_right")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(13.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                    HStack {
                        Button(action: {}, label: {
                            Image("img_video_camera")
                        })
                        .frame(width: getRelativeWidth(43.0), height: getRelativeWidth(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 21.0, topRight: 21.0, bottomLeft: 21.0,
                                                   bottomRight: 21.0))
                        Text(StringConstants.kLblHelp)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(18.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(214.0), height: getRelativeHeight(24.0))
                        Image("img_arrow_right")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(43.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(13.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(409.0),
                       alignment: .center)
                .cornerRadius(30.0)
                .padding(.top, getRelativeHeight(38.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(657.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(718.0))
        .hideNavigationBar()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
