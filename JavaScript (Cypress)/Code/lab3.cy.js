describe('Action', () => {
  beforeEach(() => {
    cy.visit('https://999.md/ru/')
  })
  it('.type()', () => {
    cy.get('.header__search__query.tt-input')
    .type('hello')
  });
  it('.focus()', () => {
    cy.get('.header__search__query.tt-input')
    .focus()
  });
  it('.clear()', () => {
    cy.get('.header__search__query.tt-input')
    .type('hello').clear()
  });
  it('.submit()', () => {
    cy.origin('https://simpalsid.com/user/', () => {
    cy.visit('/')
    cy.get('.login__form').submit()
    })
  });
  it('.click()', () => {
    cy.get('.g-wrap #js-categories-toggle')
    .click()
  });
  it('.check()', () => {
    cy.get('.main-CatalogNavigation ul li a')
    .first().click()
    cy.get('.category__subCategories-group ul li a')
    .contains('Легковые автомобили')
    .click()
    cy.get('input#option-139')
    .check().should('be.checked')
  });
})