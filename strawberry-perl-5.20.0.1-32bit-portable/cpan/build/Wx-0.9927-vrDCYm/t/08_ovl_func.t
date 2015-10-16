#!/usr/bin/perl -w

# test that overload dispatch works for
# specific functions

use strict;
use Wx;
use lib './t';
use Test::More 'tests' => 230;
use Tests_Helper qw(test_app :overload);
use Fatal qw(open);

my $nolog = Wx::LogNull->new;
Wx::InitAllImageHandlers;

test_app( sub {
my $frame = Wx::Frame->new( undef, -1, 'a' );
my $bmpok = Wx::Bitmap->new( 'wxpl.ico', Wx::wxBITMAP_TYPE_ICO() );
my $imgok = Wx::Image->new( 'wxpl.ico', Wx::wxBITMAP_TYPE_ICO() );
my $icook = Wx::GetWxPerlIcon();

die unless $bmpok->Ok;
die unless $imgok->Ok;
die unless $icook->Ok;

##############################################################################
# Wx::Brush
##############################################################################
{
my( $newbmp, $newcol, $newname ) = ( 0, 0, 0 );
my( $scrgb, $sccol, $scname ) = ( 0, 0, 0 );

hijack( 'Wx::Brush::newBitmap'       => sub { $newbmp = 1 },
        'Wx::Brush::newColour'       => sub { $newcol = 1 },
        'Wx::Brush::newName'         => sub { $newname = 1 },
        'Wx::Brush::SetColourRGB'    => sub { $scrgb = 1 },
        'Wx::Brush::SetColourColour' => sub { $sccol = 1 },
        'Wx::Brush::SetColourName'   => sub { $scname = 1 } );

Wx::Brush->new( Wx::Bitmap->new( 1, 1, 1 ) );
ok( $newbmp, 'Wx::Brush::newBitmap' );

Wx::Brush->new( Wx::wxRED(), 1 );
ok( $newcol, 'Wx::Brush::newColour' );

my $b = Wx::Brush->new( 'red', 2 );
ok( $newname, 'Wx::Brush::newName' );

$b->SetColour( 1, 2, 3 );
ok( $scrgb, 'Wx::Brush::SetColourRGB' );

$b->SetColour( Wx::wxRED() );
ok( $sccol, 'Wx::Brush::SetColourColour' );

$b->SetColour( 'red' );
ok( $scname, 'Wx::Brush::SetColourName' );
}

##############################################################################
# Wx::Bitmap & Wx::Mask
##############################################################################
{
my( $newbmp, $newbmpn, $newbmpcol ) = ( 0, 0, 0 );
my( $newempty, $newfile, $newicon, $newimage ) = ( 0, 0, 0, 0 );

hijack( 'Wx::Mask::newBitmapColour' => sub { $newbmpcol = 1 },
        'Wx::Mask::newBitmapIndex'  => sub { $newbmpn = 1 },
        'Wx::Mask::newBitmap'       => sub { $newbmp = 1 },
        'Wx::Bitmap::newEmpty'      => sub { $newempty = 1 },
        'Wx::Bitmap::newFile'       => sub { $newfile = 1 },
        'Wx::Bitmap::newIcon'       => sub { $newicon = 1 },
        'Wx::Bitmap::newImage'      => sub { $newimage = 1 },
      );

my $bitmap = Wx::Bitmap->new( 1, 1, 1 );
ok( $newempty, "Wx::Bitmap::newEmpty" );

Wx::Bitmap->new( 'demo/data/logo.jpg', Wx::wxBITMAP_TYPE_JPEG() );
ok( $newfile,  "Wx::Bitmap::newFile" );

Wx::Bitmap->new( $icook );
ok( $newicon,  "Wx::Bitmap::newIcon" );

Wx::Bitmap->new( Wx::Image->new( 1, 1 ) );
ok( $newimage, "Wx::Bitmap::newImage" );

Wx::Mask->new( $bmpok, Wx::Colour->new( 'red' ) );
ok( $newbmpcol,"Wx::Mask::newBitmapColour" );

SKIP: {
  skip "Does not work on wxGTK, wxMAC, wxX11 and wxMOTIF", 1
    if Wx::wxGTK() || Wx::wxX11() || Wx::wxMOTIF() || Wx::wxMAC();

  Wx::Mask->new( $bmpok, 0 );
  ok( $newbmpn,  "Wx::Mask::newBitmapIndex" );
}

# does not work: colour bitmap
# Wx::Mask->new( $bitmap );
# ok( $newbmp,   "Wx::Mask::newBitmap" );
}

##############################################################################
# Wx::Colour
##############################################################################
{
my( $newrgb, $newname ) = ( 0, 0 );
hijack( 'Wx::Colour::newRGB'  => sub { $newrgb = 1 },
        'Wx::Colour::newName' => sub { $newname = 1 } );

Wx::Colour->new( 1, 2, 3 );
ok( $newrgb, "Wx::Colour::newRGB" );

Wx::Colour->new( 'red' );
ok( $newname, "Wx::Colour::newName" );
}

##############################################################################
# Wx::Caret
##############################################################################
{
my( $newwh, $newsize, $movepoint, $movexy, $setsizesize, $setsizewh ) =
  ( 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Caret::newWH'     => sub { $newwh = 1 },
        'Wx::Caret::newSize'   => sub { $newsize = 1 },
        'Wx::Caret::MovePoint' => sub { $movepoint = 1 },
        'Wx::Caret::MoveXY'    => sub { $movexy = 1 },
        'Wx::Caret::SetSizeSize' => sub { $setsizesize = 1 },
        'Wx::Caret::SetSizeWH' => sub { $setsizewh = 1 } );

my $caret = Wx::Caret->new( Wx::Window->new( $frame, -1 ), 1, 1 );
ok( $newwh,       "Wx::Caret::newWH" );

Wx::Caret->new( Wx::Window->new( $frame, -1 ), [ 1, 1 ] );
ok( $newsize,     "Wx::Caret::newSize" );

$caret->Move( [ 1, 1 ] );
ok( $movepoint,   "Wx::Caret::MovePoint" );

Wx::Caret->new( Wx::Window->new( $frame, -1 ), 1, 1 )->Move( 1, 1 );
ok( $movexy,      "Wx::Caret::MoveXY" );

$caret->SetSize( [ 1, 1 ] );
ok( $setsizesize, "Wx::Caret::SetSizeSize" );

$caret->SetSize( 1, 1 );
ok( $setsizewh,   "Wx::Caret::SetSizeWH" );
}

##############################################################################
# Wx::ControlWithItems/Wx::ComboBox
##############################################################################
{
my( $cwiappendstr, $cwiappenddata, $cwiappenditems,
    $cbappendstr, $cbappenddata, $cbsetselectionN, $cbsetselectionNN,
    $cwiappenditemsdata, $cwiinsertitemsdata, $cwiinsertitems,
    $cwiinsertdata, $cwiinsertstr, $cwisetitemsdata, $cwisetitems,
    $cwifindstringc, $cwifindstringnoc );
my $good_combo = 'Wx::ComboBox'->isa( 'Wx::Choice' );
hijack( 'Wx::ControlWithItems::AppendString' => sub { $cwiappendstr = 1 },
        'Wx::ControlWithItems::AppendData'   => sub { $cwiappenddata = 1 },
        'Wx::ControlWithItems::AppendItems'  => sub { $cwiappenditems = 1 },
        ( Wx::wxVERSION() >= 2.009
          ? ( 'Wx::ControlWithItems::AppendItemsData' => sub { $cwiappenditemsdata = 1 },
              'Wx::ControlWithItems::InsertItemsData' => sub { $cwiinsertitemsdata = 1 },
              'Wx::ControlWithItems::InsertItems' => sub { $cwiinsertitems = 1 },
              'Wx::ControlWithItems::InsertData' => sub { $cwiinsertdata = 1 },
              'Wx::ControlWithItems::InsertString' => sub { $cwiinsertstr = 1 },
              'Wx::ControlWithItems::SetItemsData' => sub { $cwisetitemsdata = 1 },
              'Wx::ControlWithItems::SetItems' => sub { $cwisetitems = 1 } ) : () ),
        ( $good_combo ? () :
          ( 'Wx::ComboBox::AppendString'     => sub { $cbappendstr = 1 },
            'Wx::ComboBox::AppendData'       => sub { $cbappenddata = 1 } )
        ),
        'Wx::ComboBox::SetMark'              => sub { $cbsetselectionNN = 1 },
        ( !Wx::wxMAC() ?
          ( 'Wx::ComboBox::SetSelectionN'    => sub { $cbsetselectionN = 1 } )
          : () ),
        ( Wx::wxVERSION() >= 2.007002
          ? ( 'Wx::ControlWithItems::FindStringCase' => sub { $cwifindstringc = 1 } ) : () ),
        'Wx::ControlWithItems::FindStringNoCase' => sub { $cwifindstringnoc = 1 },
       );

my $cwi = Wx::ListBox->new( $frame, -1 );
my $cb = Wx::ComboBox->new( $frame, -1, 'bar' );

$cwi->FindString( 'a' );
ok( $cwifindstringnoc,"Wx::ControlWithItems::FindStringNoCase" );

$cwi->FindString( 'a', 0 );
ok( $cwifindstringc,  "Wx::ControlWithItems::FindStringCase" );

$cwi->Append( 'a' );
ok( $cwiappendstr,    "Wx::ControlWithItems::AppendString" );

$cwi->Append( 'a', {} );
ok( $cwiappenddata,   "Wx::ControlWithItems::AppendData" );

$cwi->Append( [ 'c', 'd', 'e' ] );
ok( $cwiappenditems,  "Wx::ControlWithItems::AppendItems" );

if( Wx::wxVERSION() >= 2.009 ) {
    $cwi->Append( [ 'c', 'd', 'e' ], [ 1, 2, 3 ] );
    $cwi->Insert( [ 'c', 'd', 'e' ], 2, [ 1, 2, 3 ] );
    $cwi->Insert( [ 'c', 'd', 'e' ], 3 );
    $cwi->Insert( 'w', 4, 7 );
    $cwi->Insert( 'w', 5 );
    $cwi->Set( [ 'c', 'd', 'e' ], [ 1, 2, 3 ] );
    $cwi->Set( [ 'w', 'x', 'y' ] );
} else {
    ( $cwiappenditems, $cwiappenditemsdata, $cwiinsertitemsdata,
      $cwiinsertitems, $cwiinsertdata, $cwiinsertstr, $cwisetitemsdata,
      $cwisetitems ) = ( 1, 1, 1, 1, 1, 1, 1, 1 );

    # just to check it is there
    $cwi->Set( [ 'w', 'x', 'y' ] );
}
ok( $cwiappenditemsdata, 'Wx::ControlWithItems::AppendItemsData' );
ok( $cwiinsertitemsdata, 'Wx::ControlWithItems::InsertItemsData' );
ok( $cwiinsertitems, 'Wx::ControlWithItems::InsertItems' );
ok( $cwiinsertdata, 'Wx::ControlWithItems::InsertData' );
ok( $cwiinsertstr, 'Wx::ControlWithItems::InsertString' );
ok( $cwisetitemsdata, 'Wx::ControlWithItems::SetItemsData' );
ok( $cwisetitems, 'Wx::ControlWithItems::SetItems' );

if( !$good_combo  ) {
  $cb->Append( 'a' );
  $cb->Append( 'b', sub {} );
} else {
  ( $cbappendstr, $cbappenddata ) = ( 1, 1 );
}
ok( $cbappendstr,     "Wx::ComboBox::AppendString" );
ok( $cbappenddata,    "Wx::ComboBox::AppendData" );

SKIP: {
  skip "Segfaults on wxMAC", 1 if Wx::wxMAC();

  $cb->SetSelection( 0 );
  ok( $cbsetselectionN, "Wx::ComboBox::SetSelectionN" );
}

$cb->SetSelection( 0, 1 );
ok( $cbsetselectionNN,"Wx::ComboBox::SetMark" );
}

##############################################################################
# Wx::Cursor
##############################################################################
{
my( $newid, $newimage, $newfile ) = ( 0, 0, 0 );
hijack( 'Wx::Cursor::newId'    => sub { $newid = 1 },
        ( Wx::wxVERSION() >= 2.003002 && !Wx::wxMAC()
          ? ( 'Wx::Cursor::newImage' => sub { $newimage = 1 } )
          : () ),
#        ( Wx::wxMSW()
#          ? ( 'Wx::Cursor::newFile'  => sub { $newfile = 1 } )
#          : () ),
      );

Wx::Cursor->new( 1 );
ok( $newid,    "Wx::Cursor::newId" );

SKIP: {
  skip "Only for wxWidgets 2.3.x", 1
    unless Wx::wxVERSION() >= 2.003002 && !Wx::wxMAC();

  Wx::Cursor->new( Wx::Image->new( 1, 1 ) );
  ok( $newimage, "Wx::Cursor::newImage" );
}

#SKIP: {
#  skip "Only for wxMSW", 1 unless Wx::wxMSW();

#  Wx::Cursor->new( 'demo/data/logo.jpg', Wx::wxBITMAP_TYPE_JPEG(), 2, 2 );
#  ok( $newfile, "Wx::Cursor::newFile" );
#}
}

##############################################################################
# Wx::Icon
##############################################################################
{
my( $newnull, $newfile, $newiconloc ) = ( 0, 0, 0 );
hijack( 'Wx::Icon::newNull' => sub { $newnull = 1 },
        'Wx::Icon::newFile' => sub { $newfile = 1 },
        ( Wx::wxVERSION() >= 2.005002
          ? ( 'Wx::Icon::newLocation' => sub { $newiconloc = 1 } )
          : () ),
        );

Wx::Icon->new();
ok( $newnull, "Wx::Icon::newNull" );

Wx::Icon->new( 'wxpl.xpm', Wx::wxBITMAP_TYPE_XPM() );
ok( $newfile, "Wx::Icon::newFile" );

SKIP: {
  skip "Only for wxWidgets 2.5.2+", 1 unless Wx::wxVERSION >= 2.005002;
  skip "Hangs under wxMotif", 1 if Wx::wxMOTIF;

  my $mtm = Wx::MimeTypesManager->new;
  my $filet = $mtm->GetFileTypeFromExtension( 'jpg' );

  skip "No jpg file type", 1 unless $filet;
  my $location = $filet->GetIcon;
  skip "No icon for jpg file type", 1 unless $location;
  my $icon = Wx::Icon->new( $location );
  ok( $newiconloc, "Wx::Icon::newLocation" );
}
}

##############################################################################
# Wx::ToolBar
##############################################################################
{
my( $addtoollong, $addtoolshort, $setmarginsxy, $setmarginssize,
    $addnews, $addnewl, $instoollong, $insnewl ) =
  ( 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::ToolBarBase::AddToolLong'    => sub { $addtoollong = 1 },
        'Wx::ToolBarBase::AddToolShort'   => sub { $addtoolshort = 1 },
        'Wx::ToolBarBase::InsertToolLong'   => sub { $instoollong = 1 },
        ( Wx::wxVERSION >= 2.004 ?
          ( 'Wx::ToolBarBase::AddToolNewShort'   => sub { $addnews = 1 },
            'Wx::ToolBarBase::AddToolNewLong'    => sub { $addnewl = 1 } ) :
          () ),
        ( Wx::wxVERSION >= 2.006 ?
          ( 'Wx::ToolBarBase::InsertToolNewLong' => sub { $insnewl = 1 } ) :
          () ),
        'Wx::ToolBarBase::SetMarginsXY'   => sub { $setmarginsxy = 1 },
        'Wx::ToolBarBase::SetMarginsSize' => sub { $setmarginssize = 1 } );

my $tbar = Wx::ToolBar->new( $frame, -1 );
$tbar->SetMargins( 0, 1 );
ok( $setmarginsxy, "Wx::ToolBar::SetMarginsXY" );

$tbar->SetMargins( [1, 2] );
ok( $setmarginssize, "Wx::Toolbar::SetMarginsSize" );

$tbar->AddTool( Wx::wxID_NEW(), $bmpok, Wx::wxNullBitmap(), 0, undef, 'foo' );
ok( $addtoollong, "Wx::ToolBar::AddToolLong" );

$tbar->AddTool( -1, $bmpok, 'a', 'b' );
ok( $addtoolshort, "Wx::ToolBar::AddToolShort" );

$tbar->InsertTool( 1, Wx::wxID_NEW(), $bmpok, Wx::wxNullBitmap(), 0,
                   undef, 'foo' );
ok( $instoollong, "Wx::ToolBar::InsertToolLong" );

SKIP: {
  skip "Only for wxWidgets 2.5+", 2 unless Wx::wxVERSION >= 2.005;

  $tbar->AddTool( -1, "boo", $bmpok, Wx::wxNullBitmap(), 0,
                  'str', 'foo', 'data' );
  ok( $addnewl, "Wx::ToolBar::AddToolNewLong" );

  $tbar->AddTool( -1, "bar", $bmpok, 'a', 0 );
  ok( $addnews, "Wx::ToolBar::AddToolNewShort" );
}
SKIP: {
  skip "Only for wxWidgets 2.6+", 1 unless Wx::wxVERSION >= 2.006;

  $tbar->InsertTool( 1, Wx::wxID_NEW(), 'lbl', $bmpok, Wx::wxNullBitmap(), 0,
                     'foo', 'moo', undef );
  ok( $insnewl, "Wx::ToolBar::InsertToolNewLong" );
}
}

##############################################################################
# Wx::StaticBitmap
##############################################################################
SKIP: {
skip "Segfaults under wxMotif 2.6.x", 2 if Wx::wxMOTIF && Wx::wxVERSION < 2.008;
my( $newicon, $newbitmap ) = ( 0, 0 );
hijack( 'Wx::StaticBitmap::newIcon'   => sub { $newicon = 1 },
        'Wx::StaticBitmap::newBitmap' => sub { $newbitmap =1 } );

Wx::StaticBitmap->new( $frame, -1, $icook );
ok( $newicon,   "Wx::StaticBitmap::newIcon" );

Wx::StaticBitmap->new( $frame, -1, $bmpok );
ok( $newbitmap, "Wx::StaticBitmap::newBitmap" );
}

##############################################################################
# Wx::Rect
##############################################################################
{
my( $newxywh, $newps, $newpp ) = ( 0, 0, 0 );
hijack( 'Wx::Rect::newXYWH' => sub { $newxywh = 1 },
        'Wx::Rect::newPS'   => sub { $newps = 1 },
        'Wx::Rect::newPP'   => sub { $newpp = 1 } );

Wx::Rect->new( 0, 1, 2, 3 );
ok( $newxywh, "Wx::Rect::newXYWH" );

Wx::Rect->new( Wx::Point->new( 0, 1 ), Wx::Size->new( 1, 2 ) );
ok( $newps, "Wx::Rect::newPS" );

Wx::Rect->new( Wx::Point->new( 0, 1 ), Wx::Point->new( 2, 3 ) );
ok( $newpp, "Wx::Rect::newPP" );
}

##############################################################################
# Wx::ScreenDC
##############################################################################
{
my( $sdotwin, $sdotrec ) = ( 0, 0 );
hijack( 'Wx::ScreenDC::StartDrawingOnTopWindow' => sub { $sdotwin = 1 },
        'Wx::ScreenDC::StartDrawingOnTopRect'   => sub { $sdotrec = 1 } );

my $dc = Wx::ScreenDC->new;

$dc->StartDrawingOnTop( $frame );
ok( $sdotwin, "Wx::ScreenDC::StartDrawingOnTopWindow" );

$dc->EndDrawingOnTop;
$dc->StartDrawingOnTop( Wx::Rect->new( 0, 1, 2, 3 ) );
ok( $sdotrec, "Wx::ScreenDC::StartDrawingOnTopRect" );
}

##############################################################################
# Wx::Window
##############################################################################
{
my( $ssxywh, $sswh, $sssize, $ssrect, $stttip, $sttstr, $ctsxy, $ctspoint,
    $cdppoint, $cdpsize, $cpdpoint, $cpdsize, $iepoint, $ierect, $iexywh,
    $movepoint, $movexy, $stcpoi, $stcxy, $scspoi, $scswh )
  = ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Window::SetSizeXYWHF' => sub { $ssxywh = 1 },
        'Wx::Window::SetSizeWH'    => sub { $sswh = 1 },
        'Wx::Window::SetSizeSize'  => sub { $sssize = 1 },
        'Wx::Window::SetSizeRect'  => sub { $ssrect = 1 },
        ( Wx::wxMOTIF() ? () :
          ( 'Wx::Window::SetToolTipTip'    => sub { $stttip = 1 },
            'Wx::Window::SetToolTipString' => sub { $sttstr = 1 }, ) ),
        'Wx::Window::ClientToScreenXY'    => sub { $ctsxy = 1 },
        'Wx::Window::ClientToScreenPoint' => sub { $ctspoint = 1 },
        'Wx::Window::ConvertDialogPointToPixels' => sub { $cdppoint = 1 },
        'Wx::Window::ConvertDialogSizeToPixels'  => sub { $cdpsize =1 },
        'Wx::Window::ConvertPixelsPointToDialog' => sub { $cpdpoint = 1 },
        'Wx::Window::ConvertPixelsSizeToDialog'  => sub { $cpdsize =1 },
        'Wx::Window::IsExposedPoint' => sub { $iepoint = 1 },
        'Wx::Window::IsExposedRect'  => sub { $ierect = 1 },
        'Wx::Window::IsExposedXYWH'  => sub { $iexywh = 1 },
        'Wx::Window::MovePoint'      => sub { $movepoint = 1 },
        'Wx::Window::MoveXY'         => sub { $movexy = 1 },
#        Wx::Window::PopupMenuPoint => sub { $poppoint = 1 },
#        Wx::Window::PopupMenuXY    => sub { $popxy = 1 },
        'Wx::Window::ScreenToClientPoint' => sub { $stcpoi = 1 },
        'Wx::Window::ScreenToClientXY'    => sub { $stcxy = 1 },
        'Wx::Window::SetClientSizeSize'   => sub { $scspoi = 1 },
        'Wx::Window::SetClientSizeWH'     => sub { $scswh = 1 } );

$frame->SetSize( 20, 20, 30, 30 );
ok( $ssxywh, "Wx::Window::SetSizeXYWHF" );

$frame->SetSize( 40, 40 );
ok( $sswh, "Wx::Window::SetSizeWH" );

$frame->SetSize( [ 50, 50 ] );
ok( $sssize, "Wx::Window::SetSizeSize" );

$frame->SetSize( Wx::Rect->new( 40, 40, 60, 60 ) );
ok( $ssrect, "Wx::Window::SetSizeRect" );

SKIP: {
  skip "No ToolTips under wxMOTIF", 2 if Wx::wxMOTIF();

  $frame->SetToolTip( "FOO" );
  ok( $sttstr, "Wx::Window::SetToolTipString" );

  $frame->SetToolTip( Wx::ToolTip->new( "Bar" ) );
  ok( $stttip, "Wx::Window::SetToolTipTip" );
}

$frame->ClientToScreen( 1, 2 );
ok( $ctsxy, "Wx::Window::ClientToScreenXY" );

$frame->ClientToScreen( [1, 2] );
ok( $ctspoint, "Wx::Window::ClientToScreenPoint" );

$frame->ConvertDialogToPixels( Wx::Point->new( 2, 3 ) );
ok( $cdppoint, "Wx::Window::ConvertDialogPointToPixels" );

$frame->ConvertDialogToPixels( Wx::Size->new( 1, 2 ) );
ok( $cdpsize, "Wx::Window::ConvertDialogSizeToPixels" );

$frame->ConvertPixelsToDialog( Wx::Point->new( 2, 3 ) );
ok( $cpdpoint, "Wx::Window::ConvertPixelsPointToDialog" );

$frame->ConvertPixelsToDialog( Wx::Size->new( 1, 2 ) );
ok( $cpdsize, "Wx::Window::ConvertPixelsSizeToDialog" );

$frame->IsExposed( Wx::Point->new( 1, 2 ) );
ok( $iepoint, "Wx::Window::IsExposedPoint" );

$frame->IsExposed( Wx::Rect->new( 1, 2, 3, 4 ) );
ok( $ierect, "Wx::Window::IsExposedRect" );

$frame->IsExposed( 1, 2, 3, 4 );
ok( $iexywh, "Wx::Window::IsExposedXYWH" );

$frame->Move( [ 50, 50 ] );
ok( $movepoint, "Wx::Window::MovePoint" );

$frame->Move( 6, 60 );
ok( $movexy, "Wx::Window::MoveXY" );

$frame->ScreenToClient( [ 1, 2 ] );
ok( $stcpoi, "Wx::Window::ScreenToClientPoint" );

$frame->ScreenToClient( 1, 2 );
ok( $stcxy, "Wx::Window::ScreenToClientXY" );

$frame->SetClientSize( [50, 50] );
ok( $scspoi, "Wx::Window::SetClientSizePoint" );

$frame->SetClientSize( 200, 200 );
ok( $scswh, "Wx::Window::SetClientSizeWH" );

test_override { $frame->SetVirtualSize( 500, 500 ) }
              'Wx::Window::SetVirtualSizeXY';
test_override { $frame->SetVirtualSize( [ 500, 500 ] ) }
              'Wx::Window::SetVirtualSizeSize';
}

##############################################################################
# Wx::DC
##############################################################################
{
my( $drawcxywh, $drawcrec, $setclxywh, $setclreg ) = ( 0, 0, 0, 0 );
hijack( 'Wx::DC::DrawCheckMarkXYWH' => sub { $drawcxywh = 1 },
        'Wx::DC::DrawCheckMarkRect' => sub { $drawcrec = 1 },
        'Wx::DC::SetClippingRegionXYWH'  => sub { $setclxywh = 1 },
        'Wx::DC::SetClippingRegionRegion' => sub { $setclreg = 1 } );

my $dc = Wx::ClientDC->new( $frame );
$dc->DrawCheckMark( 1, 2, 5, 6 );
ok( $drawcxywh, "Wx::DC::DrawCheckMarkXYWH" );

$dc->DrawCheckMark( Wx::Rect->new( 1, 2, 5, 6 ) );
ok( $drawcrec, "Wx::DC::DrawCheckMarkRect" );

$dc->SetClippingRegion( 0, 0, 50, 50 );
ok( $setclxywh, "Wx::DC::SetClippingRegionXYWH" );

$dc->SetClippingRegion( Wx::Region->new( Wx::Rect->new( 0, 0, 40, 40 ) ) );
ok( $setclreg, "Wx::DC::SetClippingRegionRegion" );
}

##############################################################################
# Wx::Timer
##############################################################################
{
my( $newdefault, $neweh ) = ( 0, 0 );
hijack( 'Wx::Timer::newDefault' => sub { $newdefault = 1 },
        'Wx::Timer::newEH'      => sub { $neweh = 1 } );

Wx::Timer->new->Destroy;
ok( $newdefault, "Wx::Timer::newDefault" );

Wx::Timer->new( $frame, 1 );
ok( $neweh, "Wx::Timer::newEH" );
}

##############################################################################
# Wx::TreeCtrl
##############################################################################
{
my( $tgetp, $wgetp, $iitid, $iiint ) = ( 0, 0, 0, 0 );
hijack( 'Wx::TreeCtrl::GetParent' => sub { $tgetp = 1 },
        'Wx::Window::GetParent'   => sub { $wgetp = 1 },
        'Wx::TreeCtrl::InsertItemPrev' => sub { $iitid = 1 },
        'Wx::TreeCtrl::InsertItemBef'  => sub { $iiint = 1 } );

my $tc = Wx::TreeCtrl->new( $frame, -1 );
my $rt = $tc->AddRoot( 'root' );
my $c1 = $tc->AppendItem( $rt, 'first' );
my $c2 = $tc->AppendItem( $rt, 'second' );

$tc->GetParent( $c1 );
ok( $tgetp, "Wx::TreeCtrl::GetParent" );

$tc->GetParent;
ok( $wgetp, "Wx::Window::GetParent" );

$tc->InsertItem( $rt, $c1, 'insert 1' );
ok( $iitid, "Wx::TreeCtrl::InsertItemPrev" );

$tc->InsertItem( $rt, 1, 'insert 2' );
ok( $iiint, "Wx::TreeCtrl::InsertItemBef" );
}

##############################################################################
# Wx::Pen
##############################################################################
{
my( $newcol, $newbitmap, $newstring,
    $setcolcol, $setcolrgb, $setcolname ) = ( 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Pen::newColour'    => sub { $newcol = 1 },
        ( Wx::wxMSW() ?
          ( 'Wx::Pen::newBitmap'    => sub { $newbitmap = 1 } ) :
          () ),
        'Wx::Pen::newString'    => sub { $newstring = 1 },
        'Wx::Pen::SetColourColour' => sub { $setcolcol = 1 },
        'Wx::Pen::SetColourRGB'    => sub { $setcolrgb = 1 },
        'Wx::Pen::SetColourName'   => sub { $setcolname = 1 } );

Wx::Pen->new( Wx::Colour->new( 'red' ), 0, 0 );
ok( $newcol, "Wx::Pen::newColour" );

SKIP: {
  skip "MSW-only method", 1 unless Wx::wxMSW();

  Wx::Pen->new( $bmpok, 1 );
  ok( $newbitmap, "Wx::Pen::newBitmap" );
}

my $pen = Wx::Pen->new( 'red', 0, 0 );
ok( $newstring, "Wx::Pen::newString" );

$pen->SetColour( Wx::wxRED() );
ok( $setcolcol, "Wx::Pen::SetColourColour" );

$pen->SetColour( 1, 2, 3 );
ok( $setcolrgb, "Wx::Pen::SetColourRGB" );

$pen->SetColour( 'red' );
ok( $setcolname, "Wx::Pen::SetColourName" );
}

##############################################################################
# Wx::ListCtrl
##############################################################################
{
my( $ici, $istr, $setii, $setstr ) = ( 0, 0, 0, 0 );
hijack( 'Wx::ListCtrl::InsertColumnInfo'   => sub { $ici = 1 },
        'Wx::ListCtrl::InsertColumnString' => sub { $istr = 1 },
        'Wx::ListCtrl::SetItemInfo'        => sub { $setii = 1 },
        'Wx::ListCtrl::SetItemString'      => sub { $setstr = 1 } );

my $lc = Wx::ListCtrl->new( $frame, -1, [-1,-1], [-1,-1], Wx::wxLC_REPORT() );

$lc->InsertColumn( 0, 'Column' );
ok( $istr, "Wx::ListCtrl::InsertColumnString" );

my $li = Wx::ListItem->new; $li->SetColumn( 1 ); $li->SetText( 'Foo' );
$lc->InsertColumn( 1, $li );
ok( $ici, "Wx::ListCtrl::InsertColumnInfo" );

$lc->InsertStringItem( 0, 'Foo' );
$lc->SetItem( 0, 0, 'Bar' );
ok( $setstr, "Wx::ListCtrl::SetItemString" );

$li->SetId( 0 );
$lc->SetItem( $li );
ok( $setii, "Wx::ListCtrl::SetItemInfo" );
}

##############################################################################
# Wx::ImageList
##############################################################################
{
my( $addbitmap, $addwithcolour, $addicon, $replico, $replbmp )
  = ( 0, 0, 0, 0, 0 );
hijack( 'Wx::ImageList::AddBitmap'         => sub { $addbitmap = 1 },
        'Wx::ImageList::AddWithColourMask' => sub { $addwithcolour = 1 },
        'Wx::ImageList::AddIcon'           => sub { $addicon = 1 },
        'Wx::ImageList::ReplaceIcon'       => sub { $replico = 1 },
        'Wx::ImageList::ReplaceBitmap'     => sub { $replbmp = 1 } );

my $img = Wx::Image->new( 16, 16 );
my( $bmp, $ico ) = ( Wx::Bitmap->new( $img ), Wx::GetWxPerlIcon( 1 ) );
my $imgl = Wx::ImageList->new( 16, 16 );

$imgl->Add( $bmp );
ok( $addbitmap, "Wx::ImageList::AddBitmap" );

$imgl->Add( $bmp, Wx::wxBLACK() );
ok( $addwithcolour, "Wx::ImageList::AddWithColourMask" );

$imgl->Add( $ico );
ok( $addicon, "Wx::ImageList::AddIcon" );

$imgl->Replace( 0, $bmp );
ok( $replbmp, "Wx::ImageList::ReplaceBitmap" );

$imgl->Replace( 1, $ico );
ok( $replico, "Wx::ImageList::ReplaceIcon" );
}

##############################################################################
# Wx::Menu
##############################################################################
{
my( $appmen, $appstr, $appite, $delite, $delid, $desite, $desid,
    $remite, $remid, $prepite, $prepstr, $insite, $insstr )
  = ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Menu::AppendSubMenu_'=> sub { $appmen = 1 },
        'Wx::Menu::AppendString'  => sub { $appstr = 1 },
        'Wx::Menu::AppendItem'    => sub { $appite = 1 },
        'Wx::Menu::DeleteItem'    => sub { $delite = 1 },
        'Wx::Menu::DeleteId'      => sub { $delid = 1 },
        'Wx::Menu::DestroyItem'   => sub { $desite = 1 },
        'Wx::Menu::DestroyId'     => sub { $desid = 1 },
        'Wx::Menu::RemoveItem'    => sub { $remite = 1 },
        'Wx::Menu::RemoveId'      => sub { $remid = 1 },
        'Wx::Menu::PrependString' => sub { $prepstr = 1 },
        'Wx::Menu::PrependItem'   => sub { $prepite = 1 },
        'Wx::Menu::InsertString'  => sub { $insstr = 1 },
        'Wx::Menu::InsertItem'    => sub { $insite = 1 } );

my $me = Wx::Menu->new;
my $me2 = Wx::Menu->new;

my $i1 = Wx::MenuItem->new( $me, 1, 'Foo' );
my $i2 = Wx::MenuItem->new( $me, 2, 'Bar' );
my $i3 = Wx::MenuItem->new( $me, 3, 'Baz' );
my $i4 = Wx::MenuItem->new( $me, 4, 'Baz' );

$me->Append( 11, 'My' );
ok( $appstr, "Wx::Menu::AppendString" );

$me->Append( 12, 'Sub', $me2 );
ok( $appmen, "Wx::Menu::AppendSubMenu_" );

$me->Append( $i1 );
ok( $appite, "Wx::Menu::AppendItem" );

$me->Delete( $i1 );
ok( $delite, "Wx::Menu::DeleteItem" );

$me->Delete( 12 );
ok( $delid, "Wx::Menu::DeleteId" );

$me->Append( $i2 ); $me->Append( $i3 );
$me->Append( 12, 'Fubar' ); $me->Append( 13, 'Fubar' );

$me->Destroy( $i2 );
ok( $desite, "Wx::Menu::DestroyItem" );

$me->Destroy( 12 );
ok( $desid, "Wx::Menu::DestroyId" );

$me->Remove( $i3 );
ok( $remite, "Wx::Menu::RemoveItem" );

$me->Remove( 13 );
ok( $remid, "Wx::Menu::RemoveId" );

$me->Prepend( $i3 );
ok( $prepite, "Wx::Menu::PrependItem" );

$me->Prepend( 15, 'Myself' );
ok( $prepstr, "Wx::Menu::PrependString" );

$me->Insert( 0, $i4 );
ok( $insite, "Wx::Menu::InsertItem" );

$me->Insert( 0, 17, 'Foo' );
ok( $insstr, "Wx::Menu::InsertString" );
}

##############################################################################
# Wx::RadioBox
##############################################################################
{
my( $wenable, $renable, $wgetlabel, $rgetlabel, $wsetlabel,
    $rsetlabel, $wshow, $rshow ) = ( 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Window::Enable'         => sub { $wenable = 1 },
        'Wx::RadioBox::EnableItem'   => sub { $renable = 1 },
        'Wx::Window::GetLabel'       => sub { $wgetlabel = 1 },
        'Wx::RadioBox::GetItemLabel' => sub { $rgetlabel = 1 },
        'Wx::Window::SetLabel'       => sub { $wsetlabel = 1 },
        'Wx::RadioBox::SetItemLabel' => sub { $rsetlabel = 1 },
        'Wx::Window::Show'           => sub { $wshow = 1 },
        'Wx::RadioBox::ShowItem'     => sub { $rshow = 1 } );

my $rb = Wx::RadioBox->new( $frame, -1, 'Foo', [-1,-1], [-1,-1],
                            [ qw(a b c) ] );

$rb->Enable( 1 );
ok( $wenable, "Wx::Window::Enable" );

$rb->Enable( 1, 1 );
ok( $renable, "Wx::RadioBox::EnableItem" );

$rb->GetLabel;
ok( $wgetlabel, "Wx::Window::GetLabel" );

$rb->GetLabel( 1 );
ok( $rgetlabel, "Wx::RadioBox::GetItemLabel" );

$rb->SetLabel( 'Foo' );
ok( $wsetlabel, "Wx::Window::SetLabel" );

$rb->SetLabel( 1, 'My' );
ok( $rsetlabel, "Wx::RadioBox::SetLabel" );

$rb->Show( 1 );
ok( $wshow, "Wx::Window::Show" );

$rb->Show( 1, 1 );
ok( $rshow, "Wx::RadioBox::ShowItem" );
}

##############################################################################
# Wx::Region
##############################################################################
{
my( $newempty, $newxywh, $newpp, $newrect, $cxywh, $cxy, $cpoint,
    $crect, $ixywh, $irect, $iregion, $srect, $sregion,
    $uxywh, $urect, $uregion, $xxywh, $xrect, $xregion )
  = ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Region::newEmpty'     => sub { $newempty = 1 },
        'Wx::Region::newXYWH'      => sub { $newxywh = 1 },
        'Wx::Region::newPP'        => sub { $newpp = 1 },
        'Wx::Region::newRect'      => sub { $newrect = 1 },
#        Wx::Region::newPolygon'   => sub { $newpolygon = 1 },
        'Wx::Region::ContainsXYWH'  => sub { $cxywh = 1 },
        'Wx::Region::ContainsXY'    => sub { $cxy = 1 },
        'Wx::Region::ContainsPoint' => sub { $cpoint = 1 },
        'Wx::Region::ContainsRect'  => sub { $crect = 1 },
        'Wx::Region::IntersectXYWH'   => sub { $ixywh = 1 },
        'Wx::Region::IntersectRect'   => sub { $irect = 1 },
        'Wx::Region::IntersectRegion' => sub { $iregion = 1 },
        'Wx::Region::SubtractRect'    => sub { $srect = 1 },
        'Wx::Region::SubtractRegion'  => sub { $sregion = 1 },
        'Wx::Region::UnionXYWH'   => sub { $uxywh = 1 },
        'Wx::Region::UnionRect'   => sub { $urect = 1 },
        'Wx::Region::UnionRegion' => sub { $uregion = 1 },
        'Wx::Region::XorXYWH'   => sub { $xxywh = 1 },
        'Wx::Region::XorRect'   => sub { $xrect = 1 },
        'Wx::Region::XorRegion' => sub { $xregion = 1 } );

Wx::Region->new;
ok( $newempty, "Wx::Region::newEmpty" );

Wx::Region->new( 1, 2, 3, 4 );
ok( $newxywh, "Wx::Region::newXYWH" );

Wx::Region->new( [0, 0], [50, 50] );
ok( $newpp, "Wx::Region::newPP" );

my $r = Wx::Region->new( Wx::Rect->new( 0, 0, 50, 50 ) );
ok( $newrect, "Wx::Region::newRect" );

$r->Contains( 0, 0, 1, 2 );
ok( $cxywh, "Wx::Region::ContainsXYWH" );

$r->Contains( 1, 2 );
ok( $cxy, "Wx::Region::ContainsXY" );

$r->Contains( [ 1, 2 ] );
ok( $cpoint, "Wx::Region::ContainsPoint" );

$r->Contains( Wx::Rect->new( 0, 1, 2, 3 ) );
ok( $crect, "Wx::Region::ContainsRect" );

$r->Intersect( 0, 1, 2, 3 );
ok( $ixywh, "Wx::Region::IntersectXYWH" );

$r->Intersect( Wx::Rect->new( 0, 1, 2, 3 ) );
ok( $irect, "Wx::Region::IntersectRect" );

$r->Intersect( Wx::Region->new( 0, 0, 50, 50 ) );
ok( $iregion, "Wx::Region::IntersectRegion" );

$r->Subtract( Wx::Rect->new( 0, 1, 2, 3 ) );
ok( $srect, "Wx::Region::SubtractRect" );

$r->Subtract( $r );
ok( $sregion, "Wx::Region::SubtractRegion" );

$r->Union( 0, 0, 50, 50 );
ok( $uxywh, "Wx::Region::UnionXYWH" );

$r->Union( Wx::Rect->new( Wx::Point->new( 0, 0 ), Wx::Size->new( 50, 50 ) ) );
ok( $urect, "Wx::Region::UnionRect" );

SKIP: {
  skip "Does not work with wxGTK 2.2", 1
    if Wx::wxGTK && Wx::wxVERSION < 2.003;

  $r->Union( $r );
  ok( $uregion, "Wx::Region::UnionRegion" );
}

$r->Xor( 0, 0, 1, 1 );
ok( $xxywh, "Wx::Region::XorXYWH" );

$r->Xor( Wx::Rect->new( 0, 0, 1, 2 ) );
ok( $xrect, "Wx::Region::XorRect" );

SKIP: {
  skip "Does not work with wxGTK 2.2", 1
    if Wx::wxGTK && Wx::wxVERSION < 2.003;

  $r->Xor( $r );
  ok( $xregion, "Wx::Region::XorRegion" );
}
}

##############################################################################
# Wx::Image
##############################################################################
{
my( $newnull, $newicon, $newbitmap, $newstreamt, $newstreamm,
    $newwh, $newdata, $newnametype, $newnamemime,
    $lsm, $lst, $lft, $lfm, $ssm, $sst, $sft, $sfm, $sfo )
  = ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Image::newNull'        => sub { $newnull = 1 },
        'Wx::Image::newIcon'        => sub { $newicon = 1 },
        'Wx::Image::newBitmap'      => sub { $newbitmap = 1 },
        'Wx::Image::newStreamType'  => sub { $newstreamt = 1 },
        'Wx::Image::newStreamMIME'  => sub { $newstreamm = 1 },
        'Wx::Image::newWH'          => sub { $newwh = 1 },
        'Wx::Image::newData'        => sub { $newdata = 1 },
        'Wx::Image::newNameType'    => sub { $newnametype = 1 },
        'Wx::Image::newNameMIME'    => sub { $newnamemime = 1 },
        'Wx::Image::LoadStreamType' => sub { $lst = 1 },
        'Wx::Image::LoadStreamMIME' => sub { $lsm = 1 },
        'Wx::Image::LoadFileType'   => sub { $lft = 1 },
        'Wx::Image::LoadFileMIME'   => sub { $lfm = 1 },
#        Wx::Image::SaveFileSType  => sub { $sst = 1 },
#        Wx::Image::SaveFileSMIME  => sub { $ssm = 1 },
#        Wx::Image::SaveFileType   => sub { $sft = 1 },
#        Wx::Image::SaveFileMIME   => sub { $sfm = 1 },
#        Wx::Image::SaveFileOnly   => sub { $sfo = 1 }
      );

my $op = '< wxpl.xpm';
Wx::Image->new;
ok( $newnull, "Wx::Image::newNull" );

Wx::Image->new( $icook );
ok( $newicon, "Wx::Image::newIcon" );

Wx::Image->new( $bmpok );
ok( $newbitmap, "Wx::Image::newBitmap" );

open IN, $op; binmode IN;
Wx::Image->new( *IN, Wx::wxBITMAP_TYPE_XPM() );
ok( $newstreamt, "Wx::Image::newStreamType" );

open IN, $op; binmode IN;
Wx::Image->new( *IN, 'image/xpm' );
ok( $newstreamm, "Wx::Image::newStreamMIME" );

Wx::Image->new( 1, 2 );
ok( $newwh, "Wx::Image::newWH" );

Wx::Image->new( 3, 4, ' ' x 3 x 4 x 3 );
ok( $newdata, "Wx::Image::newData" );

Wx::Image->new( 'wxpl.ico', Wx::wxBITMAP_TYPE_ICO() );
ok( $newnametype, "Wx::Image::newNameType" );

Wx::Image->new( 'wxpl.xpm', 'image/xpm' );
ok( $newnametype, "Wx::Image::newNameMIME" );

my $img = Wx::Image->new;
open IN, "wxpl.xpm"; binmode IN;
$img->LoadFile( \*IN, Wx::wxBITMAP_TYPE_XPM() );
ok( $lst, "Wx::Image::LoadStreamType" );

open IN, $op; binmode IN;
$img->LoadFile( \*IN, 'image/xpm' );
ok( $lsm, "Wx::Image::LoadStreamMIME" );

$img->LoadFile( 'wxpl.xpm', Wx::wxBITMAP_TYPE_XPM() );
ok( $lft, "Wx::Image::LoadFileType" );

$img->LoadFile( 'wxpl.xpm', 'image/xpm' );
ok( $lfm, "Wx::Image::LoadFileMIME" );
}

##############################################################################
# Wx::BitmapComboBox
##############################################################################
if( Wx::wxVERSION() >= 2.007002 ) {
my $bcb = Wx::BitmapComboBox->new( $frame, -1, 'a', [-1, -1], [-1, -1], [] );

test_override { $bcb->Append( 'a', $bmpok ) }
              'Wx::BitmapComboBox::AppendString';
test_override { $bcb->Append( 'b', $bmpok, \1 ) }
              'Wx::BitmapComboBox::AppendData';

test_override { $bcb->Insert( 'a', $bmpok, 1 ) }
              'Wx::BitmapComboBox::InsertString';
test_override { $bcb->Insert( 'b', $bmpok, 1, \1 ) }
              'Wx::BitmapComboBox::InsertData';
} else {
    ok( 1, 'skipped' ) for 1 .. 4;
}

##############################################################################
# Wx::ColourPickerCtrl
##############################################################################
if( Wx::wxVERSION() >= 2.007000 ) {
my $cpc = Wx::ColourPickerCtrl->new( $frame );

test_override { $cpc->SetColour( Wx::Colour->new( 'red' ) ) }
              'Wx::ColourPickerCtrl::SetColourColour';
test_override { $cpc->SetColour( 'red' ) }
              'Wx::ColourPickerCtrl::SetColourString';
} else {
    ok( 1, 'skipped' ) for 1 .. 2;
}

##############################################################################
# Wx::IconBundle
##############################################################################
{
my $ib = Wx::IconBundle->new;

test_override { Wx::IconBundle->new }
              'Wx::IconBundle::newEmpty';
test_override { Wx::IconBundle->new( 'wxpl.ico' ) }
              'Wx::IconBundle::newFile';
test_override { Wx::IconBundle->new( $icook ) }
              'Wx::IconBundle::newIcon';

test_override { $ib->AddIcon( 'wxpl.ico' ) }
              'Wx::IconBundle::AddIconFile';
test_override { $ib->AddIcon( $icook ) }
              'Wx::IconBundle::AddIconIcon';

test_override { $ib->GetIcon( 16 ) }
              'Wx::IconBundle::GetIconCoord';
test_override { $ib->GetIcon( [ 16, 16 ] ) }
              'Wx::IconBundle::GetIconSize';

if( Wx::wxVERSION() >= 2.009 ) {
    test_override { $ib->GetIconOfExactSize( 16 ) }
                  'Wx::IconBundle::GetIconOfExactSizeCoord';
    test_override { $ib->GetIconOfExactSize( [ 16, 16 ] ) }
                  'Wx::IconBundle::GetIconOfExactSizeSize';
} else {
    ok( 1, 'skipped' );
    ok( 1, 'skipped' );
}
}

##############################################################################
# Wx::HVScrollHelper
##############################################################################
if( Wx::wxVERSION() >= 2.009 ) {
my $sw = Wx::PlHVScrolledWindow->new( $frame, -1 );
$sw->SetRowColumnCount( 10, 10 );

test_override { $sw->ScrollToRowColumn( 1, 1 ) }
              'Wx::HVScrolledWindow::ScrollToRowColumnRC';
test_override { $sw->ScrollToRowColumn( Wx::Position->new( 2, 2 ) ) }
              'Wx::HVScrolledWindow::ScrollToRowColumnPosition';

test_override { $sw->RefreshRowColumn( 1, 1 ) }
              'Wx::HVScrolledWindow::RefreshRowColumnRC';
test_override { $sw->RefreshRowColumn( Wx::Position->new( 2, 2 ) ) }
              'Wx::HVScrolledWindow::RefreshRowColumnPosition';

test_override { $sw->RefreshRowsColumns( 1, 1, 3, 3 ) }
              'Wx::HVScrolledWindow::RefreshRowsColumnsRC';
test_override { $sw->RefreshRowsColumns( Wx::Position->new( 2, 2 ),
                                         Wx::Position->new( 4, 4 ) ) }
              'Wx::HVScrolledWindow::RefreshRowsColumnsPosition';

test_override { $sw->VirtualHitTest( 10, 10 ) }
              'Wx::HVScrolledWindow::VirtualHitTestXY';
test_override { $sw->VirtualHitTest( [ 10, 10 ] ) }
              'Wx::HVScrolledWindow::VirtualHitTestPoint';

test_override { $sw->IsVisible( 1, 1 ) }
              'Wx::HVScrolledWindow::IsVisibleRC';
test_override { $sw->IsVisible( Wx::Position->new( 2, 2 ) ) }
              'Wx::HVScrolledWindow::IsVisiblePosition';
} else {
    ok( 1, 'skipped' ) for 1 .. 10;
}

$frame->Destroy;
} );

##############################################################################
# Wx::Buffered{Paint}DC
##############################################################################
{
my( $newd, $newb, $news, $initb, $inits ) = ( 0, 0, 0, 0, 0, );
hijack( 'Wx::BufferedDC::newDefault'     => sub { $newd = 1 },
        'Wx::BufferedDC::newBitmap'      => sub { $newb = 1 },
        'Wx::BufferedDC::newSize'        => sub { $news = 1 },
        'Wx::BufferedDC::InitBitmap'     => sub { $initb = 1 },
        'Wx::BufferedDC::InitSize'       => sub { $inits = 1 },
        );
my $frame = Wx::Frame->new( undef, -1, 'Frame' );
my $cdc = Wx::ClientDC->new( $frame );
my $dc;

$dc = Wx::BufferedDC->new;
ok( $newd, 'Wx::BufferedDC::newDefault' );

my $backing = Wx::Bitmap->new( 20, 20 );
$dc = Wx::BufferedDC->new( $cdc, $backing );
ok( $newb, 'Wx::BufferedDC::newBitmap' );

$dc = Wx::BufferedDC->new( $cdc, [20, 20] );
ok( $news, 'Wx::BufferedDC::newSize' );

SKIP: {
    skip 'Broken inheritance for 2.6.x', 2 if ref $dc eq 'Wx::MemoryDC';
    skip 'Does not work with 2.7.1', 2 if Wx::wxVERSION < 2.007002;

    $dc = Wx::BufferedDC->new;
    my $backing = Wx::Bitmap->new( 200, 100 );
    $dc->Init( $cdc, $backing );
    ok( $initb, 'Wx::BufferedDC::InitBitmap' );

    $dc = Wx::BufferedDC->new;
    $dc->Init( $cdc, [200, 100] );
    ok( $inits, 'Wx::BufferedDC::InitSize' );
}

undef $dc;
undef $cdc;
}

##############################################################################
# Wx::GridBagSizer
##############################################################################
{
my $gbs = Wx::GridBagSizer->new;
my $win = Wx::Frame->new( undef, -1, 'Foo' );
my $sz = Wx::BoxSizer->new( Wx::wxVERTICAL() );

test_override { $gbs->Add( $win, Wx::GBPosition->new( 0, 0 ),
                           Wx::GBSpan->new( 1, 1 ) ) }
              'Wx::GridBagSizer::AddWindow';
test_override { $gbs->Add( $sz, Wx::GBPosition->new( 0, 1 ),
                           Wx::GBSpan->new( 1, 1 ) ) }
              'Wx::GridBagSizer::AddSizer';
test_override { $gbs->Add( 20, 20, Wx::GBPosition->new( 0, 2 ),
                           Wx::GBSpan->new( 1, 1 ) ) }
              'Wx::GridBagSizer::AddSpace';

test_override { $gbs->GetItemPosition( $win ) }
              'Wx::GridBagSizer::GetItemPositionWindow';
test_override { $gbs->GetItemPosition( $sz ) }
              'Wx::GridBagSizer::GetItemPositionSizer';
test_override { $gbs->GetItemPosition( 0 ) }
              'Wx::GridBagSizer::GetItemPositionIndex';

test_override { $gbs->SetItemPosition( $win, Wx::GBPosition->new( 1, 0 ) ) }
              'Wx::GridBagSizer::SetItemPositionWindow';
test_override { $gbs->SetItemPosition( $sz, Wx::GBPosition->new( 1, 1 ) ) }
              'Wx::GridBagSizer::SetItemPositionSizer';
test_override { $gbs->SetItemPosition( 2, Wx::GBPosition->new( 1, 2 ) ) }
              'Wx::GridBagSizer::SetItemPositionIndex';

test_override { $gbs->GetItemSpan( $win ) }
              'Wx::GridBagSizer::GetItemSpanWindow';
test_override { $gbs->GetItemSpan( $sz ) }
              'Wx::GridBagSizer::GetItemSpanSizer';
test_override { $gbs->GetItemSpan( 0 ) }
              'Wx::GridBagSizer::GetItemSpanIndex';

test_override { $gbs->FindItem( $win ) }
              'Wx::GridBagSizer::FindItemWindow';
test_override { $gbs->FindItem( $sz ) }
              'Wx::GridBagSizer::FindItemSizer';

test_override { $gbs->SetItemSpan( $win, Wx::GBSpan->new( 2, 1 ) ) }
              'Wx::GridBagSizer::SetItemSpanWindow';
test_override { $gbs->SetItemSpan( $sz, Wx::GBSpan->new( 2, 1 ) ) }
              'Wx::GridBagSizer::SetItemSpanSizer';
test_override { $gbs->SetItemSpan( 2, Wx::GBSpan->new( 2, 1 ) ) }
              'Wx::GridBagSizer::SetItemSpanIndex';

my $gbi = $gbs->GetItem( 0 );

test_override { $gbi->Intersects( $gbi ) }
              'Wx::GBSizerItem::IntersectsItem';
test_override { $gbi->Intersects( Wx::GBPosition->new( 0, 0 ),
                                  Wx::GBSpan->new( 1, 1 ) ) }
              'Wx::GBSizerItem::IntersectsPosition';

test_override { $gbs->CheckForIntersection( $gbi ) }
              'Wx::GridBagSizer::CheckForIntersectionItem';
test_override { $gbs->CheckForIntersection( Wx::GBPosition->new( 0, 0 ),
                                            Wx::GBSpan->new( 1, 1 ) ) }
              'Wx::GridBagSizer::CheckForIntersectionPos';
}

##############################################################################
# Wx::Sizer/Wx::SizerItem
##############################################################################
{
my( $showw, $shows, $showi, $srfloat, $srwh, $srsize, $addsiz,
    $addwin, $addspa, $inssiz, $inswin, $insspa, $presiz, $prewin, $prespa,
    $remwin, $remsiz, $remnth, $smsxy, $smssize, $siswin, $sissiz, $sisnth ) =
  ( 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 );
hijack( 'Wx::Sizer::ShowWindow'       => sub { $showw = 1 },
        'Wx::Sizer::ShowSizer'        => sub { $shows = 1 },
#        'Wx::Sizer::ShowItem'         => sub { $showi = 1 },
        'Wx::SizerItem::SetRatioFloat' => sub { $srfloat = 1 },
        'Wx::SizerItem::SetRatioWH'   => sub { $srwh = 1 },
        'Wx::SizerItem::SetRatioSize' => sub { $srsize = 1 },
        'Wx::Sizer::AddSizer'         => sub { $addsiz = 1 },
        'Wx::Sizer::AddWindow'        => sub { $addwin = 1 },
        'Wx::Sizer::AddSpace'         => sub { $addspa = 1 },
        'Wx::Sizer::InsertSizer'      => sub { $inssiz = 1 },
        'Wx::Sizer::InsertWindow'     => sub { $inswin = 1 },
        'Wx::Sizer::InsertSpace'      => sub { $insspa = 1 },
        'Wx::Sizer::PrependSizer'     => sub { $presiz = 1 },
        'Wx::Sizer::PrependWindow'    => sub { $prewin = 1 },
        'Wx::Sizer::PrependSpace'     => sub { $prespa = 1 },
        ( $Wx::wxVERSION < 2.007 ?
          ( 'Wx::Sizer::RemoveWindow'     => sub { $remwin = 1 } ) :
          () ),
        'Wx::Sizer::RemoveSizer'      => sub { $remsiz = 1 },
        'Wx::Sizer::RemoveNth'        => sub { $remnth = 1 },
        'Wx::Sizer::SetMinSizeXY'     => sub { $smsxy  = 1 },
        'Wx::Sizer::SetMinSizeSize'   => sub { $smssize= 1 },
        'Wx::Sizer::SetItemMinSizeWindow' => sub { $siswin = 1 },
        'Wx::Sizer::SetItemMinSizeSizer'  => sub { $sissiz = 1 },
        'Wx::Sizer::SetItemMinSizeNth'    => sub { $sisnth = 1 },
       );

my $win = Wx::Frame->new( undef, -1, 'Foo' );
my $siz = Wx::BoxSizer->new( Wx::wxVERTICAL() );
$siz->Add( Wx::BoxSizer->new( Wx::wxVERTICAL() ) );
$win->SetSizer( $siz );

$siz->Show( $win );
ok( $showw, 'Wx::Sizer::ShowWindow' );

$siz->Show( $siz, 1 );
ok( $shows, 'Wx::Sizer::ShowSizer' );

#$siz->Show( 0 );
#ok( $showi, 'Wx::Sizer::ShowItem' );

sub siz1 { Wx::BoxSizer->new( Wx::wxHORIZONTAL() ) }
sub win1 { Wx::Window->new( $win, -1 ) }

my $item = ( $siz->GetChildren )[0];

$item->SetRatio( 1.234 );
ok( $srfloat, 'Wx::SizerItem::SetRatioFloat' );

$item->SetRatio( 1, 2 );
ok( $srfloat, 'Wx::SizerItem::SetRatioWH' );

$item->SetRatio( [ 1, 3 ] );
ok( $srfloat, 'Wx::SizerItem::SetRatioSize' );

$siz->Add( siz1 );
$siz->Add( siz1, 1, 1, 1, 1 );
ok( $addsiz, 'Wx::Sizer::AddSizer' );

$siz->Add( win1 );
$siz->Add( win1, 1, 1, 1, 1 );
ok( $addwin, 'Wx::Sizer::AddWindow' );

$siz->Add( 100, 100 );
$siz->Add( 100, 100, 1, 1, 1, 1 );
ok( $addspa, 'Wx::Sizer::AddSpace' );

$siz->Insert( 2, siz1 );
$siz->Insert( 2, siz1, 1, 1, 1, 1 );
ok( $inssiz, 'Wx::Sizer::InsertSizer' );

$siz->Insert( 3, win1 );
$siz->Insert( 3, win1, 1, 1, 1, 1 );
ok( $inswin, 'Wx::Sizer::InsertWindow' );

$siz->Insert( 4, 100, 100 );
$siz->Insert( 4, 100, 100, 1, 1, 1, 1 );
ok( $insspa, 'Wx::Sizer::InsertSpace' );

$siz->Prepend( siz1 );
$siz->Prepend( siz1, 1, 1, 1, 1 );
ok( $presiz, 'Wx::Sizer::PrependSizer' );

$siz->Prepend( win1 );
$siz->Prepend( win1, 1, 1, 1, 1 );
ok( $prewin, 'Wx::Sizer::PrependWindow' );

$siz->Prepend( 100, 100 );
$siz->Prepend( 100, 100, 1, 1, 1, 1 );
ok( $prespa, 'Wx::Sizer::PrependSpace' );

$siz->Remove( 3 );
ok( $remnth, 'Wx::Sizer::RemoveNth' );

$siz->Remove( siz1 );
ok( $remsiz, 'Wx::Sizer::RemoveSizer' );

if( $Wx::wxVERSION < 2.007 ) {
    $siz->Remove( win1 );
    ok( $remwin, 'Wx::Sizer::RemoveWindow' );
} else {
    ok( 1, 'dummy' );
}

$siz->SetItemMinSize( win1, 100, 100 );
ok( $siswin, 'Wx::Sizer::SetItemMinSizeWindow' );

$siz->SetItemMinSize( siz1, 100, 100 );
ok( $sissiz, 'Wx::Sizer::SetItemMinSizeSizer' );

$siz->SetItemMinSize( 4, 100, 100 );
ok( $sisnth, 'Wx::Sizer::SetItemMinSizeNth' );

$siz->SetMinSize( 100, 100 );
ok( $smsxy, 'Wx::Sizer::SetMinSizeXY' );

$siz->SetMinSize( [ 100, 100 ] );
ok( $smssize, 'Wx::Sizer::SetMinSizeSize' );

$win->Destroy;
}

# local variables:
# mode: cperl
# end:
