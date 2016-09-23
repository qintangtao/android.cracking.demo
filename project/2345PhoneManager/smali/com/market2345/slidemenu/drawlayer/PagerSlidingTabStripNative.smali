.class public Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStripNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;,
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;,
        Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$IconTabProvider;
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

.field private itemPadding:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private normalTextColor:Landroid/content/res/ColorStateList;

.field private final pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private selectedTextColor:I

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

.field private titleTabWdith:I

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->ATTRS:[I

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
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v8, 0x1a000000

    const/16 v7, 0xc

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;

    .line 76
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    .line 78
    const/4 v2, 0x0

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    .line 84
    const v2, -0x99999a

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    .line 86
    iput v8, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    .line 88
    iput v8, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    .line 90
    iput-boolean v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    .line 92
    iput-boolean v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    .line 94
    const/16 v2, 0x34

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    .line 96
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    .line 98
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    .line 100
    iput v7, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    .line 102
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->itemPadding:I

    .line 104
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->titleTabWdith:I

    .line 106
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    .line 108
    iput v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerWidth:I

    .line 110
    iput v7, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    .line 112
    iput v8, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->selectedTextColor:I

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->normalTextColor:Landroid/content/res/ColorStateList;

    .line 116
    const v2, 0x7f070085

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTypeface:Landroid/graphics/Typeface;

    .line 120
    iput v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTypefaceStyle:I

    .line 122
    iput v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->lastScrollX:I

    .line 124
    const v2, 0x7f02004c

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    .line 139
    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setFillViewport(Z)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setWillNotDraw(Z)V

    .line 142
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    .line 143
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 149
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    .line 150
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    .line 151
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    .line 152
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    .line 153
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    .line 154
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerWidth:I

    .line 155
    const/4 v2, 0x2

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    .line 159
    sget-object v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    .line 162
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    sget-object v2, Lcom/market2345/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    .line 172
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    .line 173
    const/4 v2, 0x2

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    .line 174
    const/4 v2, 0x3

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->selectedTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->selectedTextColor:I

    .line 175
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->normalTextColor:Landroid/content/res/ColorStateList;

    .line 176
    const/4 v2, 0x4

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    .line 177
    const/4 v2, 0x6

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    .line 178
    const/4 v2, 0x7

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    .line 179
    const/16 v2, 0x8

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    .line 180
    const/16 v2, 0xa

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    .line 181
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    .line 182
    const/16 v2, 0x9

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    .line 183
    iget-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    .line 188
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 198
    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->locale:Ljava/util/Locale;

    .line 201
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .prologue
    .line 48
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;II)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;F)F
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p1, "x1"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles(I)V

    return-void
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 271
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, "tab":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addTab(ILandroid/view/View;)V

    .line 276
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "tab"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 280
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "tab":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 264
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 265
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addTab(ILandroid/view/View;)V

    .line 267
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 359
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    if-nez v1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 365
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 366
    :cond_2
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 369
    :cond_3
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 370
    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->lastScrollX:I

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 6

    .prologue
    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    if-ge v0, v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 300
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 304
    check-cast v1, Landroid/widget/TextView;

    .line 305
    .local v1, "tab":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 307
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 312
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 313
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 296
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 320
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private updateTabStyles(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    if-ge v0, v3, :cond_4

    .line 327
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 329
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 332
    check-cast v1, Landroid/widget/TextView;

    .line 333
    .local v1, "tab":Landroid/widget/TextView;
    if-ne v0, p1, :cond_2

    .line 334
    iget v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->selectedTextColor:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    if-eqz v3, :cond_1

    .line 346
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_3

    .line 347
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 325
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .restart local v1    # "tab":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->normalTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->normalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 349
    :cond_3
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 355
    .end local v1    # "tab":Landroid/widget/TextView;
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$IconTabProvider;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addIconTab(II)V

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 236
    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->mCurrentPosition:I

    invoke-direct {p0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles(I)V

    .line 237
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;

    invoke-direct {v2, p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 255
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 378
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getHeight()I

    move-result v7

    .line 388
    .local v7, "height":I
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getPaddingLeft()I

    move-result v1

    add-int v13, v0, v1

    .line 390
    .local v13, "offset":I
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    const/4 v1, 0x0

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v13

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 395
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    if-gez v0, :cond_2

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 402
    .local v6, "currentTab":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v8, v0

    .line 403
    .local v8, "lineLeft":F
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v9, v0

    .line 405
    .local v9, "lineRight":F
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 407
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 408
    .local v10, "nextTab":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v11, v0

    .line 409
    .local v11, "nextTabLeft":F
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v12, v0

    .line 411
    .local v12, "nextTabRight":F
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    mul-float/2addr v0, v11

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float v8, v0, v1

    .line 412
    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    mul-float/2addr v0, v12

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v9

    add-float v9, v0, v1

    .line 415
    .end local v10    # "nextTab":Landroid/view/View;
    .end local v11    # "nextTabLeft":F
    .end local v12    # "nextTabRight":F
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getPaddingLeft()I

    move-result v14

    .line 417
    .local v14, "paddingLeft":I
    int-to-float v0, v14

    add-float v1, v8, v0

    iget v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v0, v14

    add-float v3, v9, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 610
    move-object v0, p1

    check-cast v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;

    .line 611
    .local v0, "savedState":Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;
    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 612
    iget v1, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;->currentPosition:I

    iput v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    .line 613
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->requestLayout()V

    .line 614
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 618
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 619
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 620
    .local v0, "savedState":Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;
    iget v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I

    iput v2, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$SavedState;->currentPosition:I

    .line 621
    return-object v0
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 559
    iput-boolean p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->textAllCaps:Z

    .line 560
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    .line 506
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 507
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerColor:I

    .line 511
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 512
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 528
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->dividerPadding:I

    .line 529
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 530
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    .line 469
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 470
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorColor:I

    .line 474
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 475
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->indicatorHeight:I

    .line 483
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 484
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 217
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollOffset:I

    .line 538
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 539
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0
    .param p1, "shouldExpand"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->shouldExpand:Z

    .line 547
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->requestLayout()V

    .line 548
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 592
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabBackgroundResId:I

    .line 593
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0
    .param p1, "paddingPx"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabPadding:I

    .line 601
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 602
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    .line 573
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 574
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextColor:I

    .line 578
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 579
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSizePx"    # I

    .prologue
    .line 563
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTextSize:I

    .line 564
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 565
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 586
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTypeface:Landroid/graphics/Typeface;

    .line 587
    iput p2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabTypefaceStyle:I

    .line 588
    invoke-direct {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles()V

    .line 589
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 491
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    .line 492
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 493
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineColor:I

    .line 497
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 498
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->underlineHeight:I

    .line 520
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 521
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;

    .line 206
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pageListener:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 212
    invoke-virtual {p0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->notifyDataSetChanged()V

    .line 213
    return-void
.end method
