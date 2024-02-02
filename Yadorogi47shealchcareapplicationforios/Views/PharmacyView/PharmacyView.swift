import SwiftUI

struct PharmacyView: View {
    @StateObject var pharmacyViewModel = PharmacyViewModel()
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
                    Text(StringConstants.kLblPharmacy)
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
                            pharmacyViewModel.nextScreen = "CartView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(44.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        Spacer()
                        Image("img_contrast")
                            .resizable()
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(17.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kMsgSearchDrugCategory,
                                  text: $pharmacyViewModel.search)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(40.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                            bottomRight: 8.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.horizontal, getRelativeWidth(20.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgOrderQuicklyW)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(54.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(4.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgUploadPrescription)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(155.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                               bottomLeft: 4.0, bottomRight: 4.0))
                                    .padding(.top, getRelativeHeight(7.0))
                            }
                        })
                        .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(26.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                   bottomRight: 4.0))
                        .padding(.top, getRelativeHeight(7.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(116.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                               bottomRight: 10.0))
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
                    HStack {
                        Text(StringConstants.kLblPopularProduct)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblSeeAll)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(52.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    DrugsCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(354.0), alignment: .trailing)
                    .padding(.top, getRelativeHeight(23.0))
                    .padding(.leading, getRelativeWidth(21.0))
                    HStack {
                        Text(StringConstants.kLblProductOnSale)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblSeeAll)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(15.0),
                                   alignment: .topLeading)
                            .padding(.bottom, getRelativeHeight(4.0))
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(20.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    .padding(.horizontal, getRelativeWidth(20.0))
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    Drugs1Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(354.0), alignment: .trailing)
                    .padding(.top, getRelativeHeight(11.0))
                    .padding(.leading, getRelativeWidth(21.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(724.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: CartView(),
                                   tag: "CartView",
                                   selection: $pharmacyViewModel.nextScreen,
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

struct PharmacyView_Previews: PreviewProvider {
    static var previews: some View {
        PharmacyView()
    }
}
