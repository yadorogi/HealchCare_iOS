import SwiftUI

struct DrugDetailsView: View {
    @StateObject var drugDetailsViewModel = DrugDetailsViewModel()
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
                    Text(StringConstants.kLblDrugsDetails)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                    Image("img_cart")
                        .resizable()
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(14.0))
                        .onTapGesture {
                            drugDetailsViewModel.nextScreen = "CartView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                       alignment: .leading)
                VStack {
                    Image("img_drug_image")
                        .resizable()
                        .frame(width: getRelativeWidth(147.0), height: getRelativeWidth(147.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipShape(Circle())
                        .background(RoundedCorners(topLeft: 73.0, topRight: 73.0, bottomLeft: 73.0,
                                                   bottomRight: 73.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblObhCombi)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(112.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                Text(StringConstants.kLbl75ml)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(38.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(7.0))
                            }
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(52.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_favorite_primarycontainer")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(25.0))
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(52.0),
                               alignment: .leading)
                        HStack {
                            RatingBarView(selected: $drugDetailsViewModel.ratingbarRating,
                                          heightWeightImage: getRelativeWidth(14.0))
                                .frame(width: getRelativeWidth(71.0),
                                       height: getRelativeHeight(14.0), alignment: .center)
                            Text(StringConstants.kLbl40)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(23.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(5.0))
                        }
                        .frame(width: getRelativeWidth(99.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        HStack {
                            Image("img_component_3")
                                .resizable()
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeWidth(32.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl1)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(10.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(23.0))
                            Button(action: {}, label: {
                                Image("img_facebook_primary")
                            })
                            .frame(width: getRelativeWidth(32.0), height: getRelativeWidth(32.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(29.0))
                            Text("Spacer")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeHeight(30.0))
                            Text(StringConstants.kLbl999)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(29.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(140.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(65.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblDescription)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(90.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgObhCombiIsA)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(331.0), height: getRelativeHeight(72.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(6.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(98.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(41.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(646.0),
                       alignment: .center)
                HStack {
                    Button(action: {}, label: {
                        Image("img_cart_cyan_300")
                    })
                    .frame(width: getRelativeWidth(50.0), height: getRelativeWidth(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    Button(action: {
                        drugDetailsViewModel.nextScreen = "CartView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblBuyNow)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(16.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(266.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0))
                                .padding(.leading, getRelativeWidth(19.0))
                        }
                    })
                    .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(50.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0))
                    .padding(.leading, getRelativeWidth(19.0))
                }
                .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(50.0),
                       alignment: .center)
                .padding(.horizontal, getRelativeWidth(20.0))
                Group {
                    NavigationLink(destination: CartView(),
                                   tag: "CartView",
                                   selection: $drugDetailsViewModel.nextScreen,
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

struct DrugDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DrugDetailsView()
    }
}
