@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      // // layoutWeight 自适应伸缩: 按照[份数权重]，分配[剩余空间]
Column(){
  Text('左侧')
    .layoutWeight(1)
    .height(40)
    .backgroundColor(Color.Pink)
  Text('右侧固定')
    .width(80)
    .height(40)
    .backgroundColor(Color.Orange)
}.width('100%').height('100%')
    }
    .height('100%')
    .width('100%')
  }
}