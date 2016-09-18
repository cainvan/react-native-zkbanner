# react-native-zkbanner



## Demo
The [Project Demo](https://github.com/cainvan/ReactBannerDemo)


![Image](https://github.com/cainvan/ReactBannerDemo/blob/master/image/demoImage.gif)

## Introduction

The aim of this library is to provide reusable React Native components that can Use a network or local image as a dynamic banner.

## Installation

1. Run `npm install --save react-native-zkbanner`.

2. Add all the files under node_modules/react-native-zkbanner/ZKBanner. (In Xcode: File -> Add files to "App Name").

3. Then you need to add [SDWebImage](https://github.com/rs/SDWebImage) to the Xcode project. Here, you can use the react-native-zkbanner.


# Usage

Example code:

```JavaScript
/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Dimensions,
  Text,
  View
} from 'react-native';

import { Banner } from 'react-native-zkbanner';

class ReactBannerDemo extends Component {
  render() {
    var bannerImgs = [
    'https://www.umeng.com/img/index/demo/0901-2.c1df5ebf79f4c2b31f5ded9b13970826.png',
    'https://www.umeng.com/img/index/demo/0912.97aa0956cef2b613001d28d394eb4bd0.png',
    'https://www.umeng.com/img/index/demo/8.a0a7379becc230ef38295a74956ec8f2.png',
    'https://www.umeng.com/img/index/demo/825-1.58787216c12fb39bb6d384ad4d278037.jpg'
  ];
    return (
        <View style={styles.map0} >
          <Banner
            style = {styles.map1}
            autoScrollTimeInterval = {2}
            imageURLStringsGroup = {bannerImgs}
            onClickBanner={(event) => {
            console.log('react' + event.nativeEvent.value);
          }}
          />
        </View>
    );
  }
}

const styles = StyleSheet.create({
  map0: {
    width:Dimensions.get('window').width,
    height:Dimensions.get('window').height,
    alignItems:'center',
    justifyContent:'center',
  },
  map1: {
    width:Dimensions.get('window').width,
    height:200,
  },
});

AppRegistry.registerComponent('ReactBannerDemo', () => ReactBannerDemo);

```
# License

Copyright (C) 2016 cain_van@163.com

　　Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

　　The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

