'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.on('/').render('welcome')
const Database = use('Database')

Route.get('/user', async () => {
   return Database.from('users').select('id', 'username').where('id', 0)
})
Route.delete('/user/del', async () => {
   await Database
     .table('users')
     .where('id', 0)
     .del()
})
