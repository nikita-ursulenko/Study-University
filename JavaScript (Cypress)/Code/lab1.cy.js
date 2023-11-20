describe('Querying', function() {
  beforeEach(() => {
    cy.visit('https://simpalsid.com/user/login')
  })
  it('get', () => {
    cy.get('.login__form__footer__submit')
  });
  it('should', () => {
  cy.get('.login__form__footer__submit')
    .should('be.visible')
  });
  it('contains', () => {
   
    cy.get('.login__form__footer__submit')
    .contains('Войти')
  });
  it('click', () => {
    cy.get('.login__form__footer__submit')
      .should('be.visible')
      .click()
    });
    it('root', () => {
      cy.root().should('match', 'html')
      cy.get('.login__form').within(() => {
        // In this within, the root is now the ul DOM element
        cy.root().should('have.class', 'login__form')
      })
    });
})