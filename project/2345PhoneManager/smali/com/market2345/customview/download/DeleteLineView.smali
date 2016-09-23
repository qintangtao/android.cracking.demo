.class public Lcom/market2345/customview/download/DeleteLineView;
.super Landroid/widget/TextView;
.source "DeleteLineView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/market2345/customview/download/DeleteLineView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/market2345/customview/download/DeleteLineView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/market2345/customview/download/DeleteLineView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/customview/download/DeleteLineView;->mPaint:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p0}, Lcom/market2345/customview/download/DeleteLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020311

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/download/DeleteLineView;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/market2345/customview/download/DeleteLineView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/market2345/customview/download/DeleteLineView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/market2345/customview/download/DeleteLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    :cond_0
    return-void
.end method
