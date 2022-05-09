import React from 'react';
import Home from '../screens/home';
import Header from '../shared/header';
import { createStackNavigator } from 'react-navigation-stack';

const screens = {
  Home: {
    screen: Home,
    navigationOptions: ({ navigation }) => {
      return {
        headerTitle: () => <Header navigation={navigation} />
      }
    },
  },
};

// home stack navigator screens
const HomeStack = createStackNavigator(screens, {
  defaultNavigationOptions:{
    headerTintColor: '#fff',
    headerStyle: {backgroundColor: '#333', height: 60},
  }
});

export default HomeStack;


