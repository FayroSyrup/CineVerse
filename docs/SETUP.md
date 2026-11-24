# Setup guide

## Tools to install (same on every computer)
Git, Node.js LTS, VS Code, Docker Desktop (with WSL2), DBeaver.

## First time on a new computer
1. Open Docker Desktop and wait until it says it is running.
2. Clone the repo and go inside it:
   git clone https://github.com/FayroSyrup/CineVerse.git 
   cd CineVerse
3. Copy the env file:
   Git Bash:    cp .env.example .env
   PowerShell:  Copy-Item .env.example .env
4. Start Oracle (the first start downloads about 1.3 GB):
   docker compose up -d
   docker logs -f cineverse-oracle
   Wait for the line: DATABASE IS READY TO USE!   (then press Ctrl+C)
5. Build the database:
   Git Bash:    bash scripts/reset-db.sh
   PowerShell:  .\scripts\reset-db.ps1

## Connect with DBeaver
Host: localhost, Port: 1521, Service name: XEPDB1
User and password: from your .env file

## Moving work between computers
- Desktop: git add, git commit, git push
- Laptop: git pull, then run the reset script again to rebuild the database
- Data added by hand is not saved in git. Put demo data in the SQL files.
- Prepare the laptop at home before the demo day. Do not download Docker images at university.