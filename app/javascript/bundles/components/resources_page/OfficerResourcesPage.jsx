import React from 'react'

export class OfficerResourcesPage extends React.Component {
  render() {
    return (
      <div id="officer-resources-page">
        <h1>Officer Resources</h1>
        <div id="resources-section">
          <table>
            <tbody>
              <tr className="header">
                <th>RESOURCE</th>
                <th>ACCOUNT</th>
                <th>PASSWORD</th>
              </tr>
              {
                this.props.resources.map((resource, i) => {
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
        </div>
      </div>
    );
  }
}

export default OfficerResourcesPage;