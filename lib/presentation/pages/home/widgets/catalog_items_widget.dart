part of 'catalog_page_widget.dart';

final List<String> fakeDishes = [
  'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1588005923326-1fbd0adbcc10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1589354774422-2a9d9c0cb143?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
];

class CatalogItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Category(
      title: 'Блюда',
      child: Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.only(bottom: 100),
          shrinkWrap: true,
          itemCount: fakeDishes.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        height: 170,
                        child: Image.network(
                          fakeDishes[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Dishes'),
                      Icon(Icons.star),
                    ],
                  ),
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
        ),
      ),      
      // CarouselSlider(
      //   options: CarouselOptions(
      //     height: 200.0,
      //     enableInfiniteScroll: false,
      //     reverse: false,
      //   ),
      //   items: fakeDishes.map<Widget>((image) {
      //     return Container(
      //       padding: const EdgeInsets.all(8.0),
      //       height: MediaQuery.of(context).size.height / 3.2,
      //       width: MediaQuery.of(context).size.width,
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(8.0),
      //         child: Image.network(
      //           image,
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),
    );
  }
}