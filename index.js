const express = require("express")

const PORT = process.env.PORT || 3000

const app = express()

app.get("/", (req, res) => {
	res.send("Hello World")
})

app.get("/env", (req, res) => {
	const { NODE_ENV } = process.env
	res.send({ NODE_ENV })
})

app.listen(PORT, () => console.log("Server starting at", PORT))
