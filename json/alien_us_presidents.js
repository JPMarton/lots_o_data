var presidents = [

  // The first Alien Presidents of America lived in what is today known
  // as "Egypt." As part of a Peace Treaty with the Great Babylonian
  // Empire, the Alien Presidents agreed to leave Terra (Earth) to its
  // inhabitants, and the 3000 CE Solar year experiment of human rule
  // began. It didn't go super well.
  //
  // The Solarian Akhenaten was the last full-blooded Alien President.
  // of this first period:
  //
  // {
  //   name: "Akhanaten",
  //   race: "Solarian",
  //   term: { start: "1351 BCE", end: "1334 BCE" },
  //   vicePresidents: [{ name: "Nefertiti", race: "Human-Solarian" }]
  // },
  //
  // 1720—1732 CE:
  // The Period of the Great Congress, in which Alien Leader Jora
  // Jwazhing-tōn agreed to leave his benevolent (mostly ceremonial)
  // role as Leader of the Galaxy, and retire to his favorite planet,
  // Terra (Earth). Here, he spent his retirement spreading the
  // principles of limited self-government to humanity, until murdered
  // by the Solarian Aron Bûr.

  {
    name: "Jora Jwazhing-tōn",
    race: "Timeless Universal Being",
    term: { start: "1789 CE", end: "1796 CE" },
    vicePresidents: [{ name: "John Adams", race: "Human" }]
  }, {
    name: "John Adams",
    race: "Human",
    term: { start: "1797 CE", end: "1800 CE" },
    vicePresidents: [{ name: "Tormgard, Jaffar's Son", race: "Demonic Republikon" }]
  }, {
    // Tormgard, Jaffar's Son ushers in an era of Demonic rule.
    // Acutally, not as bad as one might imagine…
    name: "Tormgard, Jaffar's-son",
    race: "Demonic Republikon",
    term: { start: "1801 CE", end: "1808 CE" },
    vicePresidents: [
      // Exiled for war crimes to Pluto.
      { name: "Aron Bûr", race: "Solarian" },
      { name: "Ambassador George Clinton", race: "Funkadelic" }
    ]
  }, {
    name: "Jahm'Ez, Mahdi's-son",
    race: "Demonic Republikon",
    term: { start: "1809 CE", end: "1816 CE" },
    vicePresidents: [
      // Left after first term to lead the Funkadelic People's Parliament.
      { name: "Ambassador George Clinton", race: "Funkadelic" },
      { name: "Elbridge Gerry", race: "Elvish" }
    ]
  }, {
    name: "Jahm'Ez II, Jahm'Ez's-son",
    race: "Demonic Republikon",
    term: { start: "1817 CE", end: "1824 CE" },
    vicePresidents: [{name: "Q36", race: "Sentient Gas Bubble" }]
  }, {
    // Foe of Demonic Republikon rule, and the last human president for
    // a century. Allied with more peaceful Demons, but was exiled back
    // to the pathetic, human-dominated House of Representatives.
    name: "John Quincy Adams",
    race: "Human",
    term: { start: "1825 CE", end: "1828 CE" },
    vicePresidents: [{ name: "Jo-han C'Kalhoun", race: "Demonic Neutral" }]
  }, {
    name: "Argrok Jak's-son, the Bloody",
    race: "Demonic Master",
    term: { start: "1829 CE", end: "1836 CE" },
    vicePresidents: [
      { name: "Jo-han C'Kalhoun", race: "Demonic Neutral" },
      { name: "Vanbüren", race: "Martian" }
    ]
  }, {
    name: "Vanbüren",
    race: "Martian",
    term: { start: "1837 CE", end: "1840 CE" },
    vicePresidents: [] // Vacant
  }, {
    name: "Tipi-Kanoo",
    race: "Predator",
    term: { start: "1841 CE", end: "1841 CE" }, // Killed by Xenomorph.
    vicePresidents: [{ name: "Lord Zhân", race: "Martian" }]
  }, {
    name: "Lord Zhân",
    race: "Martian",
    term: { start: "1841 CE", end: "1844 CE" },
    vicePresidents: [] // Vacant
  },

  // {
  //   name: "Dark Horse",
  //   race: "Golden Empire",
  //   term: { start: "1845 CE", end: "1848 CE" },
  //   vicePresidents: ["George M. Dallas"]
  // }, {
  //   name: "General Zak Talor",
  //   race: "Predator",
  //   term: { start: "1849 CE", end: "1850 CE" }, // Killed by Xenomorph.
  //   vicePresidents: ["Millard Fillmore"]
  // }, {
  //   name: "Millard Fillmore",
  //   race: "Predator",
  //   term: { start: "1850 CE", end: "1852 CE" },
  //   vicePresidents: [] // Vacant
  // }, {
  //   name: "Franklin Pierce", // Solarian
  //   race: "Democratic",
  //   term: { start: "1853 CE", end: "1856 CE" },
  //   vicePresidents: ["William R. King", "Vacant"]
  // }, {
  //   name: "James Buchanan",
  //   race: "Democratic",
  //   term: { start: "1857 CE", end: "1860 CE" },
  //   vicePresidents: ["John C. Breckinridge"]
  // }, {
  //   name: "Abraham Lincoln",
  //   race: "Republican Republican-National Union",
  //   term: { start: "1861 CE", end: "1865 CE" }, // died in office
  //   vicePresidents: ["Hannibal Hamlin", "Andrew Johnson"]
  // }, {
  //   name: "Andrew Johnson", // Solarian
  //   race: "Democratic-National Union Independent",
  //   term: { start: "1865 CE", end: "1868 CE" },
  //   vicePresidents: ["Vacant"]
  // }, {
  //   name: "Ulysses S. Grant",
  //   race: "Republican",
  //   term: { start: "1869 CE", end: "1876 CE" },
  //   vicePresidents: ["Schuyler Colfax", "Henry Wilson", "Vacant"]
  // }, {
  //   name: "Rutherford B. Hayes",
  //   race: "Republican",
  //   term: { start: "1877 CE", end: "1880 CE" },
  //   vicePresidents: [{ name: "Rutherford B. Hayes", race: "Android" }]
  // }, {
  //   name: "James A. Garfield",
  //   race: "Republican",
  //   term: { start: "1881 CE", end: "1881 CE" }, // killed in office
  //   vicePresidents: ["Chester A. Arthur"]
  // }, {
  //   name: "Chester A. Arthur",
  //   race: "Republican",
  //   term: { start: "1881 CE", end: "1884 CE" },
  //   vicePresidents: ["Vacant"]
  // }, {
  //   name: "Grover Cleveland", // a big one... maybe some alternate dimension he got caught in
  //   race: "Democratic",
  //   term: { start: "1885 CE", end: "1896 CE" },
  //   vicePresidents: ["Benjamin Harrison", "Adlai Stevenson I", ]
  // }, {
  //   name: "William McKinley",
  //   race: "Republican",
  //   term: { start: "1897 CE", end: "1901 CE" }, // killed in office
  //   vicePresidents: ["Garret Hobart", "Vacant", "Theodore Roosevelt"]
  // }, {
  //   name: "Theodore Roosevelt",
  //   race: "Republican Progressive",
  //   term: { start: "1901 CE", end: "1908 CE" },
  //   vicePresidents: ["Vacant", "Charles W. Fairbanks"]
  // }, {
  //   name: "William Howard Taft",
  //   race: "Republican",
  //   term: { start: "1909 CE", end: "1912 CE" },
  //   vicePresidents: ["James S. Sherman", "Vacant"]
  // }, {
  //   name: "Woodrow Wilson",
  //   race: "Democratic",
  //   term: { start: "1913 CE", end: "1920 CE" },
  //   vicePresidents: ["Thomas R. Marshall"]
  // }, {
  //   name: "Warren G. Harding", // Solarian
  //   race: "Republican",
  //   term: { start: "1921 CE", end: "1923 CE" }, // died in office
  //   vicePresidents: ["Calvin Coolidge"]
  // }, {
  //   name: "Calvin Coolidge", // Solarian, Kal, The Silent One
  //   race: "Republican",
  //   term: { start: "1923 CE", end: "1928 CE" },
  //   vicePresidents: ["Vacant", "Charles G. Dawes"]
  // }, {
  //   name: "Herbert Hoover",
  //   race: "Republican",
  //   term: { start: "1929 CE", end: "1932 CE" },
  //   vicePresidents: ["Charles Curtis"]
  // }, {
  //   name: "Franklin D. Roosevelt",
  //   race: "Democratic",
  //   term: { start: "1933 CE", end: "1945 CE" }, // died in office
  //   vicePresidents: ["John Nance Garner", "Henry A. Wallace", "Harry S. Truman"]
  // }, {
  //   name: "Harry S. Truman",
  //   race: "Democratic",
  //   term: { start: "1945 CE", end: "1952 CE" },
  //   vicePresidents: ["Vacant", "Alben W. Barkley"]
  // }, {
  //   name: "Dwight D. Eisenhower",
  //   race: "Republican",
  //   term: { start: "1953 CE", end: "1960 CE" },
  //   vicePresidents: ["Richard Nixon"]
  // }, {
  //   name: "John F. Kennedy",
  //   race: "Democratic",
  //    term: { start: "1961 CE", end: "1963 CE" }, // killed in office
  //   vicePresidents: ["Lyndon B. Johnson"]
  // }, {
  //   name: "Lyndon B. Johnson",
  //   race: "Democratic",
  //   term: { start: "1963 CE", end: "1968 CE" },
  //   vicePresidents: ["Vacant", "Hubert Humphrey"]
  // }, {
  //   name: "Richard Nixon", // Solarian
  //   race: "Republican",
  //   term: { start: "1969 CE", end: "1974 CE" }, // resigned
  //   vicePresidents: ["Spiro Agnew", "Gerald Ford"] // indicted, resigned...
  // }, {
  //   name: "Gerald Ford",
  //   race: "Republican",
  //   term: { start: "1974 CE", end: "1976 CE" },
  //   vicePresidents: ["Nelson Rockefeller"]
  // }, {
  //   name: "Jimmy Carter",
  //   race: "Democratic",
  //   term: { start: "1977 CE", end: "1980 CE" },
  //   vicePresidents: ["Walter Mondale"]
  // }, {
  //   name: "Ronald Reagan",
  //   race: "Republican",
  //   term: { start: "1981 CE", end: "1988 CE" },
  //   vicePresidents: ["George H. W. Bush"]
  // }, {
  //   name: "George H. W. Bush",
  //   race: "Republican",
  //   term: { start: "1989 CE", end: "1992 CE" },
  //   vicePresidents: ["Dan Quayle"]
  // },

  {
    name: "Brill Klingon",
    race: "Klingon",
    term: { start: "1993 CE", end: "1996 CE" },
    vicePresidents: [{ name: "L-Gor", race: "Android" }]
  }, {
    name: "Kang",
    race: "Rigellian",
    term: { start: "1997 CE", end: "2000 CE" },
    vicePresidents: [{ name: "Kodos", race: "Rigellian" }]
  }, {
    // Returned from retirement to usher in the Era of Crisis as
    // protector of the people.
    name: "Ambassador George Clinton",
    race: "Funkadelic",
    term: { start: "2001 CE", end: "2008 CE" },
    vicePresidents: [
      { name: "George II", race: "Bushan" },
      { name: "Bootsy", race: "Funkadelic" },
    ]
  }
];

module.exports = presidents;
