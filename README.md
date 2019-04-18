# README

# Game Knight API
Game Knight is an SPA that makes keeping score during your game nights easier.
You can add or remove players from a game and see all players scores and update them as you go.

## Technologies
  Ruby, Ruby on Rails, Heroku

## Planned tables and columns

```md
A users table with columns for username, email, password.
A players table, with a column for name, score, wins, & loses.
```

## Project Links
1. [Client Deployed Site](https://nathanfee.github.io/game-knight-client/#/)

2. [Client Repository](https://github.com/NathanFee/game-knight-client)

3. [API Deployed Site](https://game-knight-api.herokuapp.com/)

4. [API Repository](https://github.com/NathanFee/game-knight-api)

## ERD
![ERD Diagram](https://i.imgur.com/hKgUTuD.png)

## Planning and Execution
1. Create ERD.
2. Create a Git Hub Repository.
3. Deploy to heroku.
3. Review Rails API study.
4. Create players resource and endpoints.
5. Test players resource with curl scripts.
6. Add relationship to user.
7. Add user ownership to recource controller.
8. Troubleshoot/Debug
9. Update Read me

Throughout:
1. Commit and Deploy often.
2. Take a 10min break every hour.


## Routes

User:
 * POST /sign-up     users#signup
 * POST /sign-in     users#signin
 * DELETE /sign-out  users#signout
 * PATCH /change-password  users#changepw

Players:
 * GET    /players     playerss#index
 * POST /playerss  playerss#create
 * GET    /players/:id     playerss#show
 * PATCH    /players/:id     playerss#update
 * DELETE /players/:id  playerss#destroy

## Reach Goal / Unsolved problem
- Allow users to create a tournament bracket.
