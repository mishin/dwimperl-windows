@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
@set ErrorLevel=%ErrorLevel%
goto endofperl
:WinNT
perl -x -S %0 %*
@set ErrorLevel=%ErrorLevel%
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
goto endofperl
@rem ';
#!perl
#line 16
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => undef,
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => ';5:A0=4@0',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}\x{430}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'general' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '>@>B:>20',
                                  '_Value' => "\x{41a}\x{43e}\x{440}\x{43e}\x{442}\x{43a}\x{43e}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I37',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           '_Value' => 'I37',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Code' => undef,
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'mid_name' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I40',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I40',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '\'C<0:>20',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => "\x{427}\x{443}\x{43c}\x{430}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => undef,
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '5;035O  20=>2=0',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{41f}\x{435}\x{43b}\x{430}\x{433}\x{435}\x{44f} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I34',
                                  'FormatNo' => 15,
                                  '_Value' => 'I34',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'FormatNo' => 15,
                           '_Value' => 'I30',
                           '_Kind' => 'PackedIdx',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Val' => 'I30'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '094KH520',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41d}\x{430}\x{439}\x{434}\x{44b}\x{448}\x{435}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{43d}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   'Val' => '==0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I35',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Val' => 'I35'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '0A8;L52=0',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'father_id'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'father_id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '1',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'father_id'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'last_name' => bless( {
                                  'Val' => '$;>@5=A:0O',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'FormatNo' => 15,
                                  '_Value' => "\x{424}\x{43b}\x{43e}\x{440}\x{435}\x{43d}\x{441}\x{43a}\x{430}\x{44f}",
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I29',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I29',
                           'FormatNo' => 15,
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '==0',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   '_Value' => "\x{410}\x{43d}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'general' => bless( {
                                'Code' => 'ucs2',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'last_name'}{'Format'},
                                '_Kind' => 'PackedIdx',
                                '_Value' => "\x{443}\x{440}\x{43e}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{413}\x{438}\x{430}\x{446}\x{438}\x{43d}\x{442}\x{43e}\x{432}\x{430}",
                                'FormatNo' => 15,
                                'Val' => 'C@>45==0O  80F8=B>20'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      '_Value' => '18/03/1973',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 68,
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'}
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Val' => '18/03/1973'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '8E09;>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '13/2/1889',
                                      'FormatNo' => 70,
                                      '_Value' => '13/2/1889',
                                      '_Kind' => 'PackedIdx',
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'mid_name' => bless( {
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 'Val' => ';5:A552=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef,
          'suffix' => undef,
          'cemetery' => undef,
          'id' => bless( {
                           'Val' => 'I11',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I11',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I4',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Value' => 'I4',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=0',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{415}\x{43b}\x{435}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Val' => ';5=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I6'
                                }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'is_living' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'mid_name' => bless( {
                                 'Val' => ';5:A5528G',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => 'I6',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I6'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => '8E08;'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'is_living'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I4',
                                  'FormatNo' => 15,
                                  'Val' => 'I4'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           '_Value' => 'I12',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           'Val' => 'I12'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Val' => ';5:A59'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I15',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I15',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I17',
                                  'FormatNo' => 15,
                                  '_Value' => 'I17',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I4',
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I4'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'date_of_birth' => bless( {
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'first_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '18/6/1939',
                                      'FormatNo' => 70,
                                      'Val' => '18/6/1939'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'first_name'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'first_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '8E09;>28G',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'id' => bless( {
                           'Val' => 'I41',
                           '_Value' => 'I41',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' )
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{422}\x{43e}\x{440}\x{431}\x{438}\x{43d}\x{441}\x{43a}\x{430}\x{44f}",
                                  '_Kind' => 'PackedIdx',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Val' => '">@18=A:0O'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'general' => undef,
          'mother_id' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{438}\x{439}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => '0A8;89'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mid_name' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Format' => $VAR1->{'id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I27',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => 'I27',
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I17',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I17',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I52',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I52',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '8E08;',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '14/1/1966',
                                      '_Value' => '14/1/1966',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70,
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' )
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      '_Value' => '16/9/1906',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx',
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => $VAR1->{'date_of_death'}{'Format'},
                                      'Val' => '16/9/1906'
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{41c}\x{430}\x{440}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '0@8O'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Val' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I6',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Val' => 'I4',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I4',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I13',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I13',
                           'FormatNo' => 15,
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'first_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => ';5:A552=0',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I34',
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I34',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '094KH520',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41d}\x{430}\x{439}\x{434}\x{44b}\x{448}\x{435}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'first_name' => bless( {
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'FormatNo' => 15,
                                   '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '0A8;89'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Format' => $VAR1->{'id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef,
          'nickname' => undef,
          'date_of_birth' => undef
        };
$VAR1 = {
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I71',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => 'I71',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '20=',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'mother_id'}{'Format'},
                                   '_Value' => "\x{418}\x{432}\x{430}\x{43d}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Val' => 'I66',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I66',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mother_id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mother_id'}{'Format'},
                           'Code' => undef,
                           'FormatNo' => 15,
                           '_Value' => 'I27',
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I27'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'mother_id'}{'Format'},
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'mother_id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef
        };
$VAR1 = {
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' )
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 '_Value' => "\x{41f}\x{435}\x{442}\x{440}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'gender'}{'Format'},
                                 'Code' => 'ucs2',
                                 'Val' => '5B@>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Format' => bless( {
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'FmtIdx' => 169,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'Lock' => 1,
                                                           'Font' => $VAR1->{'gender'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'ReadDir' => 0,
                                                           'Wrap' => 0,
                                                           'Merge' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'FormatNo' => 69,
                                      '_Value' => '06/02/1939',
                                      '_Kind' => 'PackedIdx',
                                      'Val' => '06/02/1939'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I57',
                                  'FormatNo' => 15,
                                  'Val' => 'I57'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           '_Value' => 'I19',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I19'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '0@;0H:8=',
                                  '_Value' => "\x{412}\x{430}\x{440}\x{43b}\x{430}\x{448}\x{43a}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{412}\x{430}\x{43b}\x{435}\x{440}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Val' => '0;5@89'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I56',
                                  '_Value' => 'I56',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'id' => bless( {
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I6',
                           'FormatNo' => 15,
                           'Val' => 'I6'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I21',
                                  '_Value' => 'I21',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Val' => '8@0',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   '_Value' => "\x{41a}\x{438}\x{440}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I23',
                                  'FormatNo' => 15,
                                  '_Value' => 'I23',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '8@8;;>2=0',
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{41a}\x{438}\x{440}\x{438}\x{43b}\x{43b}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'id'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => bless( {
                                 'FormatNo' => 63,
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'FmtIdx' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'JustLast' => 0,
                                                      'AlignH' => 0,
                                                      'Rotate' => 0,
                                                      'AlignV' => '2',
                                                      'Font' => bless( {
                                                                         'Attr' => 4,
                                                                         'Color' => 12,
                                                                         'Italic' => 0,
                                                                         'UnderlineStyle' => 1,
                                                                         'Name' => 'Arial',
                                                                         'Strikeout' => 0,
                                                                         'Super' => 0,
                                                                         'Bold' => 0,
                                                                         'Underline' => 1,
                                                                         'Height' => '10'
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0,
                                                      'Lock' => 1,
                                                      'Merge' => 0,
                                                      'ReadDir' => 0,
                                                      'Wrap' => 0,
                                                      'FontNo' => 5,
                                                      'Indent' => 0,
                                                      'Style' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ]
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => undef,
                                 '_Value' => 'http://www.geni.com/photo/view/?photo_id=6000000001951156276',
                                 '_Kind' => 'PackedIdx',
                                 'Hyperlink' => [
                                                  undef,
                                                  'http://www.geni.com/photo/view/?photo_id=6000000001951156276',
                                                  undef,
                                                  14,
                                                  14,
                                                  11,
                                                  11
                                                ],
                                 'Val' => 'http://www.geni.com/photo/view/?photo_id=6000000001951156276'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '29/12/1941',
                                      'FormatNo' => 70,
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Val' => '29/12/1941'
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{412}\x{430}\x{43b}\x{435}\x{440}\x{44c}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '0;5@L528G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I6'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '=4@59',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{410}\x{43d}\x{434}\x{440}\x{435}\x{439}",
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I19',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I19'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I20',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I20',
                           'FormatNo' => 15,
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => "\x{412}\x{430}\x{440}\x{43b}\x{430}\x{448}\x{43a}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '0@;0H:8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => [
                      'Spreadsheet::ParseExcel::Cell=HASH(0x2b6aa84)'
                    ],
          'father_id' => bless( {
                                  'Val' => 'I4',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Value' => 'I4',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I0',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Val' => 'I0'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I6',
                                  'FormatNo' => 15,
                                  '_Value' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41d}\x{438}\x{43a}\x{43e}\x{43b}\x{430}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Val' => '8:>;09'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => [
                         'Spreadsheet::ParseExcel::Cell=HASH(0x2b6998c)'
                       ],
          'email' => bless( {
                              'FormatNo' => 64,
                              'Type' => 'Text',
                              'Format' => bless( {
                                                   'FmtIdx' => 0,
                                                   'BdrStyle' => [
                                                                   0,
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                   'BdrDiag' => [
                                                                  0,
                                                                  0,
                                                                  0
                                                                ],
                                                   'Key123' => 0,
                                                   'Hidden' => 0,
                                                   'AlignH' => 0,
                                                   'JustLast' => 0,
                                                   'AlignV' => '2',
                                                   'Rotate' => 0,
                                                   'Font' => bless( {
                                                                      'Height' => '10',
                                                                      'Underline' => 1,
                                                                      'Bold' => 0,
                                                                      'Super' => 0,
                                                                      'Strikeout' => 0,
                                                                      'Name' => 'Arial',
                                                                      'Italic' => 0,
                                                                      'UnderlineStyle' => 1,
                                                                      'Color' => 12,
                                                                      'Attr' => 4
                                                                    }, 'Spreadsheet::ParseExcel::Font' ),
                                                   'Fill' => [
                                                               0,
                                                               64,
                                                               65
                                                             ],
                                                   'Shrink' => 0,
                                                   'Lock' => 1,
                                                   'ReadDir' => 0,
                                                   'Wrap' => 0,
                                                   'Merge' => 0,
                                                   'FontNo' => 13,
                                                   'Indent' => 0,
                                                   'Style' => 0,
                                                   'BdrColor' => [
                                                                   0,
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ]
                                                 }, 'Spreadsheet::ParseExcel::Format' ),
                              'Code' => undef,
                              '_Value' => 'mi@ya.ru',
                              '_Kind' => 'PackedIdx',
                              'Hyperlink' => [
                                               'mi@ya.ru',
                                               'mailto:mi@ya.ru',
                                               undef,
                                               16,
                                               16,
                                               10,
                                               10
                                             ],
                              'Val' => 'mi@ya.ru'
                            }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => bless( {
                                       'Val' => '"Russia" "Moscow"',
                                       'Type' => 'Text',
                                       'Format' => $VAR1->{'last_name'}{'Format'},
                                       'Code' => undef,
                                       '_Value' => '"Russia" "Moscow"',
                                       '_Kind' => 'PackedIdx',
                                       'FormatNo' => 15
                                     }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => bless( {
                                 'Type' => 'Text',
                                 'Code' => undef,
                                 'Format' => bless( {
                                                      'FmtIdx' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'JustLast' => 0,
                                                      'AlignH' => 0,
                                                      'Rotate' => 0,
                                                      'AlignV' => '2',
                                                      'Font' => bless( {
                                                                         'Attr' => 4,
                                                                         'Color' => 12,
                                                                         'Italic' => 0,
                                                                         'UnderlineStyle' => 1,
                                                                         'Name' => 'Arial',
                                                                         'Strikeout' => 0,
                                                                         'Super' => 0,
                                                                         'Bold' => 0,
                                                                         'Underline' => 1,
                                                                         'Height' => '10'
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0,
                                                      'Lock' => 1,
                                                      'Merge' => 0,
                                                      'ReadDir' => 0,
                                                      'Wrap' => 0,
                                                      'FontNo' => 5,
                                                      'Indent' => 0,
                                                      'Style' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ]
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'FormatNo' => 63,
                                 'Val' => 'http://www.geni.com/photo/view/?photo_id=6000000000910785672',
                                 'Hyperlink' => [
                                                  undef,
                                                  'http://www.geni.com/photo/view/?photo_id=6000000000910785672',
                                                  undef,
                                                  16,
                                                  16,
                                                  11,
                                                  11
                                                ],
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => 'http://www.geni.com/photo/view/?photo_id=6000000000910785672'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'mid_name' => bless( {
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Val' => ';5:A5528G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '7/2/1976',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '7/2/1976',
                                      'FormatNo' => 70
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I26',
                                  '_Value' => 'I26',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '848O',
                                   '_Value' => "\x{41b}\x{438}\x{434}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mother_id'}{'Format'},
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'father_id' => bless( {
                                  'Val' => 'I25',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I25',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I15',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mother_id'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I15',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Code' => 'ucs2',
                                  'Val' => '%><O:>20'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '5/4/1906',
                                      'FormatNo' => 70,
                                      '_Value' => '5/4/1906',
                                      '_Kind' => 'PackedIdx',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'mother_id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Text',
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'mother_id'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => bless( {
                                      'Val' => '5/4/1970',
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => $VAR1->{'date_of_birth'}{'Format'},
                                      '_Value' => '5/4/1970',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Format' => $VAR1->{'mother_id'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Val' => '8E09;>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'last_name' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41b}\x{435}\x{432}\x{438}\x{446}\x{43a}\x{430}\x{44f}",
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '528F:0O'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I4',
                                  'FormatNo' => 15,
                                  '_Value' => 'I4',
                                  '_Kind' => 'PackedIdx',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'FormatNo' => 15,
                           '_Value' => 'I9',
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Val' => 'I9'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I6',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '848O',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{41b}\x{438}\x{434}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Code' => 'ucs2',
                                 'Val' => ';5:A552=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      '_Value' => '5/3/1970',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70,
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      'Val' => '5/3/1970'
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Type' => 'Numeric',
                               'Code' => undef,
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'mid_name' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '23/3/1979',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'gender'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '23/3/1979',
                                      'FormatNo' => 70
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '5B5;:8=0',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => 'ucs2',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}\x{430}",
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I3',
                           '_Value' => 'I3',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'gender'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'mother_id' => undef,
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '@8=0  .@52=0',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   '_Value' => "\x{418}\x{440}\x{438}\x{43d}\x{430} \x{42e}\x{440}\x{435}\x{432}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{41a}\x{438}\x{440}\x{438}\x{43b}\x{43b}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Val' => '8@8;;'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I29',
                                  '_Value' => 'I29',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I28',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I28'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I21',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I21',
                           'FormatNo' => 15,
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '$;>@5=A:89',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{424}\x{43b}\x{43e}\x{440}\x{435}\x{43d}\x{441}\x{43a}\x{438}\x{439}",
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'FormatNo' => 70,
                                      '_Value' => '27/12/1915',
                                      '_Kind' => 'PackedIdx',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'first_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Val' => '27/12/1915'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '9/4/1982',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => $VAR1->{'date_of_birth'}{'Format'},
                                      'FormatNo' => 70,
                                      '_Value' => '9/4/1982',
                                      '_Kind' => 'PackedIdx'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '02;>28G',
                                 '_Value' => "\x{41f}\x{430}\x{432}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'first_name'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'father_id' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => 'I4',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I4'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I14',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I14',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I6',
                                  '_Value' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '==0',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{410}\x{43d}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'father_id'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => ';5:A552=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'father_id'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'nickname' => undef,
          'date_of_birth' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'is_living' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => '@83>@L52=0',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{413}\x{440}\x{438}\x{433}\x{43e}\x{440}\x{44c}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{43e}\x{439} \x{41d}\x{43e}\x{432}\x{43e}\x{441}\x{435}\x{43b}\x{43e}\x{432}\x{43e}\x{439}",
                                'FormatNo' => 66,
                                '_Kind' => 'PackedIdx',
                                'Format' => bless( {
                                                     'Shrink' => 0,
                                                     'Fill' => [
                                                                 0,
                                                                 64,
                                                                 65
                                                               ],
                                                     'Font' => bless( {
                                                                        'Attr' => 0,
                                                                        'UnderlineStyle' => 0,
                                                                        'Italic' => 0,
                                                                        'Color' => 8,
                                                                        'Strikeout' => 0,
                                                                        'Name' => 'Times New Roman',
                                                                        'Height' => '10',
                                                                        'Underline' => 0,
                                                                        'Bold' => 0,
                                                                        'Super' => 0
                                                                      }, 'Spreadsheet::ParseExcel::Font' ),
                                                     'Lock' => 1,
                                                     'ReadDir' => 0,
                                                     'Wrap' => 0,
                                                     'Merge' => 0,
                                                     'BdrColor' => [
                                                                     0,
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                     'Style' => 0,
                                                     'FontNo' => 26,
                                                     'Indent' => 0,
                                                     'FmtIdx' => 0,
                                                     'BdrDiag' => [
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                     'BdrStyle' => [
                                                                     0,
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                     'Hidden' => 0,
                                                     'Key123' => 0,
                                                     'AlignV' => '2',
                                                     'Rotate' => 0,
                                                     'AlignH' => 0,
                                                     'JustLast' => 0
                                                   }, 'Spreadsheet::ParseExcel::Format' ),
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                'Val' => 'C@>645==>9  >2>A5;>2>9'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'first_name' => bless( {
                                   'Val' => '==0',
                                   '_Value' => "\x{410}\x{43d}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'father_id' => undef,
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I26',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I26',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '%><O:>20'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'is_living' => bless( {
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => undef,
          'general' => undef,
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   '_Value' => "\x{421}\x{430}\x{43c}\x{443}\x{438}\x{43b} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Val' => '!0<C8;  20=>28G'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I32',
                           'FormatNo' => 15,
                           '_Value' => 'I32',
                           '_Kind' => 'PackedIdx',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '592A0@',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => "\x{41a}\x{435}\x{439}\x{432}\x{441}\x{430}\x{440}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => '8E09;>28G',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I53',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => 'I53',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '8E08;',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I54',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I54'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           '_Value' => 'I25',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Val' => 'I25'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '%><O:>2',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}",
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I32',
                                  'FormatNo' => 15,
                                  '_Value' => 'I32',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'is_living'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I39',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I39',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '592A0@',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => "\x{41a}\x{435}\x{439}\x{432}\x{441}\x{430}\x{440}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'first_name' => bless( {
                                   'Val' => '5>=84',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41b}\x{435}\x{43e}\x{43d}\x{438}\x{434}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I37',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I37'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef
        };
$VAR1 = {
          'mid_name' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'suffix' => undef,
          'cemetery' => undef,
          'father_id' => bless( {
                                  'Val' => 'I41',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I41',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I35',
                           '_Value' => 'I35',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '">@18=A:0O',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{422}\x{43e}\x{440}\x{431}\x{438}\x{43d}\x{441}\x{43a}\x{430}\x{44f}",
                                  '_Kind' => 'PackedIdx',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I40',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I40',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => ';5=0  0A8;L52=0',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{415}\x{43b}\x{435}\x{43d}\x{430} \x{412}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{435}\x{432}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'first_name' => bless( {
                                   '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Val' => '>@8A'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I37',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I37'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I32',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I32',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           '_Value' => 'I38',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Val' => 'I38'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41a}\x{435}\x{439}\x{432}\x{441}\x{430}\x{440}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => 'ucs2',
                                  'Val' => '592A0@'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef
        };
$VAR1 = {
          'jobs' => undef,
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => 'I32',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => 'I32'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I23',
                           '_Value' => 'I23',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '$;>@5=A:0O',
                                  '_Value' => "\x{424}\x{43b}\x{43e}\x{440}\x{435}\x{43d}\x{441}\x{43a}\x{430}\x{44f}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   '_Value' => "\x{417}\x{438}\x{43d}\x{430}\x{438}\x{434}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Val' => '8=0840'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I30',
                                  'FormatNo' => 15,
                                  '_Value' => 'I30',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'father_id'}{'Format'},
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'father_id'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{421}\x{430}\x{43c}\x{443}\x{438}\x{43b}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 'Val' => '!0<C8;>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'father_id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'FormatNo' => 70,
                                      '_Value' => '24/10/1916',
                                      '_Kind' => 'PackedIdx',
                                      'Val' => '24/10/1916'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef
        };
$VAR1 = {
          'mother_id' => undef,
          'general' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{41f}\x{430}\x{432}\x{435}\x{43b}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Code' => 'ucs2',
                                   'Val' => '025;'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'last_name' => bless( {
                                  '_Value' => "\x{424}\x{43b}\x{43e}\x{440}\x{435}\x{43d}\x{441}\x{43a}\x{438}\x{439}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '$;>@5=A:89'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I28',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I28',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'first_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Code' => 'ucs2',
                                 'Val' => ';5:A0=4@>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Val' => 'I4',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I4',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I10',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Val' => 'I10'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{41d}\x{438}\x{43a}\x{438}\x{442}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '8:8B0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I6',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I6'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mid_name' => bless( {
                                 'Val' => ';5:A5528G',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'last_name'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'gender' => bless( {
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef
        };
$VAR1 = {
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{418}\x{440}\x{438}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Val' => '@8=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Val' => 'I85',
                                  'FormatNo' => 15,
                                  '_Value' => 'I85',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Value' => "\x{41b}\x{435}\x{431}\x{435}\x{434}\x{435}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '5154520'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I84',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Value' => 'I84',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Format' => bless( {
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Super' => 0,
                                                                   'Underline' => 0,
                                                                   'Height' => '10',
                                                                   'Bold' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Strikeout' => 0,
                                                                   'Color' => 32767,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Attr' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Shrink' => 0,
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Indent' => 0,
                                                'FontNo' => 7,
                                                'Style' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'ReadDir' => 0,
                                                'Wrap' => 0,
                                                'Merge' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I50',
                           'FormatNo' => 65,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I50'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '23/03/1979',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'ReadDir' => 0,
                                                           'Wrap' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'FontNo' => 7,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'Font' => $VAR1->{'id'}{'Format'}{'Font'},
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Lock' => 1,
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '23/03/1979',
                                      'FormatNo' => 67
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '.@L52=0',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 '_Value' => "\x{42e}\x{440}\x{44c}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'mid_name' => bless( {
                                 'Val' => '8:>;0528G',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 '_Value' => "\x{41d}\x{438}\x{43a}\x{43e}\x{43b}\x{430}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Val' => '06/06/2014',
                                      'FormatNo' => 68,
                                      '_Value' => '06/06/2014',
                                      '_Kind' => 'PackedIdx',
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'mid_name'}{'Format'}{'Font'}
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Text',
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Val' => 'I0',
                                  '_Value' => 'I0',
                                  'FormatNo' => 65,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Super' => 0,
                                                                          'Underline' => 0,
                                                                          'Height' => '10',
                                                                          'Bold' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Strikeout' => 0,
                                                                          'Color' => 32767,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Attr' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Shrink' => 0,
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Indent' => 0,
                                                       'FontNo' => 7,
                                                       'Style' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'ReadDir' => 0,
                                                       'Wrap' => 0,
                                                       'Merge' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I51',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I51',
                           'FormatNo' => 65
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{410}\x{440}\x{442}\x{451}\x{43c}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Val' => '@BQ<'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I50',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 65,
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Val' => 'I50'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => bless( {
                                 'Val' => ';5:A552=0',
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef,
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'general' => bless( {
                                'Format' => $VAR1->{'mid_name'}{'Format'},
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}\x{430}",
                                'FormatNo' => 15,
                                '_Kind' => 'PackedIdx',
                                'Val' => 'C@>645==0O  %><O:>20'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I78',
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I78'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => ';5=0',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{415}\x{43b}\x{435}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I77',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Value' => 'I77',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I52',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I52',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I53',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'FormatNo' => 15,
                           '_Value' => 'I53',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '%><O:>20'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{41c}\x{430}\x{442}\x{440}\x{43e}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'Code' => 'ucs2',
                                   'Val' => '0B@>=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'id'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '>A<8=8G=0',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'id'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{41a}\x{43e}\x{441}\x{43c}\x{438}\x{43d}\x{438}\x{447}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'mid_name' => bless( {
                                 'Val' => '20=>28G',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef,
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I54',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I54',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Val' => '%><O:>2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '8E08;',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'mid_name' => bless( {
                                 'FormatNo' => 15,
                                 '_Value' => "\x{414}\x{43c}\x{438}\x{442}\x{440}\x{438}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Val' => '<8B@852=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '1',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'mother_id' => undef,
          'general' => bless( {
                                'Val' => '#@>645==0O  C75520',
                                '_Value' => "\x{423}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{413}\x{443}\x{437}\x{435}\x{435}\x{432}\x{430}",
                                'FormatNo' => 15,
                                '_Kind' => 'PackedIdx',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'mid_name'}{'Format'},
                                'Code' => 'ucs2'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => ';5:A0=4@0',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}\x{430}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{412}\x{430}\x{440}\x{43b}\x{430}\x{448}\x{43a}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '0@;0H:8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           '_Value' => 'I56',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Val' => 'I56'
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I57',
                           'Type' => 'Text',
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Code' => undef,
                           '_Value' => 'I57',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '0@;0H:8=',
                                  '_Value' => "\x{412}\x{430}\x{440}\x{43b}\x{430}\x{448}\x{43a}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{41f}\x{435}\x{442}\x{440}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => '5B@'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => undef,
          'mid_name' => bless( {
                                 'Format' => $VAR1->{'id'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43d}\x{434}\x{440}\x{435}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '=4@5528G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'id'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'gender' => bless( {
                               'Val' => '0',
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Type' => 'Numeric',
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'gender'}{'Format'},
                                 'Code' => 'ucs2',
                                 'Val' => '8E09;>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'gender'}{'Format'}{'Font'}
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Value' => '05/04/1935',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 68,
                                      'Val' => '05/04/1935'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I17',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I17'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I58',
                           'FormatNo' => 15,
                           '_Value' => 'I58',
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'gender'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I15',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I15',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '20=',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{418}\x{432}\x{430}\x{43d}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'mid_name' => bless( {
                                 'FormatNo' => 15,
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 'Val' => '8E09;>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'mid_name'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'date_of_birth' => bless( {
                                      'FormatNo' => 68,
                                      '_Value' => '24/07/1947',
                                      '_Kind' => 'PackedIdx',
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'mid_name'}{'Format'}{'Font'}
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Val' => '24/07/1947'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Val' => 'I17',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I17',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           '_Value' => 'I59',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I59'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I15',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I15'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'first_name' => bless( {
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '8E08;'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef
        };
$VAR1 = {
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => bless( {
                                                                              'Attr' => 0,
                                                                              'UnderlineStyle' => 0,
                                                                              'Italic' => 0,
                                                                              'Color' => 32767,
                                                                              'Strikeout' => 0,
                                                                              'Name' => 'Arial',
                                                                              'Height' => '10',
                                                                              'Underline' => 0,
                                                                              'Bold' => 0,
                                                                              'Super' => 0
                                                                            }, 'Spreadsheet::ParseExcel::Font' )
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Value' => '16/09/1908',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 68,
                                      'Val' => '16/09/1908'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => bless( {
                                      'Val' => '\'14/01/1970',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Key123' => 0,
                                                           'Hidden' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'FmtIdx' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Lock' => 1,
                                                           'Font' => $VAR1->{'date_of_birth'}{'Format'}{'Font'},
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Value' => '\'14/01/1970',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 15
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'date_of_death'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'date_of_death'}{'Format'},
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'date_of_death'}{'Format'},
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}",
                                   'FormatNo' => 65,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Super' => 0,
                                                                           'Underline' => 0,
                                                                           'Height' => '10',
                                                                           'Bold' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Strikeout' => 0,
                                                                           'Color' => 32767,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Attr' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Shrink' => 0,
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Indent' => 0,
                                                        'FontNo' => 7,
                                                        'Style' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'ReadDir' => 0,
                                                        'Wrap' => 0,
                                                        'Merge' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Code' => 'ucs2',
                                   'Val' => '>@8A'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Format' => $VAR1->{'date_of_death'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I52',
                                  'FormatNo' => 15,
                                  'Val' => 'I52'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'father_id' => bless( {
                                  'Val' => 'I27',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'date_of_death'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I27',
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'date_of_death'}{'Format'},
                           'Code' => undef,
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I60',
                           'FormatNo' => 15,
                           'Val' => 'I60'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'Format' => $VAR1->{'date_of_death'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'Rotate' => 0,
                                                           'AlignV' => '2',
                                                           'JustLast' => 0,
                                                           'AlignH' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 1,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'Style' => 0,
                                                           'Merge' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => bless( {
                                                                              'Attr' => 0,
                                                                              'UnderlineStyle' => 0,
                                                                              'Italic' => 0,
                                                                              'Color' => 32767,
                                                                              'Strikeout' => 0,
                                                                              'Name' => 'Arial',
                                                                              'Height' => '10',
                                                                              'Underline' => 0,
                                                                              'Bold' => 0,
                                                                              'Super' => 0
                                                                            }, 'Spreadsheet::ParseExcel::Font' )
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Value' => '16/09/1904',
                                      'FormatNo' => 68,
                                      '_Kind' => 'PackedIdx',
                                      'Val' => '16/09/1904'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => $VAR1->{'date_of_birth'}{'Format'}{'Font'},
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Type' => 'Numeric',
                               'Code' => undef,
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '\'14/01/1963',
                                      'Type' => 'Text',
                                      'Format' => $VAR1->{'gender'}{'Format'},
                                      'Code' => undef,
                                      '_Value' => '\'14/01/1963',
                                      'FormatNo' => 15,
                                      '_Kind' => 'PackedIdx'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '20=>28G',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'gender'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Val' => 'I52',
                                  '_Value' => 'I52',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'first_name' => bless( {
                                   'Val' => '8:>;09',
                                   'FormatNo' => 65,
                                   '_Value' => "\x{41d}\x{438}\x{43a}\x{43e}\x{43b}\x{430}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => bless( {
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Super' => 0,
                                                                           'Underline' => 0,
                                                                           'Height' => '10',
                                                                           'Bold' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Strikeout' => 0,
                                                                           'Color' => 32767,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Attr' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Shrink' => 0,
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Indent' => 0,
                                                        'FontNo' => 7,
                                                        'Style' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'ReadDir' => 0,
                                                        'Wrap' => 0,
                                                        'Merge' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'gender'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I27',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I27'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I61',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Val' => 'I61'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'general' => undef,
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '=4@59',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Super' => 0,
                                                                           'Underline' => 0,
                                                                           'Height' => '10',
                                                                           'Bold' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Strikeout' => 0,
                                                                           'Color' => 32767,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Attr' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Shrink' => 0,
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Indent' => 0,
                                                        'FontNo' => 7,
                                                        'Style' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'ReadDir' => 0,
                                                        'Wrap' => 0,
                                                        'Merge' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{410}\x{43d}\x{434}\x{440}\x{435}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 65
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I60',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  'Val' => 'I60'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I62',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I62',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'father_id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => '>@8A>28G',
                                 '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 65,
                                 '_Kind' => 'PackedIdx',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' )
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '>@8A>28G',
                                 '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 65,
                                 '_Kind' => 'PackedIdx',
                                 'Format' => bless( {
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Super' => 0,
                                                                         'Underline' => 0,
                                                                         'Height' => '10',
                                                                         'Bold' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Strikeout' => 0,
                                                                         'Color' => 32767,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Attr' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Shrink' => 0,
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Indent' => 0,
                                                      'FontNo' => 7,
                                                      'Style' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'ReadDir' => 0,
                                                      'Wrap' => 0,
                                                      'Merge' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '0B0;LO',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{41d}\x{430}\x{442}\x{430}\x{43b}\x{44c}\x{44f}",
                                   'FormatNo' => 65,
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'general' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I60',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  '_Value' => 'I60',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'gender'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I63',
                           'FormatNo' => 15,
                           'Val' => 'I63'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' )
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I60',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I60',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I64',
                           '_Value' => 'I64',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{415}\x{43b}\x{435}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 65,
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => bless( {
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Super' => 0,
                                                                           'Underline' => 0,
                                                                           'Height' => '10',
                                                                           'Bold' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Strikeout' => 0,
                                                                           'Color' => 32767,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Attr' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Shrink' => 0,
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Indent' => 0,
                                                        'FontNo' => 7,
                                                        'Style' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'ReadDir' => 0,
                                                        'Wrap' => 0,
                                                        'Merge' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Val' => ';5=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => undef,
          'general' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'is_living' => bless( {
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'FormatNo' => 65,
                                 '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Val' => '>@8A>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '>@8A>28G',
                                 'Format' => bless( {
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Super' => 0,
                                                                         'Underline' => 0,
                                                                         'Height' => '10',
                                                                         'Bold' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Strikeout' => 0,
                                                                         'Color' => 32767,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Attr' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Shrink' => 0,
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Indent' => 0,
                                                      'FontNo' => 7,
                                                      'Style' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'ReadDir' => 0,
                                                      'Wrap' => 0,
                                                      'Merge' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{411}\x{43e}\x{440}\x{438}\x{441}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 65
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '!5@359',
                                   '_Value' => "\x{421}\x{435}\x{440}\x{433}\x{435}\x{439}",
                                   'FormatNo' => 65,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'general' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => 'I60',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => 'I60'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I65',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I65',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => bless( {
                                      'FormatNo' => 15,
                                      '_Value' => '1917',
                                      '_Kind' => 'MulRK',
                                      'Format' => $VAR1->{'mid_name'}{'Format'},
                                      'Type' => 'Numeric',
                                      'Code' => undef,
                                      'Val' => '1917'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Val' => '1/1/1854',
                                      '_Value' => '1/1/1854',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70,
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'mid_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I68',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I68'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I66',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I66',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I69',
                                  'FormatNo' => 15,
                                  'Val' => 'I69'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{418}\x{432}\x{430}\x{43d}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '20='
                                 }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => bless( {
                                      'Val' => '1917',
                                      'Type' => 'Numeric',
                                      'Code' => undef,
                                      'Format' => $VAR1->{'is_living'}{'Format'},
                                      '_Value' => '1917',
                                      '_Kind' => 'MulRK',
                                      'FormatNo' => 15
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'is_living'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Value' => '1/1/1864',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70,
                                      'Val' => '1/1/1864'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I68',
                                  '_Kind' => 'PackedIdx',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Val' => 'I68'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I67',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I67',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => bless( {
                                'Val' => '     5 .;04H89  8E08;  20=>28G   1 8 6 43@ .  0  =8<  <>9  ?@0454  ?@85E0;  2  >A:2C  8  2AN  687=L  A  =8<  ?@>@01>B0; .    8E08;  20=>28G ,  :C?5F  ?5@2>9  38;L488 ,  =081>;55  1>30BK9  8  8725AB=K9  87  1@0BL52 .  K;  65=0B  =0  :8;8=5  C7L<8=8G=5 .  5B59  C  =8E  =5  1K;> .  #<5@  2   1 9 1 7 ,  2A5  ?5@540;  AB0@H5<C  1@0BC  20=C  20=>28GC .    B>B  C<5@  2  B><  65  3>4C ,  8;8  2   1 9 1 8 ,  2A5  ?5@540;  AK=C  20=C  20=>28GC  <;04H5<C .  0@AB25==0O  5ABL  2  20H5<  0@E825 .',
                                'Format' => $VAR1->{'is_living'}{'Format'},
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                '_Value' => "  5.\x{41c}\x{43b}\x{430}\x{434}\x{448}\x{438}\x{439} \x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447} 1864\x{433}\x{440}. \x{417}\x{430} \x{43d}\x{438}\x{43c} \x{43c}\x{43e}\x{439} \x{43f}\x{440}\x{430}\x{434}\x{435}\x{434} \x{43f}\x{440}\x{438}\x{435}\x{445}\x{430}\x{43b} \x{432} \x{41c}\x{43e}\x{441}\x{43a}\x{432}\x{443} \x{438} \x{432}\x{441}\x{44e} \x{436}\x{438}\x{437}\x{43d}\x{44c} \x{441} \x{43d}\x{438}\x{43c} \x{43f}\x{440}\x{43e}\x{440}\x{430}\x{431}\x{43e}\x{442}\x{430}\x{43b}.  \x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}, \x{43a}\x{443}\x{43f}\x{435}\x{446} \x{43f}\x{435}\x{440}\x{432}\x{43e}\x{439} \x{433}\x{438}\x{43b}\x{44c}\x{434}\x{438}\x{438}, \x{43d}\x{430}\x{438}\x{431}\x{43e}\x{43b}\x{435}\x{435} \x{431}\x{43e}\x{433}\x{430}\x{442}\x{44b}\x{439} \x{438} \x{438}\x{437}\x{432}\x{435}\x{441}\x{442}\x{43d}\x{44b}\x{439} \x{438}\x{437} \x{431}\x{440}\x{430}\x{442}\x{44c}\x{435}\x{432}. \x{411}\x{44b}\x{43b} \x{436}\x{435}\x{43d}\x{430}\x{442} \x{43d}\x{430} \x{410}\x{43a}\x{438}\x{43b}\x{438}\x{43d}\x{435} \x{41a}\x{443}\x{437}\x{44c}\x{43c}\x{438}\x{43d}\x{438}\x{447}\x{43d}\x{435}. \x{414}\x{435}\x{442}\x{435}\x{439} \x{443} \x{43d}\x{438}\x{445} \x{43d}\x{435} \x{431}\x{44b}\x{43b}\x{43e}. \x{423}\x{43c}\x{435}\x{440} \x{432} 1917, \x{432}\x{441}\x{435} \x{43f}\x{435}\x{440}\x{435}\x{434}\x{430}\x{43b} \x{441}\x{442}\x{430}\x{440}\x{448}\x{435}\x{43c}\x{443} \x{431}\x{440}\x{430}\x{442}\x{443} \x{418}\x{432}\x{430}\x{43d}\x{443} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}\x{443}. \x{410} \x{442}\x{43e}\x{442} \x{443}\x{43c}\x{435}\x{440} \x{432} \x{442}\x{43e}\x{43c} \x{436}\x{435} \x{433}\x{43e}\x{434}\x{443}, \x{438}\x{43b}\x{438} \x{432} 1918, \x{432}\x{441}\x{435} \x{43f}\x{435}\x{440}\x{435}\x{434}\x{430}\x{43b} \x{441}\x{44b}\x{43d}\x{443} \x{418}\x{432}\x{430}\x{43d}\x{443} \x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}\x{443} \x{43c}\x{43b}\x{430}\x{434}\x{448}\x{435}\x{43c}\x{443}. \x{414}\x{430}\x{440}\x{441}\x{442}\x{432}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{435}\x{441}\x{442}\x{44c} \x{432} \x{432}\x{430}\x{448}\x{435}\x{43c} \x{430}\x{440}\x{445}\x{438}\x{432}\x{435}.",
                                '_Kind' => 'PackedIdx',
                                'FormatNo' => 15
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Val' => 'I69',
                                  'FormatNo' => 15,
                                  '_Value' => 'I69',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '8E08;',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Value' => 'I75',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => 'I75'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I68',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           'FormatNo' => 15,
                           '_Value' => 'I68',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '20=',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   '_Value' => "\x{418}\x{432}\x{430}\x{43d}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Val' => ':0H8@A:>3>  <5I0=8=0 .  @0A8;L=O  C  =8E  B0<  1K;0  ?>  A;>20<  20H53>  >BF0 .  5=0  53>  ==0  0A8;L52=0 .   (848<>  >=0  1K;0  @>4=59  <>8E  ?@54:>2 ,  ?>E>60  ;8F><  =0  101:C  ?@04540 . )  E  D>B>  5ABL  2  20H5<  A5<59=><  0@E825 .',
                                'FormatNo' => 15,
                                '_Value' => "\x{43a}\x{430}\x{448}\x{438}\x{440}\x{441}\x{43a}\x{43e}\x{433}\x{43e} \x{43c}\x{435}\x{449}\x{430}\x{43d}\x{438}\x{43d}\x{430}. \x{41a}\x{440}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{43d}\x{44f} \x{443} \x{43d}\x{438}\x{445} \x{442}\x{430}\x{43c} \x{431}\x{44b}\x{43b}\x{430} \x{43f}\x{43e} \x{441}\x{43b}\x{43e}\x{432}\x{430}\x{43c} \x{432}\x{430}\x{448}\x{435}\x{433}\x{43e} \x{43e}\x{442}\x{446}\x{430}. \x{416}\x{435}\x{43d}\x{430} \x{435}\x{433}\x{43e} \x{410}\x{43d}\x{43d}\x{430} \x{412}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{435}\x{432}\x{43d}\x{430}. (\x{412}\x{438}\x{434}\x{438}\x{43c}\x{43e} \x{43e}\x{43d}\x{430} \x{431}\x{44b}\x{43b}\x{430} \x{440}\x{43e}\x{434}\x{43d}\x{435}\x{439} \x{43c}\x{43e}\x{438}\x{445} \x{43f}\x{440}\x{435}\x{434}\x{43a}\x{43e}\x{432}, \x{43f}\x{43e}\x{445}\x{43e}\x{436}\x{430} \x{43b}\x{438}\x{446}\x{43e}\x{43c} \x{43d}\x{430} \x{431}\x{430}\x{431}\x{43a}\x{443} \x{43f}\x{440}\x{430}\x{434}\x{435}\x{434}\x{430}.) \x{418}\x{445} \x{444}\x{43e}\x{442}\x{43e} \x{435}\x{441}\x{442}\x{44c} \x{432} \x{432}\x{430}\x{448}\x{435}\x{43c} \x{441}\x{435}\x{43c}\x{435}\x{439}\x{43d}\x{43e}\x{43c} \x{430}\x{440}\x{445}\x{438}\x{432}\x{435}.",
                                '_Kind' => 'PackedIdx',
                                'Code' => 'ucs2',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'father_id'}{'Format'}
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'mid_name' => bless( {
                                 'Val' => '<1@>A8<>28G',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43c}\x{431}\x{440}\x{43e}\x{441}\x{438}\x{43c}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'father_id'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'father_id'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Val' => '1/1/1834',
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'father_id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Value' => '1/1/1834',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I69',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I69',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => undef,
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{410}\x{43d}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Code' => 'ucs2',
                                   'Val' => '==0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{435}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '0A8;L52=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'mother_id' => bless( {
                                  'Val' => 'I69',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => 'I69',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'mother_id'}{'Format'},
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{41a}\x{43b}\x{430}\x{432}\x{434}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   'Val' => ';0248O'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'last_name' => bless( {
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I68',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I68'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I70',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mother_id'}{'Format'},
                           'Code' => undef,
                           'FormatNo' => 15,
                           '_Value' => 'I70',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      '_Value' => '1/1/1850',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx',
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'mother_id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Val' => '1/1/1850'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'mother_id'}{'Format'},
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 'Val' => '20=>2=0',
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 'Format' => $VAR1->{'mother_id'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'is_living' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => ';5:A552=0',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I71',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           '_Value' => 'I71',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{432}\x{434}\x{43e}\x{442}\x{44c}\x{44f}",
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '24>BLO'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Type' => 'Text',
                                'Format' => $VAR1->{'is_living'}{'Format'},
                                'Code' => 'ucs2',
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f}  \x{411}\x{443}\x{445}\x{430}\x{43d}\x{43e}\x{432}\x{430}",
                                'FormatNo' => 15,
                                '_Kind' => 'PackedIdx',
                                'Val' => 'C@>645==0O    CE0=>20'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => '8H8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           '_Value' => 'I72',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Code' => undef,
                           'Val' => 'I72'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I68',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I68'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{421}\x{435}\x{440}\x{433}\x{435}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => '!5@359'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I69',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I69',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mid_name' => bless( {
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '20=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{412}\x{438}\x{43a}\x{442}\x{43e}\x{440}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => '8:B>@'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  '_Value' => 'I69',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I69'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I68',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I68'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I73',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I73',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '1',
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => 'C7L<8=8G=0',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{41a}\x{443}\x{437}\x{44c}\x{43c}\x{438}\x{43d}\x{438}\x{447}\x{43d}\x{430}",
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I74',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           '_Value' => 'I74',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  'Val' => '8H8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => bless( {
                                '_Value' => "\x{436}\x{435}\x{43d}\x{430} I67 \x{41c}\x{438}\x{445}\x{430}\x{438}\x{43b}	\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}	\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                '_Kind' => 'PackedIdx',
                                'FormatNo' => 15,
                                'Type' => 'Text',
                                'Format' => $VAR1->{'is_living'}{'Format'},
                                'Code' => 'ucs2',
                                'Val' => '65=0   I 6 7  8E08; 	20=>28G 	8H8='
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{43a}\x{438}\x{43b}\x{438}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Code' => 'ucs2',
                                   'Val' => ':8;8=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'id' => bless( {
                           '_Value' => 'I75',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Val' => 'I75'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '8H8=',
                                  '_Value' => "\x{41c}\x{438}\x{448}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => undef,
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{410}\x{43c}\x{431}\x{440}\x{43e}\x{441}\x{438}\x{439}",
                                   'FormatNo' => 15,
                                   'Val' => '<1@>A89'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'is_living' => bless( {
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'id'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => undef,
          'date_of_birth' => bless( {
                                      '_Value' => '1/1/1804',
                                      '_Kind' => 'PackedIdx',
                                      'FormatNo' => 70,
                                      'Type' => 'Text',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'id'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Val' => '1/1/1804'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef
        };
$VAR1 = {
          'last_name' => bless( {
                                  'Val' => '%><O:>2',
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I77',
                           'FormatNo' => 15,
                           '_Value' => 'I77',
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'last_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'first_name' => bless( {
                                   'Val' => ';5:A59',
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{435}\x{439}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => undef,
          'general' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'gender' => bless( {
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '8E09;>28G',
                                 'Format' => $VAR1->{'last_name'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{41c}\x{438}\x{445}\x{430}\x{439}\x{43b}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Val' => '20=>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Val' => '=0AB0A8O',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{410}\x{43d}\x{430}\x{441}\x{442}\x{430}\x{441}\x{438}\x{44f}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I79',
                                  'FormatNo' => 15,
                                  '_Value' => 'I79',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '%><O:>20',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{425}\x{43e}\x{43c}\x{44f}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I78',
                           'FormatNo' => 15,
                           '_Value' => 'I78',
                           '_Kind' => 'PackedIdx',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => undef,
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'is_living' => undef,
          'work_places' => undef,
          'gender' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Val' => '0@5=:>20',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{417}\x{430}\x{440}\x{435}\x{43d}\x{43a}\x{43e}\x{432}\x{430}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => undef,
          'general' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '0@5=:>20',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{417}\x{430}\x{440}\x{435}\x{43d}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I79',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Code' => undef,
                           'FormatNo' => 15,
                           '_Value' => 'I79',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '5=8A>2=0',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 '_Value' => "\x{414}\x{435}\x{43d}\x{438}\x{441}\x{43e}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_birth' => bless( {
                                      'Val' => '37684',
                                      'Type' => 'Date',
                                      'Code' => undef,
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'is_living'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Value' => '2003-03-04',
                                      '_Kind' => 'RK',
                                      'FormatNo' => 71
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => 'I81',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I81'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I80',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Value' => 'I80',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  'Val' => '5154520',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  '_Value' => "\x{41b}\x{435}\x{431}\x{435}\x{434}\x{435}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '=0AB0A8O',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'FormatNo' => 15,
                                   '_Value' => "\x{410}\x{43d}\x{430}\x{441}\x{442}\x{430}\x{441}\x{438}\x{44f}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I50',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => 'I50',
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '29084',
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => bless( {
                                                                              'Attr' => 0,
                                                                              'UnderlineStyle' => 0,
                                                                              'Italic' => 0,
                                                                              'Color' => 32767,
                                                                              'Strikeout' => 0,
                                                                              'Name' => 'Arial',
                                                                              'Height' => '10',
                                                                              'Underline' => 0,
                                                                              'Bold' => 0,
                                                                              'Super' => 0
                                                                            }, 'Spreadsheet::ParseExcel::Font' ),
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Date',
                                      'Code' => undef,
                                      '_Value' => '1979-08-17',
                                      '_Kind' => 'RK',
                                      'FormatNo' => 71
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => $VAR1->{'date_of_birth'}{'Format'}{'Font'},
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 'Val' => ';5:A0=4@>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{414}\x{435}\x{43d}\x{438}\x{441}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Val' => '5=8A'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => undef,
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I82',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Val' => 'I82'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           '_Value' => 'I81',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I81'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '515452',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Value' => "\x{41b}\x{435}\x{431}\x{435}\x{434}\x{435}\x{432}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15,
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Type' => 'Numeric',
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Val' => ';5:A0=4@'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I83',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I83'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           '_Value' => 'I82',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Code' => undef,
                           'Val' => 'I82'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '515452',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41b}\x{435}\x{431}\x{435}\x{434}\x{435}\x{432}",
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '235=8O',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{415}\x{432}\x{433}\x{435}\x{43d}\x{438}\x{44f}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Val' => 'D0<8;88  5154520',
                                'Code' => 'ucs2',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'first_name'}{'Format'},
                                '_Value' => "\x{444}\x{430}\x{43c}\x{438}\x{43b}\x{438}\x{438} \x{41b}\x{435}\x{431}\x{435}\x{434}\x{435}\x{432}\x{430}",
                                '_Kind' => 'PackedIdx',
                                'FormatNo' => 15
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'schools' => undef,
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I83',
                           'FormatNo' => 15,
                           'Val' => 'I83'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => ';5=G8:>20',
                                  '_Value' => "\x{410}\x{43b}\x{435}\x{43d}\x{447}\x{438}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Type' => 'Date',
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'first_name'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      'FormatNo' => 71,
                                      '_Value' => '2013-03-26',
                                      '_Kind' => 'MulRK',
                                      'Val' => '41359'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef
        };
$VAR1 = {
          'date_of_birth' => bless( {
                                      '_Value' => '1954-01-16',
                                      '_Kind' => 'RK',
                                      'FormatNo' => 71,
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => bless( {
                                                                              'Attr' => 0,
                                                                              'UnderlineStyle' => 0,
                                                                              'Italic' => 0,
                                                                              'Color' => 32767,
                                                                              'Strikeout' => 0,
                                                                              'Name' => 'Arial',
                                                                              'Height' => '10',
                                                                              'Underline' => 0,
                                                                              'Bold' => 0,
                                                                              'Super' => 0
                                                                            }, 'Spreadsheet::ParseExcel::Font' ),
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Date',
                                      'Code' => undef,
                                      'Val' => '19740'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => $VAR1->{'date_of_birth'}{'Format'}{'Font'},
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' )
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => '5>@3852=0',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'Format' => $VAR1->{'gender'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Val' => 'C@>645==0O  C70',
                                'Format' => $VAR1->{'gender'}{'Format'},
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                'FormatNo' => 15,
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{411}\x{443}\x{437}\x{430}",
                                '_Kind' => 'PackedIdx'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Val' => 'I88',
                                  '_Value' => 'I88',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '"0BLO=0',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{422}\x{430}\x{442}\x{44c}\x{44f}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I87',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Val' => 'I87'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I84',
                           'FormatNo' => 15,
                           'Val' => 'I84'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '5B5;:8=0',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}\x{430}",
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '36647',
                                      '_Kind' => 'MulRK',
                                      '_Value' => '2000-05-01',
                                      'FormatNo' => 71,
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'gender'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Type' => 'Date',
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => '8:>;0528G',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'gender'}{'Format'},
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{41d}\x{438}\x{43a}\x{43e}\x{43b}\x{430}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I97',
                                  '_Value' => 'I97',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '.@89',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{42e}\x{440}\x{438}\x{439}",
                                   'FormatNo' => 15
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'Val' => 'I98',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I98',
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I85',
                           'FormatNo' => 15,
                           '_Value' => 'I85',
                           '_Kind' => 'PackedIdx',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => '5B5;:8=',
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef
        };
$VAR1 = {
          'first_name' => bless( {
                                   'Val' => '.@89',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'FormatNo' => 15,
                                   '_Value' => "\x{42e}\x{440}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I84',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Val' => 'I84'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'last_name' => bless( {
                                  'Val' => '5B5;:8=',
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'first_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I85',
                                  'FormatNo' => 15,
                                  'Val' => 'I85'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I86',
                           '_Value' => 'I86',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '27816',
                                      '_Value' => '1976-02-26',
                                      'FormatNo' => 71,
                                      '_Kind' => 'RK',
                                      'Type' => 'Date',
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'first_name'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'gender' => bless( {
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'Code' => undef,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '.@L528G',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{42e}\x{440}\x{44c}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{421}\x{435}\x{43c}\x{435}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '!5<5=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Code' => undef,
                                      'Type' => 'Date',
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'mid_name'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'FormatNo' => 71,
                                      '_Value' => '1982-10-17',
                                      '_Kind' => 'MulRK',
                                      'Val' => '30241'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      '_Value' => '1924-02-29',
                                      'FormatNo' => 71,
                                      '_Kind' => 'MulRK',
                                      'Format' => $VAR1->{'date_of_death'}{'Format'},
                                      'Type' => 'Date',
                                      'Code' => undef,
                                      'Val' => '8826'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => 'C70',
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I87',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           '_Value' => 'I87',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  'Val' => 'I90',
                                  '_Value' => 'I90',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'mother_id' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I89',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I89'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '5>@389',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'FormatNo' => 15,
                                   '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'general' => bless( {
                                'Val' => 'C@>64  ><5=N:',
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                'Format' => bless( {
                                                     'AlignH' => 0,
                                                     'JustLast' => 0,
                                                     'AlignV' => '2',
                                                     'Rotate' => 0,
                                                     'Key123' => 0,
                                                     'Hidden' => 0,
                                                     'BdrStyle' => [
                                                                     0,
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                     'BdrDiag' => [
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                     'FmtIdx' => 0,
                                                     'Style' => 0,
                                                     'FontNo' => 0,
                                                     'Indent' => 0,
                                                     'BdrColor' => [
                                                                     0,
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                     'Wrap' => 0,
                                                     'ReadDir' => 0,
                                                     'Merge' => 0,
                                                     'Lock' => 1,
                                                     'Font' => bless( {
                                                                        'Attr' => 0,
                                                                        'UnderlineStyle' => 0,
                                                                        'Italic' => 0,
                                                                        'Color' => 32767,
                                                                        'Strikeout' => 0,
                                                                        'Name' => 'Arial',
                                                                        'Height' => '10',
                                                                        'Underline' => 0,
                                                                        'Bold' => 0,
                                                                        'Super' => 0
                                                                      }, 'Spreadsheet::ParseExcel::Font' ),
                                                     'Fill' => [
                                                                 0,
                                                                 64,
                                                                 65
                                                               ],
                                                     'Shrink' => 0
                                                   }, 'Spreadsheet::ParseExcel::Format' ),
                                'FormatNo' => 15,
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434} \x{413}\x{43e}\x{43c}\x{435}\x{43d}\x{44e}\x{43a}",
                                '_Kind' => 'PackedIdx'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{412}\x{435}\x{440}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'general'}{'Format'},
                                   'Val' => '5@0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'general'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I88',
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I88'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => 'C70',
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'general'}{'Format'},
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Code' => undef,
                                      'Type' => 'Date',
                                      'Format' => bless( {
                                                           'Lock' => 1,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Shrink' => 0,
                                                           'Font' => $VAR1->{'general'}{'Format'}{'Font'},
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FontNo' => 0,
                                                           'Style' => 0,
                                                           'Indent' => 0,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'FmtIdx' => 14,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'Hidden' => 0,
                                                           'Key123' => 0
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      '_Kind' => 'MulRK',
                                      '_Value' => '1924-02-29',
                                      'FormatNo' => 71,
                                      'Val' => '8826'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Format' => $VAR1->{'general'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Code' => undef,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'general'}{'Format'},
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '33623',
                                      'Type' => 'Date',
                                      'Code' => undef,
                                      'Format' => $VAR1->{'date_of_birth'}{'Format'},
                                      '_Value' => '1992-01-20',
                                      '_Kind' => 'MulRK',
                                      'FormatNo' => 71
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'general'}{'Format'},
                                 '_Value' => "\x{41f}\x{435}\x{442}\x{440}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 '_Kind' => 'PackedIdx',
                                 'Val' => '5B@>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => bless( {
                                                'AlignH' => 0,
                                                'JustLast' => 0,
                                                'AlignV' => '2',
                                                'Rotate' => 0,
                                                'Key123' => 0,
                                                'Hidden' => 0,
                                                'BdrStyle' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'BdrDiag' => [
                                                               0,
                                                               0,
                                                               0
                                                             ],
                                                'FmtIdx' => 0,
                                                'Style' => 0,
                                                'FontNo' => 0,
                                                'Indent' => 0,
                                                'BdrColor' => [
                                                                0,
                                                                0,
                                                                0,
                                                                0
                                                              ],
                                                'Wrap' => 0,
                                                'ReadDir' => 0,
                                                'Merge' => 0,
                                                'Lock' => 1,
                                                'Font' => bless( {
                                                                   'Attr' => 0,
                                                                   'UnderlineStyle' => 0,
                                                                   'Italic' => 0,
                                                                   'Color' => 32767,
                                                                   'Strikeout' => 0,
                                                                   'Name' => 'Arial',
                                                                   'Height' => '10',
                                                                   'Underline' => 0,
                                                                   'Bold' => 0,
                                                                   'Super' => 0
                                                                 }, 'Spreadsheet::ParseExcel::Font' ),
                                                'Fill' => [
                                                            0,
                                                            64,
                                                            65
                                                          ],
                                                'Shrink' => 0
                                              }, 'Spreadsheet::ParseExcel::Format' ),
                           'Code' => undef,
                           '_Value' => 'I89',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I89'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Val' => 'C70',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'general' => undef,
          'mother_id' => undef,
          'first_name' => bless( {
                                   'Val' => '=0AB0A8O',
                                   '_Value' => "\x{410}\x{43d}\x{430}\x{441}\x{442}\x{430}\x{441}\x{438}\x{44f}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'id'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mid_name' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'id'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Format' => $VAR1->{'id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => undef,
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '!5<5=',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{421}\x{435}\x{43c}\x{435}\x{43d}",
                                   'FormatNo' => 15,
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' )
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => 'C70',
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'FormatNo' => 15,
                           '_Value' => 'I90',
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I90'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef,
          'mid_name' => undef,
          'gender' => bless( {
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'mid_name' => bless( {
                                 'Val' => '5>@3852=0',
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   '_Value' => "\x{413}\x{430}\x{43b}\x{438}\x{43d}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '0;8=0'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I88',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Val' => 'C@>645==0O  C70',
                                'Type' => 'Text',
                                'Code' => 'ucs2',
                                'Format' => $VAR1->{'mid_name'}{'Format'},
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{411}\x{443}\x{437}\x{430}",
                                '_Kind' => 'PackedIdx',
                                'FormatNo' => 15
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '>652=8:>20',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{41a}\x{43e}\x{436}\x{435}\x{432}\x{43d}\x{438}\x{43a}\x{43e}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I87',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I87'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I91',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           '_Value' => 'I91',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'mother_id' => bless( {
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I88',
                                  'FormatNo' => 15,
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => bless( {
                                'Val' => 'C@>645==0O  C70',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'mother_id'}{'Format'},
                                'Code' => 'ucs2',
                                '_Value' => "\x{443}\x{440}\x{43e}\x{436}\x{434}\x{435}\x{43d}\x{43d}\x{430}\x{44f} \x{411}\x{443}\x{437}\x{430}",
                                'FormatNo' => 15,
                                '_Kind' => 'PackedIdx'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mother_id'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{417}\x{438}\x{43d}\x{430}\x{438}\x{434}\x{430}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '8=0840'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'last_name' => bless( {
                                  'Val' => '5:0;>',
                                  'FormatNo' => 15,
                                  '_Value' => "\x{411}\x{435}\x{43a}\x{430}\x{43b}\x{43e}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I87',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I87'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I92',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I92',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mother_id'}{'Format'},
                           'Code' => undef
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mother_id'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'mother_id'}{'Format'},
                                 'Val' => '5>@3852=0'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'father_id' => bless( {
                                  'Val' => 'I87',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'FormatNo' => 15,
                                  '_Value' => 'I87',
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'father_id'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I93',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I93'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'last_name' => bless( {
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Val' => 'C70'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'first_name' => bless( {
                                   'Val' => '.@89',
                                   '_Value' => "\x{42e}\x{440}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => 'I88',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'gender' => bless( {
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'father_id'}{'Format'},
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Code' => undef,
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '5>@38528G',
                                 'FormatNo' => 15,
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Format' => $VAR1->{'father_id'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef
        };
$VAR1 = {
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '0;5@89',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{412}\x{430}\x{43b}\x{435}\x{440}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => bless( {
                                                        'AlignH' => 0,
                                                        'JustLast' => 0,
                                                        'AlignV' => '2',
                                                        'Rotate' => 0,
                                                        'Key123' => 0,
                                                        'Hidden' => 0,
                                                        'BdrStyle' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'BdrDiag' => [
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                        'FmtIdx' => 0,
                                                        'Style' => 0,
                                                        'FontNo' => 0,
                                                        'Indent' => 0,
                                                        'BdrColor' => [
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        0
                                                                      ],
                                                        'Wrap' => 0,
                                                        'ReadDir' => 0,
                                                        'Merge' => 0,
                                                        'Lock' => 1,
                                                        'Font' => bless( {
                                                                           'Attr' => 0,
                                                                           'UnderlineStyle' => 0,
                                                                           'Italic' => 0,
                                                                           'Color' => 32767,
                                                                           'Strikeout' => 0,
                                                                           'Name' => 'Arial',
                                                                           'Height' => '10',
                                                                           'Underline' => 0,
                                                                           'Bold' => 0,
                                                                           'Super' => 0
                                                                         }, 'Spreadsheet::ParseExcel::Font' ),
                                                        'Fill' => [
                                                                    0,
                                                                    64,
                                                                    65
                                                                  ],
                                                        'Shrink' => 0
                                                      }, 'Spreadsheet::ParseExcel::Format' ),
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I88',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I87',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I87'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I94',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'first_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I94',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  'FormatNo' => 15,
                                  'Val' => 'C70'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'first_name'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'first_name'}{'Format'},
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => bless( {
                                 'Val' => '5>@38528G',
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'first_name'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'suffix' => undef,
          'cemetery' => undef,
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I87',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Value' => 'I87',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I95',
                           '_Value' => 'I95',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'father_id'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => 'C70'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => 'I88',
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{438}\x{439}",
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'father_id'}{'Format'},
                                   'Code' => 'ucs2',
                                   'Val' => '0A8;89'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mid_name' => bless( {
                                 'Val' => '5>@38528G',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'father_id'}{'Format'},
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{438}\x{447}",
                                 'FormatNo' => 15
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'father_id'}{'Format'},
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'father_id'}{'Format'},
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'date_of_birth' => undef,
          'nickname' => undef
        };
$VAR1 = {
          'nickname' => undef,
          'date_of_birth' => undef,
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Numeric',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{413}\x{435}\x{43e}\x{440}\x{433}\x{438}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'Val' => '5>@38528G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I88',
                                  'FormatNo' => 15,
                                  'Val' => 'I88'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => '@83>@89',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{413}\x{440}\x{438}\x{433}\x{43e}\x{440}\x{438}\x{439}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{411}\x{443}\x{437}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => 'C70'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I87',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Val' => 'I87'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I96',
                           'FormatNo' => 15,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Code' => undef,
                           'Val' => 'I96'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef
        };
$VAR1 = {
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => bless( {
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => bless( {
                                                                         'Attr' => 0,
                                                                         'UnderlineStyle' => 0,
                                                                         'Italic' => 0,
                                                                         'Color' => 32767,
                                                                         'Strikeout' => 0,
                                                                         'Name' => 'Arial',
                                                                         'Height' => '10',
                                                                         'Underline' => 0,
                                                                         'Bold' => 0,
                                                                         'Super' => 0
                                                                       }, 'Spreadsheet::ParseExcel::Font' ),
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Val' => '20=>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Type' => 'Numeric',
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'first_name' => bless( {
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{410}\x{43d}\x{430}\x{441}\x{442}\x{430}\x{441}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx',
                                   'Val' => '=0AB0A8O'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'mother_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I100',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Val' => 'I100'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '5B5;:8=0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'Val' => 'I99',
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  '_Value' => 'I99',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'mid_name'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I97',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I97'
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'gender' => bless( {
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Val' => '0'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  '_Kind' => 'MulRK',
                                  '_Value' => '0',
                                  'FormatNo' => 15,
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'last_name' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => "\x{421}\x{430}\x{43c}\x{43e}\x{434}\x{435}\x{43b}\x{43e}\x{432}",
                                  '_Kind' => 'PackedIdx',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Val' => '!0<>45;>2'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => undef,
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I98',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Val' => 'I98'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'cemetery' => undef,
          'suffix' => undef,
          'mother_id' => undef,
          'general' => undef,
          'first_name' => bless( {
                                   'Val' => '8:>;09',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{41d}\x{438}\x{43a}\x{43e}\x{43b}\x{430}\x{439}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Val' => '5B5;:8='
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'id' => bless( {
                           '_Value' => 'I99',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx',
                           'Format' => $VAR1->{'last_name'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           'Val' => 'I99'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'place_of_birth' => undef,
          'email' => undef,
          'schools' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{418}\x{432}\x{430}\x{43d}",
                                   '_Kind' => 'PackedIdx',
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Val' => '20='
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => undef,
          'general' => undef,
          'mid_name' => bless( {
                                 'Val' => '0A8;L528G',
                                 '_Value' => "\x{412}\x{430}\x{441}\x{438}\x{43b}\x{44c}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'last_name'}{'Format'}
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'FormatNo' => 70,
                                      '_Value' => '20/1/1964',
                                      '_Kind' => 'PackedIdx',
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      'Val' => '20/1/1964'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  'Val' => '0',
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'gender' => bless( {
                               'Val' => '0',
                               '_Value' => '0',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Code' => undef,
                               'Format' => $VAR1->{'last_name'}{'Format'}
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '1906',
                                      '_Value' => '1906',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx',
                                      'Code' => undef,
                                      'Type' => 'Text',
                                      'Format' => $VAR1->{'date_of_death'}{'Format'}
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'date_of_birth' => bless( {
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => bless( {
                                                                              'Attr' => 0,
                                                                              'UnderlineStyle' => 0,
                                                                              'Italic' => 0,
                                                                              'Color' => 32767,
                                                                              'Strikeout' => 0,
                                                                              'Name' => 'Arial',
                                                                              'Height' => '10',
                                                                              'Underline' => 0,
                                                                              'Bold' => 0,
                                                                              'Super' => 0
                                                                            }, 'Spreadsheet::ParseExcel::Font' ),
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Kind' => 'PackedIdx',
                                      '_Value' => '1894',
                                      'FormatNo' => 70,
                                      'Val' => '1894'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'mid_name' => bless( {
                                 '_Value' => "\x{418}\x{432}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                 '_Kind' => 'PackedIdx',
                                 'FormatNo' => 15,
                                 'Type' => 'Text',
                                 'Format' => bless( {
                                                      'AlignH' => 0,
                                                      'JustLast' => 0,
                                                      'AlignV' => '2',
                                                      'Rotate' => 0,
                                                      'Key123' => 0,
                                                      'Hidden' => 0,
                                                      'BdrStyle' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'BdrDiag' => [
                                                                     0,
                                                                     0,
                                                                     0
                                                                   ],
                                                      'FmtIdx' => 0,
                                                      'Style' => 0,
                                                      'FontNo' => 0,
                                                      'Indent' => 0,
                                                      'BdrColor' => [
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                      'Wrap' => 0,
                                                      'ReadDir' => 0,
                                                      'Merge' => 0,
                                                      'Lock' => 1,
                                                      'Font' => $VAR1->{'date_of_birth'}{'Format'}{'Font'},
                                                      'Fill' => [
                                                                  0,
                                                                  64,
                                                                  65
                                                                ],
                                                      'Shrink' => 0
                                                    }, 'Spreadsheet::ParseExcel::Format' ),
                                 'Code' => 'ucs2',
                                 'Val' => '20=>2=0'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               '_Value' => '1',
                               '_Kind' => 'MulRK',
                               'FormatNo' => 15,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mid_name'}{'Format'},
                               'Code' => undef
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Format' => $VAR1->{'mid_name'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'FormatNo' => 15,
                                  '_Value' => '0',
                                  '_Kind' => 'MulRK',
                                  'Val' => '0'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => bless( {
                                      'Val' => '11/6/1967',
                                      '_Value' => '11/6/1967',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx',
                                      'Type' => 'Text',
                                      'Format' => $VAR1->{'date_of_birth'}{'Format'},
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'mother_id' => undef,
          'general' => undef,
          'first_name' => bless( {
                                   'Val' => 'D@>A8=8O',
                                   '_Kind' => 'PackedIdx',
                                   '_Value' => "\x{415}\x{444}\x{440}\x{43e}\x{441}\x{438}\x{43d}\x{438}\x{44f}",
                                   'FormatNo' => 15,
                                   'Format' => $VAR1->{'mid_name'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '5B5;:8=0',
                                  '_Value' => "\x{41c}\x{435}\x{442}\x{435}\x{43b}\x{43a}\x{438}\x{43d}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mid_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'father_id' => undef,
          'id' => bless( {
                           'Val' => 'I100',
                           'FormatNo' => 15,
                           '_Value' => 'I100',
                           '_Kind' => 'PackedIdx',
                           'Type' => 'Text',
                           'Code' => undef,
                           'Format' => $VAR1->{'mid_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'mid_name' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'title' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'homepage' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '29/4/1981',
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'gender'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef,
                                      '_Value' => '29/4/1981',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx'
                                    }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           '_Value' => 'I101',
                           '_Kind' => 'PackedIdx',
                           'FormatNo' => 15,
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Val' => 'I101'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}\x{430}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '>@5;LF520'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'general' => bless( {
                                'Code' => 'ucs2',
                                'Type' => 'Text',
                                'Format' => $VAR1->{'gender'}{'Format'},
                                'FormatNo' => 15,
                                '_Value' => "\x{443}\x{440} \x{41a}\x{43e}\x{436}\x{435}\x{432}\x{43d}\x{438}\x{43a}\x{43e}\x{432}\x{430}",
                                '_Kind' => 'PackedIdx',
                                'Val' => 'C@  >652=8:>20'
                              }, 'Spreadsheet::ParseExcel::Cell' ),
          'mother_id' => bless( {
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  '_Value' => 'I91',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => 'I91'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'FormatNo' => 15,
                                   '_Value' => "\x{414}\x{430}\x{440}\x{44c}\x{44f}",
                                   '_Kind' => 'PackedIdx',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Val' => '0@LO'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef
        };
$VAR1 = {
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '>@5;LF52',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => bless( {
                                  'FormatNo' => 15,
                                  '_Value' => 'I105',
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Val' => 'I105'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'id' => bless( {
                           'Val' => 'I102',
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I102',
                           'FormatNo' => 15,
                           'Code' => undef,
                           'Type' => 'Text',
                           'Format' => $VAR1->{'last_name'}{'Format'}
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'schools' => undef,
          'email' => undef,
          'place_of_birth' => undef,
          'mother_id' => bless( {
                                  '_Value' => 'I106',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'last_name'}{'Format'},
                                  'Code' => undef,
                                  'Val' => 'I106'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => ' ><0=',
                                   '_Value' => "\x{420}\x{43e}\x{43c}\x{430}\x{43d}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'last_name'}{'Format'},
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'mid_name' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'last_name'}{'Format'},
                               'FormatNo' => 15,
                               '_Value' => '0',
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Val' => '1',
                                  '_Kind' => 'MulRK',
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'last_name'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'date_of_death' => undef,
          'title' => undef,
          'nickname' => undef,
          'date_of_birth' => bless( {
                                      'Val' => '16/1/1981',
                                      '_Value' => '16/1/1981',
                                      'FormatNo' => 70,
                                      '_Kind' => 'PackedIdx',
                                      'Type' => 'Text',
                                      'Format' => bless( {
                                                           'FmtIdx' => 0,
                                                           'BdrStyle' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ],
                                                           'BdrDiag' => [
                                                                          0,
                                                                          0,
                                                                          0
                                                                        ],
                                                           'Key123' => 1,
                                                           'Hidden' => 0,
                                                           'AlignH' => 0,
                                                           'JustLast' => 0,
                                                           'AlignV' => '2',
                                                           'Rotate' => 0,
                                                           'Font' => $VAR1->{'last_name'}{'Format'}{'Font'},
                                                           'Shrink' => 0,
                                                           'Fill' => [
                                                                       0,
                                                                       64,
                                                                       65
                                                                     ],
                                                           'Lock' => 1,
                                                           'Wrap' => 0,
                                                           'ReadDir' => 0,
                                                           'Merge' => 0,
                                                           'Style' => 0,
                                                           'FontNo' => 0,
                                                           'Indent' => 0,
                                                           'BdrColor' => [
                                                                           0,
                                                                           0,
                                                                           0,
                                                                           0
                                                                         ]
                                                         }, 'Spreadsheet::ParseExcel::Format' ),
                                      'Code' => undef
                                    }, 'Spreadsheet::ParseExcel::Cell' )
        };
$VAR1 = {
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => bless( {
                                  'Code' => undef,
                                  'Type' => 'Text',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  '_Value' => 'I101',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Val' => 'I101'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'general' => undef,
          'first_name' => bless( {
                                   'Val' => '@B5<',
                                   'Format' => $VAR1->{'mother_id'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   '_Value' => "\x{410}\x{440}\x{442}\x{435}\x{43c}",
                                   'FormatNo' => 15,
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Val' => '>@5;LF52',
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => 'ucs2',
                                  'Format' => $VAR1->{'mother_id'}{'Format'}
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I103',
                           'Format' => $VAR1->{'mother_id'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           '_Kind' => 'PackedIdx',
                           '_Value' => 'I103',
                           'FormatNo' => 15
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => bless( {
                                  '_Value' => 'I102',
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx',
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  'Val' => 'I102'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'date_of_birth' => undef,
          'nickname' => undef,
          'mid_name' => bless( {
                                 'FormatNo' => 15,
                                 '_Value' => "\x{420}\x{43e}\x{43c}\x{430}\x{43d}\x{43e}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx',
                                 'Code' => 'ucs2',
                                 'Type' => 'Text',
                                 'Format' => $VAR1->{'mother_id'}{'Format'},
                                 'Val' => ' ><0=>28G'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'mother_id'}{'Format'},
                               '_Kind' => 'MulRK',
                               '_Value' => '0',
                               'FormatNo' => 15
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'mother_id'}{'Format'},
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef
        };
$VAR1 = {
          'gender' => bless( {
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               '_Kind' => 'MulRK',
                               '_Value' => '1',
                               'FormatNo' => 15,
                               'Val' => '1'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'is_living' => bless( {
                                  '_Value' => '1',
                                  '_Kind' => 'MulRK',
                                  'FormatNo' => 15,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'homepage' => undef,
          'mid_name' => bless( {
                                 'Val' => ' ><0=>2=0',
                                 '_Kind' => 'PackedIdx',
                                 '_Value' => "\x{420}\x{43e}\x{43c}\x{430}\x{43d}\x{43e}\x{432}\x{43d}\x{430}",
                                 'FormatNo' => 15,
                                 'Format' => $VAR1->{'gender'}{'Format'},
                                 'Type' => 'Text',
                                 'Code' => 'ucs2'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef,
          'father_id' => bless( {
                                  '_Value' => 'I102',
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Code' => undef,
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Val' => 'I102'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'FormatNo' => 15,
                           '_Value' => 'I104',
                           '_Kind' => 'PackedIdx',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           'Val' => 'I104'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'last_name' => bless( {
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'FormatNo' => 15,
                                  'Val' => '>@5;LF520'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'suffix' => undef,
          'cemetery' => undef,
          'general' => undef,
          'mother_id' => bless( {
                                  'Val' => 'I101',
                                  '_Kind' => 'PackedIdx',
                                  '_Value' => 'I101',
                                  'FormatNo' => 15,
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Code' => undef
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'first_name' => bless( {
                                   'Val' => '>;8=0',
                                   'Type' => 'Text',
                                   'Code' => 'ucs2',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'FormatNo' => 15,
                                   '_Value' => "\x{41f}\x{43e}\x{43b}\x{438}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'is_living' => bless( {
                                  'Type' => 'Numeric',
                                  'Format' => bless( {
                                                       'AlignH' => 0,
                                                       'JustLast' => 0,
                                                       'AlignV' => '2',
                                                       'Rotate' => 0,
                                                       'Key123' => 0,
                                                       'Hidden' => 0,
                                                       'BdrStyle' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'BdrDiag' => [
                                                                      0,
                                                                      0,
                                                                      0
                                                                    ],
                                                       'FmtIdx' => 0,
                                                       'Style' => 0,
                                                       'FontNo' => 0,
                                                       'Indent' => 0,
                                                       'BdrColor' => [
                                                                       0,
                                                                       0,
                                                                       0,
                                                                       0
                                                                     ],
                                                       'Wrap' => 0,
                                                       'ReadDir' => 0,
                                                       'Merge' => 0,
                                                       'Lock' => 1,
                                                       'Font' => bless( {
                                                                          'Attr' => 0,
                                                                          'UnderlineStyle' => 0,
                                                                          'Italic' => 0,
                                                                          'Color' => 32767,
                                                                          'Strikeout' => 0,
                                                                          'Name' => 'Arial',
                                                                          'Height' => '10',
                                                                          'Underline' => 0,
                                                                          'Bold' => 0,
                                                                          'Super' => 0
                                                                        }, 'Spreadsheet::ParseExcel::Font' ),
                                                       'Fill' => [
                                                                   0,
                                                                   64,
                                                                   65
                                                                 ],
                                                       'Shrink' => 0
                                                     }, 'Spreadsheet::ParseExcel::Format' ),
                                  'Code' => undef,
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '0',
                               'Code' => undef,
                               'Type' => 'Numeric',
                               'Format' => $VAR1->{'is_living'}{'Format'},
                               '_Value' => '0',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'date_of_death' => undef,
          'mid_name' => bless( {
                                 'Val' => '=0B>;L528G',
                                 'Type' => 'Text',
                                 'Code' => 'ucs2',
                                 'Format' => $VAR1->{'is_living'}{'Format'},
                                 'FormatNo' => 15,
                                 '_Value' => "\x{410}\x{43d}\x{430}\x{442}\x{43e}\x{43b}\x{44c}\x{435}\x{432}\x{438}\x{447}",
                                 '_Kind' => 'PackedIdx'
                               }, 'Spreadsheet::ParseExcel::Cell' ),
          'nickname' => undef,
          'date_of_birth' => undef,
          'last_name' => bless( {
                                  'Val' => '>@5;LF52',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'is_living'}{'Format'},
                                  'Code' => 'ucs2',
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}",
                                  'FormatNo' => 15,
                                  '_Kind' => 'PackedIdx'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'father_id' => undef,
          'jobs' => undef,
          'id' => bless( {
                           'Val' => 'I105',
                           'Format' => $VAR1->{'is_living'}{'Format'},
                           'Type' => 'Text',
                           'Code' => undef,
                           'FormatNo' => 15,
                           '_Value' => 'I105',
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'prefix' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'mother_id' => undef,
          'general' => undef,
          'first_name' => bless( {
                                   '_Value' => "\x{410}\x{43b}\x{435}\x{43a}\x{441}\x{430}\x{43d}\x{434}\x{440}",
                                   '_Kind' => 'PackedIdx',
                                   'FormatNo' => 15,
                                   'Code' => 'ucs2',
                                   'Type' => 'Text',
                                   'Format' => $VAR1->{'is_living'}{'Format'},
                                   'Val' => ';5:A0=4@'
                                 }, 'Spreadsheet::ParseExcel::Cell' ),
          'places_of_living' => undef,
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef
        };
$VAR1 = {
          'mid_name' => undef,
          'work_places' => undef,
          'gender' => bless( {
                               'Val' => '1',
                               'Type' => 'Numeric',
                               'Format' => bless( {
                                                    'AlignH' => 0,
                                                    'JustLast' => 0,
                                                    'AlignV' => '2',
                                                    'Rotate' => 0,
                                                    'Key123' => 0,
                                                    'Hidden' => 0,
                                                    'BdrStyle' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'BdrDiag' => [
                                                                   0,
                                                                   0,
                                                                   0
                                                                 ],
                                                    'FmtIdx' => 0,
                                                    'Style' => 0,
                                                    'FontNo' => 0,
                                                    'Indent' => 0,
                                                    'BdrColor' => [
                                                                    0,
                                                                    0,
                                                                    0,
                                                                    0
                                                                  ],
                                                    'Wrap' => 0,
                                                    'ReadDir' => 0,
                                                    'Merge' => 0,
                                                    'Lock' => 1,
                                                    'Font' => bless( {
                                                                       'Attr' => 0,
                                                                       'UnderlineStyle' => 0,
                                                                       'Italic' => 0,
                                                                       'Color' => 32767,
                                                                       'Strikeout' => 0,
                                                                       'Name' => 'Arial',
                                                                       'Height' => '10',
                                                                       'Underline' => 0,
                                                                       'Bold' => 0,
                                                                       'Super' => 0
                                                                     }, 'Spreadsheet::ParseExcel::Font' ),
                                                    'Fill' => [
                                                                0,
                                                                64,
                                                                65
                                                              ],
                                                    'Shrink' => 0
                                                  }, 'Spreadsheet::ParseExcel::Format' ),
                               'Code' => undef,
                               '_Value' => '1',
                               'FormatNo' => 15,
                               '_Kind' => 'MulRK'
                             }, 'Spreadsheet::ParseExcel::Cell' ),
          'is_living' => bless( {
                                  '_Value' => '1',
                                  'FormatNo' => 15,
                                  '_Kind' => 'MulRK',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'Type' => 'Numeric',
                                  'Code' => undef,
                                  'Val' => '1'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'homepage' => undef,
          'date_of_death' => undef,
          'place_of_death' => undef,
          'title' => undef,
          'nickname' => undef,
          'date_of_birth' => undef,
          'cemetery' => undef,
          'suffix' => undef,
          'last_name' => bless( {
                                  'Code' => 'ucs2',
                                  'Type' => 'Text',
                                  'Format' => $VAR1->{'gender'}{'Format'},
                                  'FormatNo' => 15,
                                  '_Value' => "\x{413}\x{43e}\x{440}\x{435}\x{43b}\x{44c}\x{446}\x{435}\x{432}\x{430}",
                                  '_Kind' => 'PackedIdx',
                                  'Val' => '>@5;LF520'
                                }, 'Spreadsheet::ParseExcel::Cell' ),
          'jobs' => undef,
          'father_id' => undef,
          'prefix' => undef,
          'id' => bless( {
                           'Val' => 'I106',
                           'Type' => 'Text',
                           'Format' => $VAR1->{'gender'}{'Format'},
                           'Code' => undef,
                           '_Value' => 'I106',
                           'FormatNo' => 15,
                           '_Kind' => 'PackedIdx'
                         }, 'Spreadsheet::ParseExcel::Cell' ),
          'schools' => undef,
          'place_of_birth' => undef,
          'email' => undef,
          'mother_id' => undef,
          'general' => undef,
          'places_of_living' => undef,
          'first_name' => bless( {
                                   'Val' => ';5=0',
                                   'FormatNo' => 15,
                                   '_Value' => "\x{415}\x{43b}\x{435}\x{43d}\x{430}",
                                   '_Kind' => 'PackedIdx',
                                   'Format' => $VAR1->{'gender'}{'Format'},
                                   'Type' => 'Text',
                                   'Code' => 'ucs2'
                                 }, 'Spreadsheet::ParseExcel::Cell' )
        };
__END__
:endofperl
@"%COMSPEC%" /c exit /b %ErrorLevel%
