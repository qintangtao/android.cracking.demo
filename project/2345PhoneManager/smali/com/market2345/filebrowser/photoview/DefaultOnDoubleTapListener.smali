.class public Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p1, "photoViewAttacher"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->setPhotoViewAttacher(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 83
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-nez v4, :cond_0

    .line 84
    const/4 v3, 0x0

    .line 110
    :goto_0
    return v3

    .line 88
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    .line 89
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 90
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 92
    .local v2, "y":F
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    iget-object v5, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    .line 105
    .end local v0    # "scale":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :catch_0
    move-exception v4

    goto :goto_0

    .line 96
    .restart local v0    # "scale":F
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_1
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    iget-object v5, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    iget-object v5, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 47
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-nez v7, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v6

    .line 50
    :cond_1
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 52
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 54
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 56
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 61
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v3, v6, v7

    .line 65
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v5, v6, v7

    .line 67
    .local v5, "yResult":F
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v6}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 68
    const/4 v6, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :cond_2
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 74
    iget-object v7, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v7}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v7, v1, v8, v9}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public setPhotoViewAttacher(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;)V
    .locals 0
    .param p1, "newPhotoViewAttacher"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .line 42
    return-void
.end method
