.class public Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;,
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;,
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;

.field private pager:Lcom/market2345/util/PagedView;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;

    .line 76
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    .line 78
    const/4 v2, 0x0

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 84
    const v2, -0x99999a

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    .line 86
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    .line 88
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    .line 90
    iput-boolean v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->shouldExpand:Z

    .line 92
    iput-boolean v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    .line 94
    const/16 v2, 0x34

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    .line 96
    iput v7, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    .line 98
    iput v7, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    .line 100
    iput v8, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    .line 102
    const/16 v2, 0x18

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    .line 104
    iput v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerWidth:I

    .line 106
    iput v8, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    .line 108
    const v2, 0x7f070083

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 112
    iput v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 114
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->lastScrollX:I

    .line 116
    const v2, 0x7f02004c

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 134
    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 135
    invoke-virtual {p0, v5}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 137
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 138
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 144
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    .line 145
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    .line 146
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    .line 147
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    .line 148
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    .line 149
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerWidth:I

    .line 150
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v7, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    .line 154
    sget-object v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    .line 157
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    sget-object v2, Lcom/market2345/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    .line 166
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    .line 167
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    .line 168
    const/4 v2, 0x4

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    .line 169
    const/4 v2, 0x6

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    .line 170
    const/4 v2, 0x7

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    .line 171
    const/16 v2, 0x8

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    .line 172
    const/16 v2, 0xa

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 173
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->shouldExpand:Z

    .line 174
    const/16 v2, 0x9

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    .line 175
    iget-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 184
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    .prologue
    .line 48
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)Lcom/market2345/util/PagedView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pager:Lcom/market2345/util/PagedView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)F
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    .prologue
    .line 48
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    return v0
.end method

.method static synthetic access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles(I)V

    return-void
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 287
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 292
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 297
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 276
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 280
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 282
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 389
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 396
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 398
    :cond_2
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 401
    :cond_3
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 403
    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->lastScrollX:I

    .line 404
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 6

    .prologue
    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 321
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 324
    check-cast v1, Landroid/widget/TextView;

    .line 325
    .local v1, "tab":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 327
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 333
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 335
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 314
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateTabStyles(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v3, :cond_3

    .line 352
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 354
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 356
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 358
    check-cast v1, Landroid/widget/TextView;

    .line 359
    .local v1, "tab":Landroid/widget/TextView;
    if-ne v0, p1, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    :goto_1
    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 372
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    .line 374
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 349
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 378
    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 384
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 219
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pager:Lcom/market2345/util/PagedView;

    invoke-virtual {v0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    .line 231
    const-string v0, "\u7cbe\u54c1"

    invoke-direct {p0, v2, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    const-string v1, "\u6e38\u620f"

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 233
    const/4 v0, 0x2

    const-string v1, "\u8f6f\u4ef6"

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 234
    const/4 v0, 0x3

    const-string v1, "\u5206\u7c7b"

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 235
    const/4 v0, 0x4

    const-string v1, "\u6392\u884c"

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 238
    invoke-direct {p0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles(I)V

    .line 239
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 270
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 414
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 421
    .local v7, "height":I
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 422
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 426
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    if-gez v0, :cond_2

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 434
    .local v6, "currentTab":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v8, v0

    .line 435
    .local v8, "lineLeft":F
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 437
    .local v3, "lineRight":F
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 440
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 441
    .local v9, "nextTab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v10, v0

    .line 442
    .local v10, "nextTabLeft":F
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v11, v0

    .line 444
    .local v11, "nextTabRight":F
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v0, v10

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v2, v12, v2

    mul-float/2addr v2, v8

    add-float v1, v0, v2

    .line 445
    .end local v8    # "lineLeft":F
    .local v1, "lineLeft":F
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v0, v11

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v2, v12, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 448
    .end local v9    # "nextTab":Landroid/view/View;
    .end local v10    # "nextTabLeft":F
    .end local v11    # "nextTabRight":F
    :goto_1
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v1    # "lineLeft":F
    .restart local v8    # "lineLeft":F
    :cond_3
    move v1, v8

    .end local v8    # "lineLeft":F
    .restart local v1    # "lineLeft":F
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 741
    move-object v0, p1

    check-cast v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;

    .line 742
    .local v0, "savedState":Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 743
    iget v1, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    .line 744
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->requestLayout()V

    .line 745
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 750
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 751
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 752
    .local v0, "savedState":Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 753
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 679
    iput-boolean p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->textAllCaps:Z

    .line 680
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    .line 614
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 615
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerColor:I

    .line 620
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 621
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->dividerPadding:I

    .line 642
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 643
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 568
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    .line 569
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 570
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorColor:I

    .line 575
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 576
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->indicatorHeight:I

    .line 586
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 587
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 212
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 652
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollOffset:I

    .line 653
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 654
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->shouldExpand:Z

    .line 664
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->requestLayout()V

    .line 665
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 719
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 720
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 729
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabPadding:I

    .line 730
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 731
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 695
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    .line 696
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 697
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextColor:I

    .line 702
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 703
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 684
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTextSize:I

    .line 685
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 686
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 712
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 713
    iput p2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 714
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles()V

    .line 715
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    .line 597
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 598
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineColor:I

    .line 603
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 604
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 630
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->underlineHeight:I

    .line 631
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 632
    return-void
.end method

.method public setViewPager(Lcom/market2345/util/PagedView;)V
    .locals 1
    .param p1, "pager"    # Lcom/market2345/util/PagedView;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pager:Lcom/market2345/util/PagedView;

    .line 204
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Lcom/market2345/util/PagedView;->setPageSwitchListener(Lcom/market2345/util/PagedView$PageSwitchListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 207
    return-void
.end method
