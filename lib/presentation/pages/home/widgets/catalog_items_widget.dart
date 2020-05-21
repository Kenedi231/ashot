part of 'catalog_page_widget.dart';

final List<String> fakeDishes = [
  'https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1588005923326-1fbd0adbcc10?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
  'https://images.unsplash.com/photo-1589354774422-2a9d9c0cb143?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=400&q=80',
];

class CatalogItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogWatcherBloc, CatalogWatcherState>(
      builder: (BuildContext context, CatalogWatcherState state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadFailure: (_) => Container(),
          loadSuccess: (state) {
            return Category(
              title: 'Блюда',      
              carousel: CarouselWidget(dishes: fakeDishes),
              child: GridView.builder(
                padding: const EdgeInsets.only(bottom: 100),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return DishCardWidget(dish: state.products[index]);
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.69,
                ),
              ),
            );
          }
        );
      },
    );
  }
}