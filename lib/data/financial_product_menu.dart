class FinancialProductMenu {
  final String title;
  final String icon;
  final String code;
  final bool isNew;

  FinancialProductMenu({required this.title, required this.icon, required this.code, required this.isNew});
}

List<FinancialProductMenu> financialMenu = [
  FinancialProductMenu(title: "Urun", icon: 'ic_sharing', code: 'urun', isNew: true),
  FinancialProductMenu(title: "Pembiayaan Porsi Haji", icon: 'ic_haj_portion', code: 'porsi_haji', isNew: false),
  FinancialProductMenu(title: "Financial Check Up", icon: 'ic_financial_checkup', code: 'financial_checkup', isNew: false),
  FinancialProductMenu(title: "Asuransi Mobil", icon: 'ic_car_insurance', code: 'car_insurance', isNew: false),
  FinancialProductMenu(title: "Asuransi Properti", icon: 'ic_build_insurance', code: 'property_insurance', isNew: false),
];