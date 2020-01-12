const cssnano = require('cssnano')({
  preset: 'default'
});

const purgecss = require('@fullhuman/postcss-purgecss')({
  content: [
    './app/views/**/*.erb'
  ],
  // Include any special characters you're using in this regular expression
  defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
});

module.exports = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    ...process.env.NODE_ENV === 'production'
      ? [cssnano, purgecss]
      : []
  ]
};