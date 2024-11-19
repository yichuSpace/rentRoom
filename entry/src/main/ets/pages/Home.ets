import { getHomeDataApi, } from '../api/home';
import { BannerListDataSource, IBannerList } from '../models/HomeData';

import SwiperLayout from '../views/Home/SwiperLayout';

@Component
export default struct Home {
  @State bannerList: BannerListDataSource = new BannerListDataSource()
  // 获取首页数据函数
  getHomeData = async () => {
    const result = await getHomeDataApi()
    const bannerList: IBannerList = [
      {
        "id": 1,
        "name": "banner1",
        "imageURL": "http://localhost:6060/public/home_banner_1.jpg"
      },
      {
        "id": 2,
        "name": "banner2",
        "imageURL": "http://localhost:6060/public/home_banner_2.jpg"
      },
      {
        "id": 3,
        "name": "banner3",
        "imageURL": "http://localhost:6060/public/home_banner_3.jpg"
      },
      {
        "id": 4,
        "name": "banner4",
        "imageURL": "http://localhost:6060/public/home_banner_4.jpg"
      }
    ]
    this.bannerList.setList(bannerList);
  }

  // 生命周期函数：初始化渲染时触发
  aboutToAppear(): void {
    this.getHomeData()
  }

  build() {
    Scroll() {
      Column() {
        Text('afds')
        // 轮播图组件（使用prop通信）
        SwiperLayout({ bannerList: this.bannerList })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .scrollBar(BarState.Off)
    .align(Alignment.TopStart)
  }
}