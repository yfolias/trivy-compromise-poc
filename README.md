# trivy-compromise-poc
A simple Proof of Concept demonstrating how a common CI/CD boundary issue can lead to incidents like the Trivy compromise.

> Note: This is not a full reproduction of the incident, but a high-level simulation of the initial access pattern.

For more details on the real incident, you can check below:

- [Trivy Hack Spreads Infostealer via Docker, Triggers Worm and Kubernetes Wiper](https://thehackernews.com/2026/03/trivy-hack-spreads-infostealer-via.html)
- [CVE-2026-33634 Detail](https://nvd.nist.gov/vuln/detail/CVE-2026-33634)

This PoC focuses on how **untrusted code can execute in a privileged CI context and access secrets at runtime**.

### Installing act locally
`curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash`

### Running the test
`./bin/act pull_request_target -s DEMO_SECRET=super-secret-value;`