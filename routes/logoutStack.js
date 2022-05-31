import React from 'react';
import Logout from '../screens/logout';
import Header from '../shared/header';
import { createStackNavigator } from 'react-navigation-stack';

const screens = {
  Logout: {
    screen: Logout,
    navigationOptions: ({ navigation }) => {
      return {
        headerTitle: () => <Header navigation={navigation} />
      }
    },
  },
};

const LogoutStack = createStackNavigator(screens, {
  defaultNavigationOptions:{
    headerTintColor: '#fff',
    headerStyle: {backgroundColor: '#333', height: 60},
  }
});

export default LogoutStack;


