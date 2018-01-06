/*
 * HighScores.jsx
 */

import React from 'react';
import { connect } from 'react-redux';
import axios from 'axios';
import { Icon, Label, Menu, Table, Dropdown } from 'semantic-ui-react';
import { capitalizeWords } from '../utils/capitalizeFirst';
import moment from 'moment';
import momentDurationFormatSetup from 'moment-duration-format';

class HighScores extends React.Component {
  constructor(props) {
    super(props);
    let query = new URLSearchParams(location.search)
    this.state = {
        scores: null,
        first: null,
        selectedGameType: Number(props.match.params.gameTypeId) || 1,
        selectedGame: Number(props.match.params.gameId) || 1,
        selectedDifficulty: Number(props.match.params.gameDiffId) || 1,
        games: null,
        gameTypes: null,
        gameDifficulties: null,
        total: null,
        page: 1
    }
    this.getScores = this.getScores.bind(this);;
    this.getGameAttributes = this.getGameAttributes.bind(this);
    this.onChange = this.onChange.bind(this);
  }

    componentDidMount() {
      this.getGameAttributes();


  }

  onChange(e, data) {
      const obj = {}
      obj[data.name] = data.value;
      this.setState(obj, this.getScores);
      console.log(data);

  }
  getGameAttributes() {
      axios.get('/api/gameslist')
      .then(response => {
          let games = [];
          response.data.forEach(element => {
              let values = {};
              values['game_id'] = element.game_id;
              values['max_count_polygons'] = element.max_count_polygons;
              let game = Object.assign({}, { value: element.game_id, text: element.game_name, total: element.max_count_polygons });
              games.push(game);
          })

          this.setState({
              games: games
            });
      })
      axios.get('/api/gameSettings')
      .then(response => {
          let difficulties = [];
          let types = [];
          response.data.game_difficulties.forEach(element => {
                let difficulty = Object.assign({}, { value: element.game_difficulty_id, text: element.game_difficulty_name });
                difficulties.push(difficulty);
          });
          response.data.game_types.forEach(element => {
            const gameName = capitalizeWords(element.game_type_name)
            const type = Object.assign({}, { value: element.game_type_id, text: gameName });
            types.push(type);
          })
          this.setState({
              gameDifficulties: difficulties,
              gameTypes: types
          })
          this.getScores();
      })
  }

  getScores() {
    axios.get('/api/scores', { params: {
        game_type_id: this.state.selectedGameType,
        game_id: this.state.selectedGame,
        game_difficulty_id: this.state.selectedDifficulty
    }})
    .then(response => {
        const arr = response.data;
        const firstScore = arr.shift();
        this.setState({
            scores: arr,
            first: firstScore,
        });
    })
    
  }

  render() {
    return (
      <div>
          <Dropdown name="selectedGameType" onChange={this.onChange} defaultValue={this.state.selectedGameType} fluid selection options={this.state.gameTypes} />
          <Dropdown name="selectedGame" onChange={this.onChange} value={this.state.selectedGame} fluid selection options={this.state.games} />
          <Dropdown name="selectedDifficulty" onChange={this.onChange} defaultValue={this.state.selectedDifficulty} fluid selection options={this.state.gameDifficulties} />

          { this.state.first ? (

          <Table celled>
            <Table.Header>
            <Table.Row>
                <Table.HeaderCell>Place</Table.HeaderCell>
                <Table.HeaderCell>Username</Table.HeaderCell>
                <Table.HeaderCell>Score</Table.HeaderCell>
                <Table.HeaderCell>Time Remaining</Table.HeaderCell>
            </Table.Row>
            </Table.Header>
            <Table.Body>
                <Table.Row>
                    <Table.Cell><Label ribbon>First</Label></Table.Cell>
                    <Table.Cell>{this.state.first.user.username }</Table.Cell>
                    <Table.Cell>{this.state.first.count_polygons_entered + "/" + this.state.total }</Table.Cell>
                    <Table.Cell>{ moment.duration(this.state.first.game_timer_remaining, "seconds").format() }</Table.Cell>
                </Table.Row>
            {
                this.state.scores.map((score, index) => (
                    
                <Table.Row key={index}>
                    <Table.Cell>{index + 2}</Table.Cell>
                    <Table.Cell>{score.user.username}</Table.Cell>
                    <Table.Cell>{score.count_polygons_entered + "/"}</Table.Cell>
                    <Table.Cell>{ moment.duration(score.game_timer_remaining, "seconds").format() }</Table.Cell>
                </Table.Row>
                ))
            }
            </Table.Body>
            <Table.Footer>
                <Table.Row>
                    <Table.HeaderCell colSpan='5'>
                    <Menu floated='right' pagination>
                        <Menu.Item as='a' icon>
                        <Icon name='left chevron' />
                        </Menu.Item>
                        <Menu.Item as='a'>1</Menu.Item>
                        <Menu.Item as='a'>2</Menu.Item>
                        <Menu.Item as='a'>3</Menu.Item>
                        <Menu.Item as='a'>4</Menu.Item>
                        <Menu.Item as='a' icon>
                        <Icon name='right chevron' />
                        </Menu.Item>
                    </Menu>
                    </Table.HeaderCell>
                </Table.Row>
            </Table.Footer>
        </Table> ) :
        (<div>no scores yet</div>)
          }
      </div>
    );
  }
}

function mapStateToProps(state) {
  return {
  };
}

export default connect(mapStateToProps)(HighScores);
