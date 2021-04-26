# Two-Player Math Game

## Classes

### Game
Role
- Start game
- Store players
- Generate questions
- Receive input
- Process input
- Display output
- Change turns
- Check for end game state.

Data
- players (array of Player objects)
- current_player (int)
- game_running (bool)

Methods
- setup
  - re-init all variables
  - ask for player names
  - choose first player
  - start game loop

- game_loop
  - generate question
  - send question text to current player
  - wait for response
  - send response to question for validation
  - increment score or decrement lives
  - check for game over
    - report results if game is over
    - give option to start a new game
  - change current player

### Player
Role
- Track score
- Track lives
- Store player name

Data
- name (string)
- score (int)
- lives (int)

Methods
  - lose_life
  - add_score
  - send_message
  - receive_message

### Question
Role
- Store questions
- Recieve and evaluate answers
- Store which player was asked this question
