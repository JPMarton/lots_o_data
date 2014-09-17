module Shakespeare
  #
  # PJ, v1 August 2014
  #
  # Sources:
  #   - Unless otherwise stated, the data is compiled from Wikipedia... A lot of
  #     the data (for example: 'years composed' is very unclear for pre-1600
  #     plays, or 'authorship') is a matter of bitter academic dispute. This is
  #     note meant to be authoritative, but instead a fun data set on which we
  #     can practice a number of transformations.
  #     - http://en.wikipedia.org/wiki/Shakespeare's_plays
  #     - http://en.wikipedia.org/wiki/Shakespeare_Apocrypha
  #     - http://en.wikipedia.org/wiki/William_Shakespeare's_collaborations
  #     - http://en.wikipedia.org/wiki/Chronology_of_Shakespeare
  #     - http://en.wikipedia.org/wiki/First_Folio
  #   - **Genre:**  http://shakespeare.mit.edu/ et al
  #   - **Length:** http://www.opensourceshakespeare.org/views/plays/plays_numwords.php
  #     - missing: Edward III, Two Noble Kinsmen
  #
  #   - characters: http://www.opensourceshakespeare.org/views/plays/plays.php
  #     - going to have to scrape...
  #   - summaries are difficult... http://www.darkwinner.com/literature/shakes/shakesSum.html ?
  #
  COMPLETE_WORKS = [
    #
    #  To add:
    #    :characters => [
    #      {
    #        :name => '',
    #        :description => '', (optional)
    #        :lines => 0
    #      },
    #      ...
    #    ],
    #   :summary => '',
    #
    #   - (using the complete title in the first published thing)
    #   - (a complete breakdown of the sonnets and more info on the poems)
    #   - (Funeral Elegy by W.S.) ?
    #
    {
      :title           => 'The Two Gentlemen of Verona',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1589..1591,
      :first_published => 'First Folio (1623)',
      :length          => 17_129
    },
    {
      :title           => 'The Taming of the Shrew',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1590..1594,
      :first_published => 'First Folio (1623)',
      :length          => 21_055
    },
    {
      :title           => 'Henry VI, Part 2',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1590..1591,
      :first_published => 'The Contention..., in quarto (1594)',
      :length          => 25_439
    },
    {
      :title           => 'Henry VI, Part 3',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1591,
      :first_published => 'True Tragedy..., in octavo (1595)',
      :length          => 24_294
    },
    {
      :title           => 'Henry VI, Part 1',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1591,
      :first_published => 'First Folio (1623)',
      :length          => 21_607
    },
    {
      :title           => 'Titus Andronicus',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1591..1592,
      :first_published => '... in quarto (1594)',
      :length          => 20_743
    },
    {
      :title           => 'Richard III',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1592,
      :first_published => '... in quarto (1597)',
      :length          => 29_278
    },
    {
      :title           => 'Edward III',
      :authorship      => 'Collaboration (disputed/unclear)',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1592..1593,
      :first_published => '... in quarto (1596)',
      :length          => nil
    },
    {
      :title           => 'The Comedy of Errors',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1594,
      :first_published => 'First Folio (1623)',
      :length          => 14_701
    },
    {
      :title           => 'Love\'s Labour\'s Lost',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1594..1595,
      :first_published => '... in quarto (1598)',
      :length          => 21_459
    },
    {
      :title           => 'Love\'s Labour\'s Won',
      :authorship      => 'Complete (disputed/unclear)',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1595..1596,
      :first_published => '',
      :length          => nil,
      :lost => true
    },
    {
      :title           => 'Richard II',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1595,
      :first_published => '... in quarto (1597)',
      :length          => 22_423
    },
    {
      :title           => 'Romeo and Juliet',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1595,
      :first_published => '... in quarto (1597)',
      :length          => 24_545
    },
    {
      :title           => 'A Midsummer Night\'s Dream',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1595,
      :first_published => '... in quarto (1595)',
      :length          => 16_511
    },
    {
      :title           => 'King John',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1596,
      :first_published => 'First Folio (1623)',
      :length          => 20_772
    },
    {
      :title           => 'The Merchant of Venice',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1596,
      :first_published => '... in quarto (1600)',
      :length          => 21_291
    },
    {
      :title           => 'Henry IV, Part 1',
      :authorship      => 'Collaboration (likely)',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1596..1597,
      :first_published => '... in quarto (1598)',
      :length          => 24_579
    },
    {
      :title           => 'The Merry Wives of Windsor',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1597..1598,
      :first_published => '... in quarto (1602)',
      :length          => 21_845
    },
    {
      :title           => 'Henry IV, Part 2',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1596..1597,
      :first_published => '... in quarto (1600)',
      :length          => 25_689
    },
    {
      :title           => 'Much Ado About Nothing',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1598..1599,
      :first_published => '... in quarto (1600)',
      :length          => 21_157
    },
    {
      :title           => 'Henry V',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1599,
      :first_published => '... in quarto (1600)',
      :length          => 26_119
    },
    {
      :title           => 'Julius Caesar',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1599,
      :first_published => 'First Folio (1623)',
      :length          => 19_703
    },
    {
      :title           => 'As You Like It',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1599..1600,
      :first_published => 'First Folio (1623)',
      :length          => 21_690
    },
    {
      :title           => 'Hamlet',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1599..1601,
      :first_published => '... in quarto (1603)',
      :length          => 30_557
    },
    {
      :title           => 'Twelfth Night',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1601,
      :first_published => 'First Folio (1623)',
      :length          => 19_837
    },
    {
      :title           => 'Troilus and Cressida',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :problem_play],
      :years_composed  => 1602,
      :first_published => '... in quarto (1609)',
      :length          => 26_089
    },
    {
      :title           => 'Measure for Measure',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :problem_play],
      :years_composed  => 1603..1604,
      :first_published => 'First Folio (1623)',
      :length          => 21_780
    },
    {
      :title           => 'Othello',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1603..1604,
      :first_published => '... in quarto (1622)',
      :length          => 26_450
    },
    {
      :title           => 'King Lear',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1605..1606,
      :first_published => '... in quarto (1608)',
      :length          => 26_145
    },
    {
      :title           => 'Timon of Athens',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1605..1606,
      :first_published => 'First Folio (1623)',
      :length          => 18_216
    },
    {
      :title           => 'Macbeth',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1606,
      :first_published => 'First Folio (1623)',
      :length          => 17_121
    },
    {
      :title           => 'Antony and Cleopatra',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1606,
      :first_published => 'First Folio (1623)',
      :length          => 24_905
    },
    {
      :title           => 'All\'s Well That Ends Well',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :problem_play],
      :years_composed  => 1606..1607,
      :first_published => 'First Folio (1623)',
      :length          => 23_009
    },
    {
      :title           => 'Pericles, Prince of Tyre',
      :authorship      => 'Collaboration with George Wilkins',
      :type            => :play,
      :genres          => [:comedy, :romance],
      :years_composed  => 1607,
      :first_published => '... in quarto (1609)',
      :length          => 18_529
    },
    {
      :title           => 'Coriolanus',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:tragedy],
      :years_composed  => 1608,
      :first_published => 'First Folio (1623)',
      :length          => 27_589
    },
    {
      :title           => 'The Winter\'s Tale',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :romance],
      :years_composed  => 1609..1610,
      :first_published => 'First Folio (1623)',
      :length          => 24_914
    },
    {
      :title           => 'Cymbeline',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :tragedy, :romance],
      :years_composed  => 1610..1611,
      :first_published => 'First Folio (1623)',
      :length          => 27_565
    },
    {
      :title           => 'The Tempest',
      :authorship      => 'Complete',
      :type            => :play,
      :genres          => [:comedy, :romance],
      :years_composed  => 1610..1611,
      :first_published => 'First Folio (1623)',
      :length          => 16_633
    },
    {
      :title           => 'Cardenio',
      :authorship      => 'Collaboration with John Fletcher (likely)',
      :type            => :play,
      :genres          => [:comedy],
      :years_composed  => 1612..1613,
      :first_published => '... in adaptation by Lewis Theobald (1727)',
      :length          => nil,
      :lost => true
    },
    {
      :title           => 'Henry VIII',
      :authorship      => 'Collaboration with John Fletcher',
      :type            => :play,
      :genres          => [:history],
      :years_composed  => 1613,
      :first_published => 'First Folio (1623)',
      :length          => 24_629
    },
    {
      :title           => 'The Two Noble Kinsmen',
      :authorship      => 'Collaboration with John Fletcher',
      :type            => :play,
      :genres          => [:comedy, :romance],
      :years_composed  => 1613,
      :first_published => '... in quarto (1634)',
      :length          => nil
    },
    {
      :title           => 'The Sonnets',
      :authorship      => 'Complete',
      :type            => :poem,
      :years_composed  => 1592..1603,
      :first_published => '... in quarto (1609)'
    },
    {
      :title           => 'Venus and Adonis',
      :authorship      => 'Complete',
      :type            => :poem,
      :years_composed  => 1592..1593,
      :first_published => '... in quarto (1593)'
    },
    {
      :title           => 'The Rape of Lucrece',
      :authorship      => 'Complete',
      :type            => :poem,
      :years_composed  => 1594,
      :first_published => '... in quarto (1594)'
    },
    {
      :title           => 'The Phoenix and the Turtle',
      :authorship      => 'Complete',
      :type            => :poem,
      :years_composed  => 1601,
      :first_published => 'As a supplement to Robert Chester\'s Loves Martyr, in quarto (1601)'
    },
    {
      :title           => 'The Passionate Pilgrim',
      :authorship      => 'Inclusion (disputed/unclear)',
      :type            => :poem,
      :years_composed  => 1598..1599,
      :first_published => 'Anthology in quarto (1599)'
    },
    {
      :title           => 'A Lover\'s Complaint',
      :authorship      => 'Complete (disputed/unclear)',
      :type            => :poem,
      :years_composed  => 1609,
      :first_published => 'As an appendix to the sonnets, in quarto (1609)'
    }
  ]
end
