# Myanmar Chat Application

A real-time chat application with ChatBot support and admin panel.

## Features

- Real-time messaging using Supabase
- ChatBot with customizable responses
- Customer Support chat mode
- Admin panel with analytics
- Multi-language support (English, Myanmar, Thai)
- Modern UI with dark/light theme

## Setup

1. Clone the repository
2. Create a `.env` file in the root directory with your Supabase credentials:
   ```
   SUPABASE_KEY=your_supabase_anon_key_here
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Create the required tables in your Supabase database:

   ```sql
   -- Users Table
   CREATE TABLE users (
       id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
       name TEXT NOT NULL,
       created_at TIMESTAMP DEFAULT now()
   );

   -- Messages Table
   CREATE TABLE messages (
       id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
       user_id UUID REFERENCES users(id),
       content TEXT NOT NULL,
       sender TEXT NOT NULL,
       created_at TIMESTAMP DEFAULT now()
   );

   -- ChatBot Config Table
   CREATE TABLE chatbot_config (
       id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
       keyword TEXT NOT NULL,
       response TEXT NOT NULL,
       created_at TIMESTAMP DEFAULT now()
   );
   ```

5. Enable real-time functionality for the `messages` table in your Supabase dashboard.

6. Start the development server:
   ```bash
   npm start
   ```

## Usage

1. Open the application in your browser
2. Click "Start Chat" to begin chatting
3. Switch between ChatBot and Customer Support modes
4. Access the admin panel to:
   - View analytics
   - Configure ChatBot responses
   - Manage users
   - View message history

## Technologies Used

- Supabase for backend and real-time functionality
- HTML5/CSS3 for modern UI
- JavaScript (ES6+) for frontend logic
- Chart.js for analytics visualization
