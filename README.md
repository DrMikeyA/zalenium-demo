# zalenium-demo
## Rspec-Zalenium
### Zalenium
#### What is Zalenium?
[`Zalenium`](https://zalando.github.io/zalenium/) is a flexible and scalable container based Selenium Grid with video recording, live preview, basic auth & dashboard built on docker-selenium to build a Selenium Grid in seconds, 
a grid that scales up and down dynamically with this solution based on docker-selenium to run your tests in Firefox and Chrome.
### Assumption
- This tutorial assumes that you are somewhat familiar with Docker(Beginner level)
- Zalenium gets its name from the combination of Zalando and Selenium.
## Get started
- Download and start Docker
  - [Get docker for Windows](https://docs.docker.com/docker-for-windows/install/)
  - [Get docker for Mac](https://docs.docker.com/docker-for-mac/install/)
  - [Get docker for Ubuntu](https://www.docker.com/docker-ubuntu)
- Clone the `Zalenium-demo` repo
    ```javascript
    git clone git@github.com:femisimon/zalenium-demo.git
    ```
### Run test without Docker compose
- On local Chrome: 
  - On Terminal - `rake local`
- Docker solution: 
  - Set up - 
  ```javascript
    docker run --rm -ti --name zalenium -p 4444:4444 /
    -v /var/run/docker.sock:/var/run/docker.sock /
    -v /tmp/videos:/home/seluser/videos /
    --privileged dosel/zalenium start --desiredContainers 5 --maxTestSessions 5
    ```
  - On Terminal - `bundle exec rake remote`
  - Goto to [Setting Up RSpec Zalenium - a docker solution](http://www.ruthtech.com/?p=2570)