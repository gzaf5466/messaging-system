# 🚀 Messaging System

A comprehensive real-time messaging, calling, and video calling application built with the PERN stack (PostgreSQL, Express, React, Node.js) and Vite.

## ✨ Features

- 🔐 **User Authentication** - Secure login/register with JWT tokens
- 💬 **Real-time Messaging** - Instant messaging with typing indicators
- 📞 **Voice Calls** - Crystal clear audio calls
- 📹 **Video Calls** - HD video calls with screen sharing
- 👥 **User Management** - Search and connect with other users
- 📱 **Responsive Design** - Works perfectly on all devices
- 🔒 **Secure** - End-to-end encryption and secure API endpoints

## 🛠️ Tech Stack

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **PostgreSQL** - Database
- **Socket.IO** - Real-time communication
- **JWT** - Authentication
- **bcryptjs** - Password hashing
- **multer** - File uploads

### Frontend
- **React** - UI library
- **Vite** - Build tool
- **Tailwind CSS** - Styling
- **React Query** - Data fetching
- **React Hook Form** - Form management
- **Socket.IO Client** - Real-time communication
- **Lucide React** - Icons

## 📋 Prerequisites

- Node.js (v16 or higher)
- PostgreSQL (v12 or higher)
- npm or yarn

## 🚀 Quick Start

### 1. Clone the repository
```bash
git clone <repository-url>
cd messaging-system
```

### 2. Install dependencies
```bash
# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../client
npm install
```

### 3. Set up environment variables
```bash
# Copy the example environment file
cd ../backend
copy env.example .env
```

Edit the `.env` file and update the database password:
```env
DB_PASSWORD=your_actual_postgresql_password
```

### 4. Set up the database
```bash
cd backend
node setup-database.js
```

### 5. Start the application

#### Option 1: Start both servers with one command
```bash
# From the root directory
node start-servers.js
```

#### Option 2: Start servers separately
```bash
# Terminal 1 - Backend
cd backend
npm run dev

# Terminal 2 - Frontend
cd client
npm run dev
```

### 6. Access the application
- **Frontend**: http://localhost:5173
- **Backend API**: http://localhost:5000

## 📱 Responsive Design

The application is fully responsive and optimized for:
- 📱 Mobile phones (320px+)
- 📱 Tablets (768px+)
- 💻 Desktop (1024px+)
- 🖥️ Large screens (1280px+)

### Key Responsive Features:
- **Mobile-first design** with progressive enhancement
- **Flexible layouts** that adapt to screen size
- **Touch-friendly** interface elements
- **Optimized typography** for all screen sizes
- **Responsive navigation** and menus

## 🔧 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `GET /api/auth/me` - Get current user
- `PUT /api/auth/profile` - Update profile
- `POST /api/auth/change-password` - Change password
- `POST /api/auth/logout` - Logout

### Users
- `GET /api/users` - Get all users
- `GET /api/users/:id` - Get user by ID
- `GET /api/users/online` - Get online users
- `GET /api/users/search` - Search users

### Messages
- `GET /api/messages/conversations` - Get user conversations
- `GET /api/messages/conversation/:id` - Get conversation
- `POST /api/messages/conversation/:id/messages` - Send message
- `PUT /api/messages/:id` - Edit message
- `DELETE /api/messages/:id` - Delete message

### Calls
- `GET /api/calls` - Get call history
- `POST /api/calls` - Create new call
- `PUT /api/calls/:id` - Update call status

## 🔌 Socket.IO Events

### Client to Server
- `authenticate` - Authenticate socket connection
- `join_room` - Join conversation room
- `leave_room` - Leave conversation room
- `send_message` - Send message
- `typing` - User typing indicator
- `stop_typing` - Stop typing indicator
- `call_user` - Initiate call
- `call_accepted` - Accept call
- `call_rejected` - Reject call
- `call_ended` - End call
- `offer` - WebRTC offer
- `answer` - WebRTC answer
- `ice_candidate` - WebRTC ICE candidate

### Server to Client
- `authenticated` - Authentication successful
- `auth_error` - Authentication failed
- `receive_message` - New message received
- `user_typing` - User typing indicator
- `user_stop_typing` - User stopped typing
- `incoming_call` - Incoming call notification
- `call_accepted` - Call accepted
- `call_rejected` - Call rejected
- `call_ended` - Call ended
- `offer` - WebRTC offer
- `answer` - WebRTC answer
- `ice_candidate` - WebRTC ICE candidate

## 📁 Project Structure

```
messaging-system/
├── backend/                 # Backend server
│   ├── config/             # Database configuration
│   ├── middleware/         # Express middleware
│   ├── routes/             # API routes
│   ├── uploads/            # File uploads
│   ├── server.js           # Main server file
│   ├── setup-database.js   # Database setup script
│   └── package.json
├── client/                 # Frontend application
│   ├── public/             # Static files
│   ├── src/
│   │   ├── components/     # React components
│   │   ├── contexts/       # React contexts
│   │   ├── pages/          # Page components
│   │   ├── services/       # API services
│   │   ├── App.jsx         # Main app component
│   │   └── main.jsx        # Entry point
│   ├── index.html
│   └── package.json
├── start-servers.js        # Script to start both servers
└── README.md
```

## 🎨 UI Components

### Login/Register Forms
- **Single show password button** per password field
- **Responsive design** for all screen sizes
- **Form validation** with error messages
- **Loading states** during submission
- **Accessibility** features

### Dashboard
- **Responsive sidebar** that adapts to screen size
- **User search** functionality
- **Conversation list** with unread indicators
- **Call initiation** buttons

### Chat Interface
- **Real-time messaging** with typing indicators
- **Message bubbles** with timestamps
- **Responsive layout** for mobile and desktop
- **Call controls** in chat header

## 🔒 Security Features

- **JWT authentication** with secure token storage
- **Password hashing** with bcrypt
- **Input validation** and sanitization
- **Rate limiting** on API endpoints
- **CORS protection** for cross-origin requests
- **Helmet.js** for security headers

## 🚀 Deployment

### Backend Deployment
1. Set up PostgreSQL database
2. Configure environment variables
3. Run database migrations
4. Deploy to your preferred platform (Heroku, Railway, etc.)

### Frontend Deployment
1. Build the application: `npm run build`
2. Deploy the `dist` folder to your preferred platform (Vercel, Netlify, etc.)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 🆘 Support

If you encounter any issues:
1. Check the console for error messages
2. Verify your database connection
3. Ensure all environment variables are set correctly
4. Check that both servers are running

## 🎯 Roadmap

- [ ] File sharing in messages
- [ ] Group conversations
- [ ] Message reactions
- [ ] User status updates
- [ ] Push notifications
- [ ] Dark mode theme
- [ ] Message search
- [ ] Voice messages 