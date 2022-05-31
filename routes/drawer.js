import { createDrawerNavigator } from 'react-navigation-drawer';
import { createAppContainer } from 'react-navigation';
import HomeStack from './homeStack';
import ProjectStack from './projectStack';
import DeliverableStack from './deliverableStack';
import InsightStack from './insightStack';
import ProfileStack from './profileStack';
import LogoutStack from './logoutStack';


const screens = {
  Home: {
    screen: HomeStack,
  },
  Projects: {
    screen: ProjectStack,
  },
  Deliverables: {
    screen: DeliverableStack,
  },
  Insights: {
    screen: InsightStack,
  },
  Profile: {
    screen: ProfileStack,
  },
  Logout: {
    screen: LogoutStack,
  },
};

// home stack navigator screens
const RootDrawerNavigator = createDrawerNavigator(screens);

export default createAppContainer(RootDrawerNavigator);