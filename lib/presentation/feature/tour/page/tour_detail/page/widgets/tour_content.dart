part of '../tour_detail_page.dart';


class _TourContent extends StatelessWidget {
  const _TourContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sightseeing Vung Tau seaport',
          style: UITextStyles.bold(16),
        ),
         AppSizedBox.height12(),
        Row(
          children: [
            _Button(
              title: 'Share',
              icon: 'ic_share',
              onTap: () {},
            ),
             AppSizedBox.width12(),
            _Button(
              title: 'Add to wishlist',
              icon: 'ic_like',
              onTap: () {},
            ),
          ],
        ),
         AppSizedBox.height16(),
        Text(
          'Overview',
          style: UITextStyles.bold(16),
        ),
         AppSizedBox.height12(),
        Text(
          "Best known for its heritage sites and powdery shores, the coastal town of Da Nang is always on top of every tourist's holiday picks. But in recent years, the tourists have been seeking a new kind of wonder, and it's far from the ocean. Visit Ba Na Hills and learn why 1.5 million visitors flock to this place annually. Located at the peak of Chua Mountain, Ba Na Hills' only way of transportation is via cable car. Rated as one of the most impressive cable car systems in the world, the Ba Na cable car is an attraction in itself. See the mountain region's entirety - from high waterfalls and fogged peaks, to thick forests of tropical vegetation, the ride to the park sets the bar high in terms of natural sceneries. Get off Ba Na Hills station and be welcomed by a breathtaking 27m high Buddha statue surrounded by a garden of colorful flowers. Make the most out of your trip and go through every stop: Family Entertainment Center (FEC), Linh Ung Pagoda, Linh Phong Tu Tower, Debay Wine Cellar, French Village, Le Jardin D'Amour, Tombstone Temple, Linh Chua Linh Tu Temple, Campanile, Ba Shrine, Fantasy Park, Funincula, and Alpine Coaster. Explore all of these for a discounted price!",
          style: UITextStyles.regular(14),
        ),
         AppSizedBox.height16(),
        Text(
          'Services & Equipments',
          style: UITextStyles.bold(16),
        ),
        ListView.separated(
          padding: const AppEdge.vertical16(),
          itemBuilder: (_, index) {
            return Row(
              children: [
                const AppImage.asset(
                  asset: 'ic_airplance',
                  width: 20,
                  height: 20,
                ),
                 AppSizedBox.width12(),
                Text(
                  'Book airplane',
                  style: UITextStyles.regular(16),
                ),
              ],
            );
          },
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) =>  AppSizedBox.height12(),
          itemCount: 3,
        ),
        PrimaryButton(
          onPressed: () {},
          title: 'Show all',
          buttonColor: UIColors.primaryColor,
          textColor: UIColors.defaultText,
        ),
         AppSizedBox.height16(),
        ListView.separated(
          itemBuilder: (_, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AppImage.asset(
                asset: 'img_product',
                height: MediaQuery.sizeOf(context).height / 3,
              ),
            );
          },
          separatorBuilder: (_, __) =>  AppSizedBox.height12(),
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        )
      ],
    );
  }
}
