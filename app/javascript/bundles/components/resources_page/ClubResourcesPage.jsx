import React from 'react'

export class ClubResourcesPage extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      selectedCategory: 'social_media'
    }
  }
  
  renderOfficerResources(resources) {
    return (
      <React.Fragment>
        <h2 className="resources-table-header">OFFICER RESOURCES</h2>
        <table>
          <tbody>
            <tr className="header">
              <th>RESOURCE</th>
              <th>ACCOUNT</th>
              <th>PASSWORD</th>
            </tr>
            {
              resources.map((resource, i) => {
                return (
                  <tr className="resource-item">
                    <td>
                      <a href={resource.link} target="_blank">
                        <div className="name">{resource.name}</div>
                        <div className="description">{resource.description}</div>
                      </a>
                    </td>
                    <td>
                      {resource.account ? resource.account : "N/A"}
                    </td>
                    <td>
                      {resource.password ? resource.password : "N/A"}
                    </td>
                  </tr>
                )
              })
            }
          </tbody>
        </table>
      </React.Fragment>
    )
  }
  
  renderSocialMediaResources(resources) {
    return (
      <React.Fragment>
        <h2 className="resources-table-header">SOCIAL MEDIA</h2>
        <table>
          <tbody>
            <tr className="header">
              <th>RESOURCE</th>
              <th>ACCOUNT</th>
              <th>PASSWORD</th>
            </tr>
            {
              resources.map((resource, i) => {
                return (
                  <tr className="resource-item">
                    <td>
                      <a href={resource.link} target="_blank">
                        <div className="name">{resource.name}</div>
                        <div className="description">{resource.description}</div>
                      </a>
                    </td>
                    <td>
                      {resource.account ? resource.account : "N/A"}
                    </td>
                    <td>
                      {resource.password ? resource.password : "N/A"}
                    </td>
                  </tr>
                )
              })
            }
          </tbody>
        </table>
      </React.Fragment>
    )
  }
  
  renderResources() {
    if (this.state.selectedCategory === "officer") {
      let resources = this.props.resources.filter(resource => {
        return resource.category === "officer"
      })
      
      return this.renderOfficerResources(resources)
    } else {
      let resources = this.props.resources.filter(resource => {
        return resource.category === "social_media"
      })
      
      return this.renderSocialMediaResources(resources)
    }
  }
  
  onCategorySelect(event) {
    this.setState({selectedCategory: event.target.value});
  }
  
  render() {
    return (
      <div id="club-resources-page">
        <h1>Club Resources</h1>
        <div id="category-selector-row">
          <select id="lang" onChange={this.onCategorySelect.bind(this)} value={this.state.selectedCategory}>
            <option value="social_media">Social Media</option>
            <option value="officer">Officer</option>
          </select>
        </div>
        <div id="resources-section">
          {this.renderResources()}
        </div>
      </div>
    );
  }
}

export default ClubResourcesPage;