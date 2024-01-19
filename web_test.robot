
Library  SeleniumLibrary

${BROWSER}         chrome
${URL}             https://book-storage-mern-stack-frontend-git-main-ikram-khanis-projects.vercel.app/


Open Browser and Verify Book List
    Open Browser  ${URL}  ${BROWSER}
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser

Search for a Book
    Open Browser  ${URL}  ${BROWSER}
    Input Text  name=searchTitle  <your-search-keyword>
    Click Element  css:button[type="submit"]
    Page Should Contain Element  xpath://h3[contains(text(), 'Search Results')]
    [Teardown]  Close Browser

Add a Book
    Open Browser  ${URL}  ${BROWSER}
    Click Element  link:Add Book
    Input Text  name=title  <your-book-title>
    Input Text  name=author  <your-book-author>
    Input Text  name=publishYear  <your-publish-year>
    Click Element  css:button[type="submit"]
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser

Edit a Book
    Open Browser  ${URL}  ${BROWSER}
    Click Element  xpath://button[contains(text(), 'Edit')]
    Input Text  name=title  <updated-title>
    Input Text  name=author  <updated-author>
    Input Text  name=publishYear  <updated-publish-year>
    Click Element  css:button[type="submit"]
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser

Delete a Book
    Open Browser  ${URL}  ${BROWSER}
    Click Element  xpath://button[contains(text(), 'Delete')]
    Confirm Action  Click OK
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser

Open Browser and Verify Login Elements
    Open Browser  ${URL}  ${BROWSER}
    Click Element  link:Login
    Page Should Contain Element  xpath://input[@placeholder='ikram']
    Page Should Contain Element  xpath://input[@placeholder='234324']
    Page Should Contain Element  css:button[type="button"]
    [Teardown]  Close Browser

Open Browser and Verify Registration Elements
    Open Browser  ${URL}  ${BROWSER}
    Click Element  link:Register
    Page Should Contain Element  xpath://input[@placeholder='habijiba']
    Page Should Contain Element  xpath://input[@placeholder='afkjla']
    Page Should Contain Element  css:button[type="button"]
    [Teardown]  Close Browser

Login
    Open Browser  ${URL}  ${BROWSER}
    Click Element  link:Login
    Input Text  name=username  <ikramkan>
    Input Text  name=password  <34359988>
    Click Element  css:button[type="button"]
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser

Register
    Open Browser  ${URL}  ${BROWSER}
    Click Element  link:Register
    Input Text  name=username  <habib>
    Input Text  name=password  <zajfkfj>
    Click Element  css:button[type="button"]
    Page Should Contain Element  xpath://h2[contains(text(), 'Book List')]
    [Teardown]  Close Browser