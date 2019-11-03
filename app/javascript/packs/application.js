import ReactOnRails from 'react-on-rails';

import NewEventPage from '../bundles/components/events/NewEventPage';
import ClubResourcesPage from '../bundles/components/resources_page/ClubResourcesPage';
import ManageEventPage from '../bundles/components/events/ManageEventPage';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  NewEventPage,
  ClubResourcesPage,
  ManageEventPage
});