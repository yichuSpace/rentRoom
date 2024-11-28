import { BannerListDataSource, IBannerList } from '../models/HomeData';

import SwiperLayout from '../views/Home/SwiperLayout';

@Component
export default struct Home {
  @State bannerList: BannerListDataSource = new BannerListDataSource()
  // 获取首页数据函数
  getHomeData = async () => {

    const bannerList: IBannerList = [
      {
        "id": 1,
        "name": "banner1",
        "imageURL": "https://img1.baidu.com/it/u=1487142947,1763685768&fm=253&fmt=auto&app=138&f=JPEG?w=1100&h=800"
      },
      {
        "id": 2,
        "name": "banner2",
        "imageURL": "http://img2.baidu.com/it/u=1813184522,1821352086&fm=253&app=138&f=JPEG?w=1100&h=800"
      },
      {
        "id": 3,
        "name": "banner3",
        "imageURL": "https://img1.baidu.com/it/u=3243689495,1500869895&fm=253&fmt=auto&app=138&f=JPEG?w=1100&h=800"
      },
      {
        "id": 4,
        "name": "banner4",
        "imageURL": "http://localhost:6060/public/home_banner_4.jpg"
      }
    ]
    this.bannerList.setList(bannerList);
    console.log(`${this.bannerList}`)
  }

  // 生命周期函数：初始化渲染时触发
  aboutToAppear(): void {
    this.getHomeData()
  }

  build() {
    Scroll() {
      Column() {
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