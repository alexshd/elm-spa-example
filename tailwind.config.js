const colors = require("tailwindcss/colors");
const plugin = require("tailwindcss/plugin");

module.exports = {
  theme: {
    extend: {
      fontFamily: {
        display: ["Cinzel Decorative", "system-ui", "sans-serif"],
        body: ["Roboto", "system-ui", "sans-serif"],
      },
      colors: {
        sky: colors.sky,
        cyan: colors.cyan,
        "blue-gray": colors.blueGray,
        fuchsia: colors.fuchsia,
        "cool-gray": colors.coolGray,
        "true-gray": colors.trueGray,
        rose: colors.rose,
        violet: colors.violet,
        teal: colors.teal,
      },
    },
  },
  variants: [],
  plugins: [
    require("@tailwindcss/line-clamp"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
  ],
};
