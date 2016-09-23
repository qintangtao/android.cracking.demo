.class public Lcom/market2345/clean/shortcut/Solid;
.super Landroid/view/View;
.source "Solid.java"


# instance fields
.field private aboveWavePaint:Landroid/graphics/Paint;

.field private blowWavePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/clean/shortcut/Solid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 26
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/Solid;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Solid;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/Solid;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/market2345/clean/shortcut/Solid;->aboveWavePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public setAboveWavePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "aboveWavePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/clean/shortcut/Solid;->aboveWavePaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method

.method public setBlowWavePaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "blowWavePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/market2345/clean/shortcut/Solid;->blowWavePaint:Landroid/graphics/Paint;

    .line 38
    return-void
.end method
