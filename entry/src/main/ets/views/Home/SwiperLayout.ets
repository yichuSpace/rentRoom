import type { BannerListDataSource, IBannerItem } from '../../models/HomeData'

@Component
export default struct SwiperLayout {
  @ObjectLink bannerList: BannerListDataSource

  build() {
    Swiper() {
      LazyForEach(this.bannerList, (banner: IBannerItem) => {
        Image(banner.imageURL).width('100%').height(175)
      }, (item: IBannerItem) => item.id + '')
    }
    .loop(true)
    .indicator(
      Indicator.dot()// 设置圆形导航点样式
        .color('#CCCBCB')
        .selectedColor($r('app.color.primary'))
    )
  }
}