#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    
    # Pegar ID de TEAM com A tabela WINNER
    TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # Se não
    if [[ -z $TEAM_ID_WINNER ]]
    then
      # Inserir a tabela
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        
        if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
          then
          echo "Inserido na tabela teams coluna name: $WINNER"
        fi

      # Pegar novo ID de TEAM com WINNER
      TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      echo "ID time: $TEAM_ID_WINNER"
    fi

    # PEgar ID de TEAM da tabela OPPONENT
    TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # Se não
    if [[ -z $TEAM_ID_OPPONENT ]]
    then
      # Inserir team a tabela names
      INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        
        if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
        then
          echo "Inserido na tabela teams coluna name: $OPPONENT"
        fi

      # Pegar novo ID
      TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      echo "ID novo: $TEAM_ID_OPPONENT"
    fi

    # Inserir informações na tabela games
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS)")
    
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserido em games, $YEAR '$ROUND'. Vencedor: $WINNER Oponente: $OPPONENT"
      fi
  fi
done
