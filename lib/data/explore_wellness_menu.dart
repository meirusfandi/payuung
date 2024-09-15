class ExploreWellnessMenu {
  final String title;
  final String description;
  final int value;
  final int discountValue;
  final String icon;
  final String code;
  final bool isDiscount;

  ExploreWellnessMenu({
    required this.title,
    required this.icon,
    required this.code,
    required this.isDiscount,
    required this.description,
    required this.value,
    required this.discountValue
  });
}

List<ExploreWellnessMenu> exploreWellness = [
  ExploreWellnessMenu(
      title: "Voucher Digital Indomart Rp 25.000",
      icon: 'img_indomaret',
      code: 'voucher_indomaret',
      description: "",
      value: 25000,
      discountValue: 0,
      isDiscount: false),
  ExploreWellnessMenu(
      title: "Voucher Digital H&M Rp 100.000",
      icon: 'img_hnm',
      code: 'voucher_hnm',
      description: "",
      value: 100000,
      discountValue: 0,
      isDiscount: false
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Alfamart Rp 25.000",
      icon: 'img_alfamart',
      code: 'voucher_alfamart',
      description: "",
      value: 25000,
      discountValue: 0,
      isDiscount: false
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Excelso Rp 50.000",
      icon: 'img_excelso',
      code: 'voucher_excelso',
      description: "",
      value: 50000,
      discountValue: 4,
      isDiscount: true
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Bakmi GM Rp 100.000",
      icon: 'img_bakmi_gm',
      code: 'voucher_bakmi_gm',
      description: "",
      value: 100000,
      discountValue: 5,
      isDiscount: true
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Keds Rp 50.000",
      icon: 'img_keds',
      code: 'voucher_keds',
      description: "",
      value: 50000,
      discountValue: 2,
      isDiscount: true
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Ace Hardware Rp 50.000",
      icon: 'img_ace_hardware',
      code: 'voucher_ace',
      description: "",
      value: 50000,
      discountValue: 0,
      isDiscount: false
  ),
  ExploreWellnessMenu(
      title: "Voucher Digital Haagen Dazs Rp 100.000",
      icon: 'img_haagen_dazs',
      code: 'voucher_haagen_dazs',
      description: "",
      value: 100000,
      discountValue: 25,
      isDiscount: true
  ),
];