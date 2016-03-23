var util = require('util');

// Note about Vice Presidential Vacancies: (from Wikipedia)
//
// Prior to ratification of the Twenty- fifth Amendment to the United
// States Constitution in 1967, there was no mechanism by which a vacancy
// in  the Vice Presidency could be filled. Richard Nixon was the first
// president to fill such a vacancy under the provisions of the Twenty-
// fifth Amendment when he appointed Gerald Ford. Ford later became the
// second president to fill a vice presidential vacancy when he appointed
// Nelson Rockefeller to succeed him.
//
// Note about the beginning and ending of terms: (from Wikipedia)
//
// The Twentieth Amendment (Amendment XX) to the United States
// Constitution moved the beginning and ending of the terms of the
// President and Vice President from March 4 to January 20, and of
// members of Congress from March 4 to January 3. It also has provisions
// that determine what is to be done when there is no President-elect.
// The Twentieth Amendment was ratified on January 23, 1933. [PJ: it went
// in to effect for the following election (1936-7).]
//
// Note about the images included:
//
// All images are of the official portrait of the president.
//
// 1.  Grover Cleveland has one for each of his non-consecutive terms.
// 2.  Gerald Ford and Ronald Reagan had their portraits painted by a
//     private individual, and neither's portrait is in the public
//     domain.
// 3.  Barack Obama's portrait has not yet been unveiled yet. (Mar 2016)

var presidents = [
  {
    name:      "George Washington",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Gilbert_Stuart_-_George_Washington_-_Google_Art_Project.jpg/112px-Gilbert_Stuart_-_George_Washington_-_Google_Art_Project.jpg",
    lifespan:  "1732..1799",
    homeState: "Virginia",
    parties:   ["Independent"],
    terms: [
      {
        start: Date.parse("April 30, 1789"),
        end:   Date.parse("March 4, 1793"),
        vicePresidents: ["John Adams"]
      }, {
        start: Date.parse("March 4, 1793"),
        end:   Date.parse("March 4, 1797"),
        vicePresidents: ["John Adams"]
      }
    ]
  }, {
    name:      "John Adams",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Adamstrumbull.jpg/163px-Adamstrumbull.jpg",
    lifespan:  "1735..1826",
    homeState: "Massachusetts",
    parties:   ["Federalist"],
    terms: [{
      start: Date.parse("March 4, 1797"),
      end:   Date.parse("March 4, 1801"),
      vicePresidents: ["Thomas Jefferson"]
    }]
  }, {
    name:      "Thomas Jefferson",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Official_Presidential_portrait_of_Thomas_Jefferson_%28by_Rembrandt_Peale%2C_1800%29.jpg/151px-Official_Presidential_portrait_of_Thomas_Jefferson_%28by_Rembrandt_Peale%2C_1800%29.jpg",
    lifespan:  "1743..1826",
    homeState: "Virginia",
    parties:   ["Democratic-Republican"],
    terms: [
      {
        start: Date.parse("March 4, 1801"),
        end:   Date.parse("March 4, 1805"),
        vicePresidents: ["Aaron Burr"]
      }, {
        start: Date.parse("March 4, 1805"),
        end:   Date.parse("March 4, 1809"),
        vicePresidents: ["George Clinton"]
      }
    ]
  }, {
    name:      "James Madison",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/James_Madison.jpg/148px-James_Madison.jpg",
    lifespan:  "1751..1836",
    homeState: "Virginia",
    parties:   ["Democratic-Republican"],
    terms: [
      {
        start: Date.parse("March 4, 1809"),
        end:   Date.parse("March 4, 1813"),
        vicePresidents: [
          "George Clinton", // died in office
          "Vacant"
        ]
      }, {
        start: Date.parse("March 4, 1813"),
        end:   Date.parse("March 4, 1817"),
        vicePresidents: [
          "Elbridge Gerry", // died in office
          "Vacant"
        ]
      }
    ]
  }, {
    name:      "James Monroe",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/James_Monroe_White_House_portrait_1819.gif/149px-James_Monroe_White_House_portrait_1819.gif",
    lifespan:  "1758..1831",
    homeState: "Virginia",
    parties:   ["Democratic-Republican"],
    terms: [
      {
        start: Date.parse("March 4, 1817"),
        end:   Date.parse("March 4, 1821"),
        vicePresidents: ["Daniel D. Tompkins"]
      }, {
        start: Date.parse("March 4, 1821"),
        end:   Date.parse("March 4, 1825"),
        vicePresidents: ["Daniel D. Tompkins"]
      }
    ]
  }, {
    name:      "John Quincy Adams",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/John_Quincy_Adams_by_GPA_Healy%2C_1858.jpg/137px-John_Quincy_Adams_by_GPA_Healy%2C_1858.jpg",
    lifespan:  "1767..1848",
    homeState: "Massachusetts",
    parties:   ["Democratic-Republican"],
    terms: [{
      start:     Date.parse("March 4, 1825"),
      end:       Date.parse("March 4, 1829"),
      vicePresidents: ["John C. Calhoun"]
    }]
  }, {
    name:      "Andrew Jackson",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Andrew_jackson_head.jpg/148px-Andrew_jackson_head.jpg",
    lifespan:  "1767..1845",
    homeState: "Tennessee",
    parties:   ["Democratic"],
    terms: [
      {
        start:     Date.parse("March 4, 1829"),
        end:       Date.parse("March 4, 1833"),
        vicePresidents: [
          "John C. Calhoun", // resigned
          "Vacant"
        ]
      }, {
        start:     Date.parse("March 4, 1833"),
        end:       Date.parse("March 4, 1837"),
        vicePresidents: ["Martin Van Buren"]
      }
    ]
  }, {
    name:      "Martin Van Buren",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Mvanburen.jpeg/134px-Mvanburen.jpeg",
    lifespan:  "1782..1862",
    homeState: "New York",
    parties:   ["Democratic"],
    terms: [{
      start: Date.parse("March 4, 1837"),
      end:   Date.parse("March 4, 1841"),
      vicePresidents: ["Richard Mentor Johnson"]
    }]
  }, {
    name:      "William Henry Harrison",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/William_Henry_Harrison_by_James_Reid_Lambdin%2C_1835.jpg/149px-William_Henry_Harrison_by_James_Reid_Lambdin%2C_1835.jpg",
    lifespan:  "1773..1841",
    homeState: "Ohio",
    parties:   ["Whig"],
    terms: [{
      start: Date.parse("March 4, 1841"),
      end:   Date.parse("April 4, 1841"), // died in office
      vicePresidents: ["John Tyler"]
    }]
  }, {
    name:      "John Tyler",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/WHOportTyler.jpg/136px-WHOportTyler.jpg",
    lifespan:  "1790..1862",
    homeState: "Virginia",
    parties:   ["Whig", "Independent"],
    terms: [{
      start: Date.parse("April 4, 1841"),
      end:   Date.parse("March 4, 1845"),
      vicePresidents: ["Vacant"]
    }]
  }, {
    name:      "James K. Polk",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/James_Knox_Polk_by_GPA_Healy%2C_1858.jpg/136px-James_Knox_Polk_by_GPA_Healy%2C_1858.jpg",
    lifespan:  "1795..1849",
    homeState: "Tennessee",
    parties:   ["Democratic"],
    terms: [{
      start: Date.parse("March 4, 1845"),
      end:   Date.parse("March 4, 1849"),
      vicePresidents: ["George M. Dallas"]
    }]
  }, {
    name:      "Zachary Taylor",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Zachary_Taylor_by_Joseph_Henry_Bush%2C_c1848.jpg/138px-Zachary_Taylor_by_Joseph_Henry_Bush%2C_c1848.jpg",
    lifespan:  "1784..1850",
    homeState: "Louisiana",
    parties:   ["Whig"],
    terms: [{
      start: Date.parse("March 4, 1849"),
      end:   Date.parse("July 9, 1850"), // died in office
      vicePresidents: ["Millard Fillmore"]
    }]
  }, {
    name:      "Millard Fillmore",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Mfillmore.jpeg/111px-Mfillmore.jpeg",
    lifespan:  "1800..1874",
    homeState: "New York",
    parties:   ["Whig"],
    terms: [{
      start: Date.parse("July 9, 1850"),
      end:   Date.parse("March 4, 1853"),
      vicePresidents: ["Vacant"]
    }]
  }, {
    name:      "Franklin Pierce",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Franklin_Pierce_by_GPA_Healy%2C_1858.jpg/137px-Franklin_Pierce_by_GPA_Healy%2C_1858.jpg",
    lifespan:  "1804..1869",
    homeState: "New Hampshire",
    parties:   ["Democratic"],
    terms: [{
      start: Date.parse("March 4, 1853"),
      end:   Date.parse("March 4, 1857"),
      vicePresidents: [
        "William R. King", // died in office (highest office of any Alabama'n)
        "Vacant"
      ]
    }]
  }, {
    name:      "James Buchanan",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/James_Buchanan%2C_by_George_Peter_Alexander_Healy.jpg/137px-James_Buchanan%2C_by_George_Peter_Alexander_Healy.jpg",
    lifespan:  "1791..1868",
    homeState: "Pennsylvania",
    parties:   ["Democratic"],
    terms: [{
      start: Date.parse("March 4, 1857"),
      end:   Date.parse("March 4, 1861"),
      vicePresidents: ["John C. Breckinridge"]
    }]
  }, {
    name:      "Abraham Lincoln",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Alincoln.jpeg/135px-Alincoln.jpeg",
    lifespan:  "1809..1865",
    homeState: "Kentucky, Illinois",
    parties:   ["Republican", "Republican-National Union"],
    terms: [
      {
        start: Date.parse("March 4, 1861"),
        end:   Date.parse("March 4, 1865"),
        vicePresidents: ["Hannibal Hamlin"]
      }, {
        start: Date.parse("March 4, 1865"),
        end:   Date.parse("April 15, 1865"), // assassinated... ✝
        vicePresidents: ["Andrew Johnson"]
      }
    ]
  }, {
    name:      "Andrew Johnson",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Ajohnson.jpeg/147px-Ajohnson.jpeg",
    lifespan:  "1808..1875",
    homeState: "Tennessee",
    parties:   ["Democratic-National Union", "Independent"],
    terms: [{
      start: Date.parse("April 15, 1865"),
      end:   Date.parse("March 4, 1869"),
      vicePresidents: ["Vacant"]
    }]
  }, {
    name:      "Ulysses S. Grant",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Ugrant.jpeg/138px-Ugrant.jpeg",
    lifespan:  "1822..1885",
    homeState: "Ohio, Illinois",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("March 4, 1869"),
        end:   Date.parse("March 4, 1873"),
        vicePresidents: ["Schuyler Colfax"]
      }, {
        start: Date.parse("March 4, 1873"),
        end:   Date.parse("March 4, 1877"),
        vicePresidents: [
          "Henry Wilson", // died in office
          "Vacant"
        ]
      }
    ]
  }, {
    name:      "Rutherford B. Hayes",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Rhayes.jpeg/107px-Rhayes.jpeg",
    lifespan:  "1822..1893",
    homeState: "Ohio",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("March 4, 1877"),
      end:   Date.parse("March 4, 1881"),
      vicePresidents: ["William A. Wheeler"]
    }]
  }, {
    name:      "James A. Garfield",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Jgarfield.jpeg/145px-Jgarfield.jpeg",
    lifespan:  "1831..1881",
    homeState: "Ohio",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("March 4, 1881"),
      end:   Date.parse("September 19, 1881"), // assassinated
      vicePresidents: ["Chester A. Arthur"]
    }]
  }, {
    name:      "Chester A. Arthur",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Carthur.jpeg/112px-Carthur.jpeg",
    lifespan:  "1829..1886",
    homeState: "New York",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("September 19, 1881"),
      end:   Date.parse("March 4, 1885"),
      vicePresidents: ["Vacant"]
    }]
  },
  {
    name:      "Grover Cleveland",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Gcleveland.jpeg/133px-Gcleveland.jpeg",
    lifespan:  "1837..1908",
    homeState: "New York",
    parties:   ["Democratic"],
    terms: [{
        imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Gcleveland.jpeg/133px-Gcleveland.jpeg",
        start: Date.parse("March 4, 1885"),
        end:   Date.parse("March 4, 1889"),
        vicePresidents: [
          "Thomas A. Hendricks", // died in office
          "Vacant"
        ]
      }, {
        imageUri: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Anders_Leonard_Zorn_-_Grover_Cleveland_-_Google_Art_Project.jpg/132px-Anders_Leonard_Zorn_-_Grover_Cleveland_-_Google_Art_Project.jpg",
        start: Date.parse("March 4, 1893"),
        end:   Date.parse("March 4, 1897"),
        vicePresidents: ["Adlai Stevenson I"]
    }]
  }, {
    name:      "Benjamin Harrison",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Benjamin_Harrison_%28official_Presidential_portrait%2C_1895%29.jpg/119px-Benjamin_Harrison_%28official_Presidential_portrait%2C_1895%29.jpg",
    lifespan:  "1833..1901",
    homeState: "Indiana",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("March 4, 1889"),
      end:   Date.parse("March 4, 1893"),
      vicePresidents: ["Levi P. Morton"]
    }]
  }, {
    name:      "William McKinley",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Wmckinley.jpeg/105px-Wmckinley.jpeg",
    lifespan:  "1843..1901",
    homeState: "Ohio",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("March 4, 1897"),
        end:   Date.parse("March 4, 1901"),
        vicePresidents: [
          "Garret Hobart", // died in office
          "Vacant"
        ]
      },
      {
        start: Date.parse("March 4, 1901"),
        end:   Date.parse("September 14, 1901"), // assassinated
        vicePresidents: ["Theodore Roosevelt"]
      }
    ]
  }, {
    name:      "Theodore Roosevelt",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Troosevelt.jpeg/120px-Troosevelt.jpeg",
    lifespan:  "1858..1919",
    homeState: "New York",
    parties:   ["Republican", "Progressive"],
    terms: [
      {
        start: Date.parse("September 14, 1901"),
        end:   Date.parse("March 4, 1905"),
        vicePresidents: ["Vacant"]
      }, {
        start: Date.parse("March 4, 1905"),
        end:   Date.parse("March 4, 1909"),
        vicePresidents: ["Charles W. Fairbanks"]
      }
    ]
  }, {
    name:      "William Howard Taft",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Whtaft.jpeg/138px-Whtaft.jpeg",
    lifespan:  "1857..1930",
    homeState: "Ohio",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("March 4, 1909"),
      end:   Date.parse("March 4, 1913"),
      vicePresidents: [
        "James S. Sherman", // died in office
        "Vacant"
      ]
    }]
  }, {
    name:      "Woodrow Wilson",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Presidentwoodrowwilson.jpeg/145px-Presidentwoodrowwilson.jpeg",
    lifespan:  "1856..1924",
    homeState: "New Jersey",
    parties:   ["Democratic"],
    terms: [
      {
        start: Date.parse("March 4, 1913"),
        end:   Date.parse("March 4, 1917"),
        vicePresidents: ["Thomas R. Marshall"]
      }, {
        start: Date.parse("March 4, 1917"),
        end:   Date.parse("March 4, 1921"), // incapacitated by stroke... did not leave office
        vicePresidents: ["Thomas R. Marshall"]
      }
    ]
  }, {
    name:      "Warren G. Harding",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Wharding.jpeg/113px-Wharding.jpeg",
    lifespan:  "1865..1923",
    homeState: "Ohio",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("March 4, 1921"),
      end:   Date.parse("August 2, 1923"), // died in office
      vicePresidents: ["Calvin Coolidge"]
    }]
  }, {
    name:      "Calvin Coolidge",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Ccoolidge.jpeg/162px-Ccoolidge.jpeg",
    lifespan:  "1872..1933",
    homeState: "Vermont, Massachusetts",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("August 2, 1923"),
        end:   Date.parse("March 4, 1925"),
        vicePresidents: ["Vacant"]
      }, {
        start: Date.parse("March 4, 1925"),
        end:   Date.parse("March 4, 1929"),
        vicePresidents: ["Charles G. Dawes"]
      }
    ]
  }, {
    name:      "Herbert Hoover",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Hhoover.jpeg/142px-Hhoover.jpeg",
    lifespan:  "1874..1964",
    homeState: "Iowa, California",
    parties:   ["Republican"],
    terms: [{
      start:     Date.parse("March 4, 1929"),
      end:       Date.parse("March 4, 1933"),
      vicePresidents: ["Charles Curtis"]
    }]
  }, {
    name:      "Franklin D. Roosevelt",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Froosevelt.jpeg/145px-Froosevelt.jpeg",
    lifespan:  "1882..1945",
    homeState: "New York",
    parties:   ["Democratic"],
    terms: [
      {
        start: Date.parse("March 4, 1933"),
        end:   Date.parse("January 20, 1937"),
        vicePresidents: ["John Nance Garner"]
      }, {
        start: Date.parse("January 20, 1937"),
        end:   Date.parse("January 20, 1941"),
        vicePresidents: ["John Nance Garner"]
      }, {
        start: Date.parse("January 20, 1941"),
        end:   Date.parse("January 20, 1945"),
        vicePresidents: ["Henry A. Wallace"]
      }, {
        start: Date.parse("January 20, 1945"),
        end:   Date.parse("April 12, 1945"), // died in office
        vicePresidents: ["Harry S. Truman"]
      }
    ]
  }, {
    name:      "Harry S. Truman",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/HarryTruman.jpg/142px-HarryTruman.jpg",
    lifespan:  "1884..1972",
    homeState: "Missouri",
    parties:   ["Democratic"],
    terms: [
      {
        start: Date.parse("April 12, 1945"),
        end:   Date.parse("January 20, 1949"),
        vicePresidents: ["Vacant"]
      }, {
        start: Date.parse("January 20, 1949"),
        end:   Date.parse("January 20, 1953"),
        vicePresidents: ["Alben W. Barkley"]
      }
    ]
  }, {
    name:      "Dwight D. Eisenhower",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Dwight_D._Eisenhower%2C_official_Presidential_portrait.jpg/141px-Dwight_D._Eisenhower%2C_official_Presidential_portrait.jpg",
    lifespan:  "1890..1969",
    homeState: "Kansas",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("January 20, 1953"),
        end:   Date.parse("January 20, 1957"),
        vicePresidents: ["Richard Nixon"]
      }, {
        start: Date.parse("January 20, 1957"),
        end:   Date.parse("January 20, 1961"),
        vicePresidents: ["Richard Nixon"]
      }
    ]
  }, {
    name:      "John F. Kennedy",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/John_F_Kennedy_Official_Portrait.jpg/122px-John_F_Kennedy_Official_Portrait.jpg",
    lifespan:  "1917..1963",
    homeState: "Massachusetts",
    parties:   ["Democratic"],
     terms: [{
      start: Date.parse("January 20, 1961"),
      end:   Date.parse("November 22, 1963"), // assassinated
      vicePresidents: ["Lyndon B. Johnson"]
    }]
  }, {
    name:      "Lyndon B. Johnson",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Ljohnson.jpeg/151px-Ljohnson.jpeg",
    lifespan:  "1908..1973",
    homeState: "Texas",
    parties:   ["Democratic"],
    terms: [
      {
        start: Date.parse("November 22, 1963"),
        end:   Date.parse("January 20, 1965"),
        vicePresidents: ["Vacant"]
      }, {
        start: Date.parse("January 20, 1965"),
        end:   Date.parse("January 20, 1969"),
        vicePresidents: ["Hubert Humphrey"]
      }
    ]
  }, {
    name:      "Richard Nixon",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Richard_Nixon_-_Presidential_portrait.jpg/137px-Richard_Nixon_-_Presidential_portrait.jpg",
    lifespan:  "1913..1994",
    homeState: "California",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("January 20, 1969"),
        end:   Date.parse("January 20, 1973"),
        vicePresidents: ["Spiro Agnew"]
      },
      {
        start: Date.parse("January 20, 1973"),
        end:   Date.parse("August 9, 1974"), // resigned, pardoned...
        vicePresidents: [
          "Spiro Agnew", // indicted, resigned...
          // "Vacant",   // no longer an issue, since a new VP could be named
          "Gerald Ford"
        ]
      }
    ]
  }, {
    name:      "Gerald Ford",
    imageUri:  "https://mowryjournal.files.wordpress.com/2012/12/ford-gerald-presidential-portrait1.jpg?w=1000", // not in public domain!
    lifespan:  "1913..2006",
    homeState: "Michigan",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("August 9, 1974"),
      end:   Date.parse("January 20, 1977"),
      vicePresidents: [
        // "Vacant",
        "Nelson Rockefeller"
      ]
    }]
  }, {
    name:      "Jimmy Carter",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Official_presidential_portrait_of_Jimmy_Carter_%28by_Herbert_E._Abrams%2C_1982%29.jpg/153px-Official_presidential_portrait_of_Jimmy_Carter_%28by_Herbert_E._Abrams%2C_1982%29.jpg",
    lifespan:  "1924..",
    homeState: "Georgia",
    parties:   ["Democratic"],
    terms: [{
      start: Date.parse("January 20, 1977"),
      end:   Date.parse("January 20, 1981"),
      vicePresidents: ["Walter Mondale"]
    }]
  }, {
    name:      "Ronald Reagan",
    imageUri:  "https://mowryjournal.files.wordpress.com/2013/03/reagan-ronald-presidential-portrait.jpeg", // not in public domain!
    lifespan:  "1911..2004",
    homeState: "California",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("January 20, 1981"),
        end:   Date.parse("January 20, 1985"),
        vicePresidents: ["George H. W. Bush"]
      }, {
        start: Date.parse("January 20, 1985"),
        end:   Date.parse("January 20, 1989"),
        vicePresidents: ["George H. W. Bush"]
      }
    ]
  }, {
    name:      "George H. W. Bush",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/George_H._W._Bush_-_Presidential_portrait.jpg/145px-George_H._W._Bush_-_Presidential_portrait.jpg",
    lifespan:  "1924..",
    homeState: "Massachusetts, Texas",
    parties:   ["Republican"],
    terms: [{
      start: Date.parse("January 20, 1989"),
      end:   Date.parse("January 20, 1993"),
      vicePresidents: ["Dan Quayle"]
    }]
  }, {
    name:      "Bill Clinton",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Bill_Clinton_-_Presidential_portrait.jpg/141px-Bill_Clinton_-_Presidential_portrait.jpg",
    lifespan:  "1946..",
    homeState: "Arkansas",
    parties:   ["Democratic"],
    terms: [
      {
        start: Date.parse("January 20, 1993"),
        end:   Date.parse("January 20, 1997"),
        vicePresidents: ["Al Gore"]
      }, {
        start: Date.parse("January 20, 1997"),
        end:   Date.parse("January 20, 2001"),
        vicePresidents: ["Al Gore"]
      }
    ]
  }, {
    name:      "George W. Bush",
    imageUri:  "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/George_W_Bush_-_Presidential_portrait.jpg/144px-George_W_Bush_-_Presidential_portrait.jpg",
    lifespan:  "1946..",
    homeState: "Texas",
    parties:   ["Republican"],
    terms: [
      {
        start: Date.parse("January 20, 2001"),
        end:   Date.parse("January 20, 2005"),
        vicePresidents: ["Dick Cheney"]
      }, {
        start: Date.parse("January 20, 2005"),
        end:   Date.parse("January 20, 2009"),
        vicePresidents: ["Dick Cheney"]
      }
    ]
  }
  // , {
  //   name:      "Barack Obama",
  //   imageUri:  "", // none yet...
  //   lifespan:  "1961..",
  //   homeState: "Hawaii, Illinois",
  //   parties:   ["Democratic"],
  //   terms: [
  //     {
  //       start: Date.parse("January 20, 2009"),
  //       end:   Date.parse("January 20, 2013"),
  //       vicePresidents: ["Joe Biden"] // home state: Deleware
  //     }, {
  //       start: Date.parse("January 20, 2013"),
  //       end:   null,
  //       vicePresidents: ["Joe Biden"]
  //     }
  //   ]
  // }
];

console.log(util.inspect(presidents, {showHidden: false, depth: null}));

// TODO:
// https://en.wikipedia.org/wiki/Religious_affiliations_of_Presidents_of_the_United_States
// denomination:
  // _______, (formerly ...)
  // None, unknown, or unclear

module.exports = presidents;
