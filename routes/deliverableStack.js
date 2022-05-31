import React from 'react';
import Deliverables from '../screens/deliverables';
import Header from '../shared/header';
import { createStackNavigator } from 'react-navigation-stack';

const screens = {
  Deliverables: {
    screen: Deliverables,
    navigationOptions: ({ navigation }) => {
      return {
        headerTitle: () => <Header navigation={navigation} />
      }
    },
  },
};

const DeliverableStack = createStackNavigator(screens, {
  defaultNavigationOptions:{
    headerTintColor: '#fff',
    headerStyle: {backgroundColor: '#333', height: 60},
  }
});

export default DeliverableStack;


