// const React = require('react');

class Member extends React.Component {
  render(){
    return (
      <li>
        <h5>{this.props.member.name}</h5>
        <p>{this.props.member.email}</p>
        <p>{this.props.member.phone}</p>
      </li>
    );
  }
}


class Members extends React.Component {
  renderHeader() {
    return (
      <div>
        <h3>Listing members</h3>
      </div>
    );
  }

  renderMembers() {
    console.log(this.props.members)
    return (
      <ul>
        {this.props.members.map(member => (
          <Member member={member}/>
        ))}
      </ul>);
  }

  render() {
    return (
      <div>
        {this.renderHeader()}
        {this.renderMembers()}
      </div>
    );
  }
}

Members.propTypes = {
  members: React.PropTypes.array.isRequired,
};

window.Member = Member;
window.Members = Members;
