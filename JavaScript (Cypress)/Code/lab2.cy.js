describe('Traversal', () => {
  beforeEach(() => {
    cy.visit('https://simpalsid.com/user/login')
  })
  it('.children()', () => {
    cy.get('.login__wrapper')
    .children('form')
    .should('have.class', 'login__form')
  })
  it('.closest()', () => {
    cy.get('.login__form__field')
    .closest('form')
    .should('have.class', 'login__form')
  })
  it('.eq()', () => {
    cy.origin('https://999.md/ru', () => {
      cy.visit('/')
      cy.get('.main-CatalogNavigation ul li')
      .eq(1).should('contain', 'Недвижимость')
    })
  })
  it('.filter()', () => {
    cy.origin('https://999.md/ru', () => {
    cy.visit('/')
    cy.get('.main-CatalogNavigation ul li a')
    .filter(':contains("Транспорт")')
    })
  });
  it('.find()', () => {
    cy.origin('https://999.md/ru', () => {
    cy.visit('/')
    cy.get('nav.header_menu_nav')
    .find('ul')
    .find('li')
    .find('a')
    .should('have.length', 2)
    })
  });
  it('.first()', () => {
    cy.origin('https://999.md/ru', () => {
    cy.visit('/')
    cy.get('.main-CatalogNavigation')
    .find('ul')
    .find('li')
    .first().should('contain', 'Транспорт')
    })
  });
  it('.last()', () => {
    cy.origin('https://999.md/ru', () => {
      cy.visit('/')
      cy.get('.main-CatalogNavigation ul li')
      .last().should('contain', 'Знакомства')
    })
  });
  it('.next()', () => {
    cy.origin('https://999.md/ru', () => {
    cy.visit('/')
    cy.get('.main-CatalogNavigation')
    .find('ul')
    .find('li')
    .first().next()
    .should('contain', 'Недвижимость')
    })
  });
})