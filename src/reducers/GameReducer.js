export default function reducer(state = {
    startTime: 0,
    endTime: 0,
    gameData: null,
    countPolygonsIdentified: 0,
    maxCountPolygons: 0,
    incorrectEntries: [],
    totalAttempts: 0,
  },
  action) {
  switch (action.type) {
    case 'NEWGAME_DATA':
      return {
        ...state,
        startTime: 30000,
        endTime: 0,
        gameData: action.payload,
        countPolygonsIdentified: 0,
        maxCountPolygons: action.payload.length,
        incorrectEntries: [],
        totalAttempts: 0,
      };

    case 'ANSWER_CORRECT':
      return {
        ...state,
        gameData: action.payload.gameData,
        countPolygonsIdentified: action.payload.countPolygonsIdentified,
      };

    case 'ANSWER_INCORRECT':
      return {
        ...state,
        incorrectEntries: action.payload.incorrectEntries,
      };

  //end switch
  }
  return state;
  //end function body
}