class App extends React.Component {
  render() {
    return (
      <div>
        <header>
          gangplank member directoty
        </header>
        <Members members={this.props.members} />
      </div>
    );
  }
}

App.propTypes = {
  members: React.PropTypes.array.isRequired,
};


