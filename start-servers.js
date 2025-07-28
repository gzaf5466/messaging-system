const { spawn } = require('child_process');
const path = require('path');

console.log('🚀 Starting Messaging System...\n');

// Start backend server
console.log('📡 Starting backend server...');
const backend = spawn('npm', ['run', 'dev'], {
  cwd: path.join(__dirname, 'backend'),
  stdio: 'inherit',
  shell: true
});

// Wait a bit then start frontend
setTimeout(() => {
  console.log('\n🎨 Starting frontend server...');
  const frontend = spawn('npm', ['run', 'dev'], {
    cwd: path.join(__dirname, 'client'),
    stdio: 'inherit',
    shell: true
  });

  frontend.on('error', (error) => {
    console.error('❌ Frontend error:', error);
  });
}, 2000);

backend.on('error', (error) => {
  console.error('❌ Backend error:', error);
});

console.log('\n✅ Both servers are starting...');
console.log('🌐 Frontend will be available at: http://localhost:5173');
console.log('🔧 Backend API will be available at: http://localhost:5000');
console.log('\nPress Ctrl+C to stop both servers'); 