*** Settings ***
Documentation  Teste de back-end

Library     Selenium2Library
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary

*** Variables ***
${host}            https://fakerestapi.azurewebsites.net
${get_all}         /api/v1/Activities
${get_id}          /api/v1/Activities/1
${request_id}      2

*** Test Cases ***
Verificar get
   [Documentation]  Enviar uma requisição get e verificar o response se contem resposta no id
   [Tags]  BackEnd
   Create Session  mysession  ${host}  verify=true
   ${response}=  GET On Session  mysession  ${get_all}/${request_id}
   Status Should Be  200  ${response}  
 
   ${body}=  Convert To String  ${response.content}
   Should Contain  ${body}  id
   Should Contain  ${body}  "id":${request_id}
   log to console    ${response.status_code}
   log to console    ${response.content}
  