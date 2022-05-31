import React from 'react';
import Projects from '../screens/projects';
import Header from '../shared/header';
import { createStackNavigator } from 'react-navigation-stack';

const screens = {
  Projects: {
    screen: Projects,
    navigationOptions: ({ navigation }) => {
      return {
        headerTitle: () => <Header navigation={navigation} />
      }
    },
  },
};

const ProjectStack = createStackNavigator(screens, {
  defaultNavigationOptions:{
    headerTintColor: '#fff',
    headerStyle: {backgroundColor: '#333', height: 60},
  }
});

export default ProjectStack;


