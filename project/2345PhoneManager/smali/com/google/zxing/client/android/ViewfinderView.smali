.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static CORNER_WIDTH:I = 0x0

.field private static final CORNER_WIDTH_DP:I = 0x4

.field private static final MIDDLE_LINE_PADDING:I = 0x5

.field private static final MIDDLE_LINE_WIDTH:I = 0x6

.field private static final OPAQUE:I = 0xff

.field private static SCREENRATE:I = 0x0

.field private static final SCREENRATE_DP:I = 0x12

.field private static SPEEN_DISTANCE:I = 0x0

.field private static final SPEEN_DISTANCE_DP:I = 0x3

.field private static final TEXT_PADDING_TOP:I = 0x1e

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field isFirst:Z

.field private lastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    .line 146
    const/high16 v1, 0x41900000    # 18.0f

    sget v2, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    .line 147
    const/high16 v1, 0x40400000    # 3.0f

    sget v2, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/google/zxing/client/android/ViewfinderView;->SPEEN_DISTANCE:I

    .line 148
    const/high16 v1, 0x40800000    # 4.0f

    sget v2, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    .line 153
    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    .line 155
    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 156
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 157
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 284
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 285
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 271
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 272
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/ViewfinderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->init(Landroid/content/Context;)Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 164
    .local v12, "frame":Landroid/graphics/Rect;
    if-nez v12, :cond_0

    .line 266
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->isFirst:Z

    if-nez v2, :cond_1

    .line 172
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->isFirst:Z

    .line 173
    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    .line 174
    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideBottom:I

    .line 178
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    .line 179
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    .line 181
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v19

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 188
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v2

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget v3, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    iget v2, v12, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 205
    iget v2, v12, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sget v6, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    iget v2, v12, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget v2, v12, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/google/zxing/client/android/ViewfinderView;->CORNER_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/zxing/client/android/ViewfinderView;->SCREENRATE:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    sget v3, Lcom/google/zxing/client/android/ViewfinderView;->SPEEN_DISTANCE:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    .line 214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_4

    .line 216
    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    .line 218
    :cond_4
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 219
    .local v15, "lineRect":Landroid/graphics/Rect;
    iget v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v15, Landroid/graphics/Rect;->left:I

    .line 220
    iget v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v15, Landroid/graphics/Rect;->right:I

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    iput v2, v15, Landroid/graphics/Rect;->top:I

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->slideTop:I

    add-int/lit8 v2, v2, 0x12

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02026d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 231
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 233
    .local v18, "textWidth":F
    move/from16 v0, v19

    int-to-float v2, v0

    sub-float v2, v2, v18

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/high16 v4, 0x41f00000    # 30.0f

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 236
    .local v11, "currentPossible":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 237
    .local v10, "currentLast":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 252
    :cond_5
    if-eqz v10, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x7f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/zxing/ResultPoint;

    .line 258
    .local v16, "point":Lcom/google/zxing/ResultPoint;
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3fc00000    # 1.5f

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 243
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "point":Lcom/google/zxing/ResultPoint;
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/Collection;

    .line 244
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/Collection;

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/zxing/ResultPoint;

    .line 249
    .restart local v16    # "point":Lcom/google/zxing/ResultPoint;
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    sget v5, Lcom/google/zxing/client/android/ViewfinderView;->density:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 263
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "point":Lcom/google/zxing/ResultPoint;
    :cond_7
    const-wide/16 v4, 0xa

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method
