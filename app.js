require('dotenv').config();
const express = require('express');
const cors = require('cors');
const { compress } = require('express-compress');
const bodyParser = require('body-parser');
const cookieParser = require('cookie-parser');

const PORT = process.env.PORT || 3000;
const app = express();

app.use(cors());
app.use(compress());
app.use(bodyParser.json());
app.use(cookieParser());

app.listen(PORT, () => {
    console.log(`Server has started on port ${PORT}.`);
})