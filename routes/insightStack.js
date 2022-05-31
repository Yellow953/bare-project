import React from 'react';
import Insights from '../screens/insights';
import Header from '../shared/header';
import { createStackNavigator } from 'react-navigation-stack';

const screens = {
  Insights: {
    screen: Insights,
    navigationOptions: ({ navigation }) => {
      return {
        headerTitle: () => <Header navigation={navigation} />
      }
    },
  },
};

const InsightStack = createStackNavigator(screens, {
  defaultNavigationOptions:{
    headerTintColor: '#fff',
    headerStyle: {backgroundColor: '#333', height: 60},
  }
});

export default InsightStack;


