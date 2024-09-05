# Flashcards (backend)

This is the backend of my Flashcards web application, built using Ruby on Rails. The backend is responsible for handling data processing, business logic, and serving the API to the frontend built with React. The frontend can be found at https://github.com/chriskay25/flashcards-frontend.git.

## Getting Started

These instructions will get you a copy of the backend up and running on your local machine for development and testing purposes.

### Installation

1. Clone the repository:

```bash
git clone https://github.com/chriskay25/flashcards-backend.git
cd flashcards-backend
```

2. Install the required gems:
`bundle install`

### Prerequisites

- Ruby version: `2.6.1`
- Rails version: `>= 6.0.3.4`
- Database: PostgreSQL

### Database Setup

1. Create and migrate the database:
```
rails db:create
rails db:migrate
```

### Running the Server

Start the Rails server:
`rails server`

The server will run at `http://localhost:3000` by default.

## Contributing
1. Fork the repository
2. Create a new branch (git checkout -b feature-branch)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin feature-branch)
5. Create a new Pull Request

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

Chris Kay - chriskay25@gmail.com

Link to frontend repo: https://github.com/chriskay25/flashcards-frontend.git 
