@Entry
@Component
struct Index {
  build() {
    // 思路：
    // 1. 整体Stack布局 + 底部的tab
    // 2. 主体区域的架子：头部 + 主体页面 （层叠关系、主体页面可滚动）
    //    Column/Row，默认不具备可滚动的效果 → Scroll
    // 3. Head头部区域：左 中 右 三部分
    // 4. Top快捷按钮区域：Row里面4个Column （layoutWeight）
    // 5. Nav导航区域：一个列，3行，每行5列
    Stack({ alignContent: Alignment.Bottom }) {
      Stack({ alignContent: Alignment.Top }) {
        Row() {
          Column() {
            Text('北京').fontSize(18).fontColor('#fff')

          }

          Row() {
            Image($r('app.media.zfb_head_search'))
              .width(20)
              .fillColor('#666')
              .margin({ left: 5, right: 5 })
            Text('北京交通一卡通')
              .fontColor('#5b73de')
              .fontWeight(FontWeight.Bold)
              .textAlign(TextAlign.Center)
              .layoutWeight(1)
            Text('搜索').width(55).fontColor('#5b73de').fontSize(14)
          }
          .height(32)
          .layoutWeight(1)
          .backgroundColor('#fff')
          .borderRadius(5)
          .margin({ left: 25, right: 12 })

          Image($r('app.media.zfb_head_plus'))
            .width(30)
            .fillColor('#fff')
        }.padding({ left: 20, right: 10 }).width('100%')
        .height(60)
        .backgroundColor('#5b73de')
      }.width('100%').height('100%').backgroundColor('#eee')

      Row() {
        Column() {
          Image($r('app.media.zfb_tab_home'))
            .width(35)
        }
        .layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_money'))
            .width(28).margin({ bottom: 2 })
          Text('理财')
            .fontSize(12)
        }.layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_chat')).width(28).margin({
            bottom: 2
          })
          Text('消息')
            .fontSize(12)
        }.layoutWeight(1)

        Column() {
          Image($r('app.media.zfb_tab_me'))
            .width(28).margin({ bottom: 2 })
          Text('我的')
            .fontSize(12)
        }
        .layoutWeight(1)
      }.width('100%').height(60).backgroundColor('#fbfcfe')

    }.width('100%').height('100%').backgroundColor('#f4f4f4')
  }
}