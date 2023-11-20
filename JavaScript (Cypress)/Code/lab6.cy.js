import Login from '../PageClass/login'

describe('Lab5', () => {
    const login = new Login()
    it('simpalid.com', () => {
        cy.visit('https://simpalsid.com/user/login')
        login.inputLogin().focus().type('UserLogin')
        login.inputPassword().type('UserPassword')
        login.btnLogin().click()
    });
    //Aliasing as('example')
    //Waiting cy.wait(1000)
  })