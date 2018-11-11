import $ from 'jquery'
import React from 'react'
import NewEventForm from './NewEventForm.jsx'

export class NewEventPage extends React.Component {
  render() {
    return (
      <div id="new-event-page">
        <NewEventForm 
          authenticityToken={this.props.authenticityToken}
          members={this.props.members}
          eventTypes={this.props.eventTypes}
        />
      </div>
    );
  }
}

export default NewEventPage;