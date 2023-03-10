import 'package:appbar_project/models/list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<cities> EuropeCities = <cities>[
      const cities(
        title: 'London',
        backgroundImg:
            "https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYyNDg1MjE3MTI1Mjc5Mzk4/topic-london-gettyimages-760251843-promo.jpg",
      ),
      const cities(
        title: 'Paris',
        backgroundImg:
            "https://www.fodors.com/wp-content/uploads/2018/10/HERO_UltimateParis_Heroshutterstock_112137761.jpg",
      ),
      const cities(
        title: 'Roma',
        backgroundImg:
            "https://avinor.no/globalassets/_reiselyst/destinasjoner/roma/roma-ny.png?preset=1000",
      ),
      const cities(
        title: 'Istanbul',
        backgroundImg: "https://www.melares.com/uploads/150616275.jpg",
      ),
      const cities(
        title: 'Madrid',
        backgroundImg:
            "https://assets3.thrillist.com/v1/image/3128243/1200x630/flatten;crop_down;webp=auto;jpeg_quality=70",
      ),
      const cities(
        title: 'Belgium',
        backgroundImg:
            "https://www.state.gov/wp-content/uploads/2018/11/Belgium-2109x1406.jpg",
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF191E2C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.bar_chart_rounded,
            size: 30,
            color: Colors.amber,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.amber,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Europe cities!',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.sort_rounded,
                  color: Colors.amber,
                )
              ],
            ),
          ),
          /////////////////////////////////////////////////////

          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: GridView(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  crossAxisCount: 2,
                  mainAxisExtent: 170,
                ),
                children: EuropeCities.map(
                  (po) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                po.backgroundImg,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 10,
                                    ),
                                    child: Text(
                                      po.title,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList()),
          ))
        ],
      ),
    );
  }
}
