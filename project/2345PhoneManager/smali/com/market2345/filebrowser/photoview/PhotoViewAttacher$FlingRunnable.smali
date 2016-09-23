.class Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

.field final synthetic this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    invoke-static {p2}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;)Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    .line 1139
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    .line 1144
    return-void
.end method

.method public fling(IIII)V
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 1149
    .local v11, "rect":Landroid/graphics/RectF;
    if-nez v11, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget v0, v11, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1157
    .local v1, "startX":I
    int-to-float v0, p1

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 1159
    const/4 v5, 0x0

    .line 1160
    .local v5, "minX":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1167
    .local v6, "maxX":I
    :goto_1
    iget v0, v11, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1168
    .local v2, "startY":I
    int-to-float v0, p2

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 1170
    const/4 v7, 0x0

    .line 1171
    .local v7, "minY":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1177
    .local v8, "maxY":I
    :goto_2
    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 1178
    iput v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 1180
    if-ne v1, v6, :cond_2

    if-eq v2, v8, :cond_0

    .line 1182
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 1164
    .end local v2    # "startY":I
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_3
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_1

    .line 1175
    .restart local v2    # "startY":I
    :cond_4
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1195
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v1

    .line 1199
    .local v1, "newX":I
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v3}, Lcom/market2345/filebrowser/photoview/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v2

    .line 1200
    .local v2, "newY":I
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    # getter for: Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->access$100(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1201
    iget-object v3, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    # invokes: Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V
    invoke-static {v3, v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->access$300(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 1202
    iput v1, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 1203
    iput v2, p0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 1205
    invoke-static {v0, p0}, Lcom/market2345/filebrowser/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
