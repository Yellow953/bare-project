import React from 'react';
import Navigator from './routes/drawer';
import LoginScreen from './screens/login';
import 'react-native-gesture-handler';
import { createStackNavigator } from '@react-navigation/stack';
import { NavigationContainer } from '@react-navigation/native';

const Stack = createStackNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator
        screenOptions={{
          headerShown: false
        }}
      >
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="app" component={Navigator} />
      </Stack.Navigator>
    </NavigationContainer>

    // <LoginScreen />
    // <Navigator />
  );
}