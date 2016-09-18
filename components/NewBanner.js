import React, { Component, PropTypes } from 'react';
import { requireNativeComponent} from 'react-native';

var NewBanner = requireNativeComponent('NewBanner', NewBannerView);

export default class NewBannerView extends Component {
   static propTypes = {
    /**
    * 属性
    * 定义组件需要传到原生端的属性
    * 使用React.PropTypes来进行校验
    */

     //自动滑动间隔时间
    autoScrollTimeInterval: PropTypes.number,
    //是否自动滑动
    autoScroll: PropTypes.bool,
    //图片点击事件
    onClickBanner: PropTypes.func,
     //网络图片数组
    imageURLStringsGroup:PropTypes.array,
    //本地图片
    localizationImageNamesGroup:PropTypes.array,
  };
  render() {
    return (
      <NewBanner {...this.props} />
    );
  }
}
