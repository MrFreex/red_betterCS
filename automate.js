const Express = require('express');
const Config = require('./config.json')
const app = Express()

app.use(Express.json())

app.listen(Config.port, () => {
    console.log("[++] Listening on port " + Config.port)
})

app.post('/', (req,res) => {
    console.log("[++] Received request, resource : " + req.body.resName)

    if (GetResourceState(req.body.resName) == "started") {
        req.body.refresh && ExecuteCommand(`refresh ${req.body.resName}`);
        ExecuteCommand(`restart ${req.body.resName}`)
    } else if (req.body.forceStart) {
        req.body.refresh && ExecuteCommand(`refresh ${req.body.resName}`);
        ExecuteCommand(`start ${req.body.resName}`)
    }


    res.send("[++] Received request")
})