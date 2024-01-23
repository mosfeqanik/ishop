import 'package:ecommerce1_project/modals/Company_list.dart';
import 'package:ecommerce1_project/modals/products_list.dart';
import 'package:ecommerce1_project/screens/components/box_decoration.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Company> Companies = [
    Company(
      imageUrl:
          'https://www.pngitem.com/pimgs/m/508-5082031_clothes-brand-logo-png-transparent-png.png',
      name: 'Zara'
    ),
    Company(
      imageUrl:
          'https://www.kindpng.com/picc/m/83-838493_fashion-brands-logo-png-transparent-png.png',
      name: 'lee'
    ),
    Company(
      imageUrl:
          'https://icon2.cleanpng.com/20180622/jjh/kisspng-t-shirt-levi-strauss-co-shopping-centre-factory-clothing-brands-5b2d21ff37ad68.8354469815296844792281.jpg',
        name: 'Levi\'s'
    ),
    Company(
      imageUrl:
          'https://cdn.freebiesupply.com/images/thumbs/1x/calvin-klein-logo.png',
        name: 'Calvin Klein'

    ),
    Company(
      imageUrl:
          'https://e7.pngegg.com/pngimages/449/489/png-clipart-puma-clothing-sneakers-brand-shopping-others-miscellaneous-text-thumbnail.png',
        name: 'PUMA'

    ),
    Company(
      imageUrl: 'https://cdn.freebiesupply.com/logos/thumbs/1x/vogue-logo.png',
        name: 'Vogue'

    ),
    Company(
      imageUrl:
          'https://www.pngkit.com/png/detail/986-9860732_fila-logo-png-clothing-brand-logo-hd.png',
        name: 'FiLa'

    ),
    Company(
      imageUrl:
          'https://img1.pnghut.com/3/16/20/1re8M7h0iX/calvin-klein-clothing-brand-logo-symbol.jpg',
        name: 'Calvin Klein'

    ),
    Company(
      imageUrl:
          'https://img1.pnghut.com/3/3/4/7pb4K4krXy/tommy-hilfiger-piqu-c3-a9-text-joint-designer-clothing.jpg',
        name: 'RALPH LAUREN'

    ),
    Company(
      imageUrl:
          'https://mpng.subpng.com/20180411/req/kisspng-h-m-fashion-clothing-retail-brands-5ace1da2895467.6860470815234574425625.jpg',
      name: "H & M"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: AppColors.kSecondaryGreyColor,
                        size: 25,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  color: AppColors.kSecondaryGreyColor,
                                ),
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: AppColors.kSecondaryGreyColor,
                              ),
                              suffixIcon: Icon(
                                Icons.search_outlined,
                                color: AppColors.kSecondaryGreyColor,
                                size: 20,
                              ),
                            ),
                            onTap: () {}),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              Container(
                height: 600,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Companies.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      margin: EdgeInsets.all(8),
                      decoration: buildBoxDecoration(),
                      child: Column(
                        children: [
                           Image.network(
                            Companies[index].imageUrl!,
                            height: 90,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            Companies[index].name!,
                            style: TextThemes.TextCategoryGridGrey,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
