return {
{ 'echasnovski/mini.files',
version = false,
enabled= require('nixCatsUtils').lazyAdd { 'utils', 'mini-files' },
opts = {},
}
}
