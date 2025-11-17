const express = require('express')
const cors = require('cors')

const app = express();

app.use(cors())
app.use(express.json())

// Simple health route
app.get('/', (req, res) => {
	res.json({ status: 'ok', message: 'CSV_to_CHART back is running' })
})

// Example route placeholder (extend as needed)
app.get('/hello', (req, res) => {
	res.send('Hello from CSV_to_CHART backend')
})

const PORT = process.env.PORT || 3000
app.listen(PORT, () => {
	// eslint-disable-next-line no-console
	console.log(`Server listening on port ${PORT}`)
})





