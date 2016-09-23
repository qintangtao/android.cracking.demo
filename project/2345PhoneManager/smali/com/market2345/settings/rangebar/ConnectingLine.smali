.class Lcom/market2345/settings/rangebar/ConnectingLine;
.super Ljava/lang/Object;
.source "ConnectingLine.java"


# instance fields
.field private final mConnectingLineWeight:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mStrokePaint1:Landroid/graphics/Paint;

.field private final mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;FFII)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "y"    # F
    .param p3, "connectingLineWeight"    # F
    .param p4, "connectingLineColor"    # I
    .param p5, "connectingLineStrokeColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1, p3}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget-object v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 71
    iput p2, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    .line 72
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/market2345/settings/rangebar/Thumb;Lcom/market2345/settings/rangebar/Thumb;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftThumb"    # Lcom/market2345/settings/rangebar/Thumb;
    .param p3, "rightThumb"    # Lcom/market2345/settings/rangebar/Thumb;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {p2}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v1

    iget v2, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    invoke-virtual {p3}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v3

    iget v4, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    iget-object v5, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p2}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v1

    iget v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    iget v2, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    sub-float v2, v0, v6

    invoke-virtual {p3}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v3

    iget v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    sub-float v4, v0, v6

    iget-object v5, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p2}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v1

    iget v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    iget v2, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    div-float/2addr v2, v7

    sub-float/2addr v0, v2

    add-float v2, v0, v6

    invoke-virtual {p3}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v3

    iget v0, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mConnectingLineWeight:F

    div-float/2addr v4, v7

    sub-float/2addr v0, v4

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/market2345/settings/rangebar/ConnectingLine;->mStrokePaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    return-void
.end method
