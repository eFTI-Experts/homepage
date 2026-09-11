/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './_layouts/**/*.html',
    './_includes/**/*.html',
    './_pages/**/*.md',
    './*.md',
    './*.html',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Roboto', 'sans-serif'],
      },
      colors: {
        brand: '#4A58A6',
        'brand-light': '#EEEDFF',
        'brand-dark': '#3a4690',
      },
    },
    container: {
      center: true,
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
