/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./dist/**/*.{html,js,php}"],
  theme: {
    extend: {
      colors:{
        primary:"#ff3333",
        secondary:{
          100:"#9dc3ff",
          200:"#5b9aff",
          300:"#0284c7"
        }
      },
      borderWidth:{
        '100':'100px'
      },
      fontFamily:{
        bodyfont : ['Playwrite']
      }
    },
  },
  plugins: [],
}

