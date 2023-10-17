const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        prox: ['Proxima Nova', 'sans-serif'],
      },
      colors: {
        cBlue: {
          100: '#3778c2',
        },
        cGreen: {
          100: '#5fb523',
        },
        cBlack: {
          100: '#434b54',
        },
      },
      maxWidth: {
        'xxs': '200px',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
