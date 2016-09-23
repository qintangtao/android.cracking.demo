.class public Lcom/market2345/filebrowser/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/market2345/filebrowser/photoview/IPhotoView;


# instance fields
.field private final mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/filebrowser/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/filebrowser/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v0, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    .line 54
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/market2345/filebrowser/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->cleanup()V

    .line 307
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 308
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 146
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "finalRectangle"    # Landroid/graphics/Matrix;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->update()V

    .line 196
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->update()V

    .line 206
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 212
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->update()V

    .line 216
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoView;->setMaximumScale(F)V

    .line 179
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .param p1, "maximumScale"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 185
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .param p1, "mediumScale"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 172
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .param p1, "midScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoView;->setMediumScale(F)V

    .line 166
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/PhotoView;->setMinimumScale(F)V

    .line 153
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .param p1, "minimumScale"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 159
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 222
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 234
    return-void
.end method

.method public setOnViewTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 246
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1
    .param p1, "rotationDegree"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setPhotoViewRotation(F)V

    .line 65
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 257
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(F)V

    .line 258
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 270
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 264
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 301
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1
    .param p1, "zoomable"    # Z

    .prologue
    .line 288
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/PhotoView;->mAttacher:Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/market2345/filebrowser/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 289
    return-void
.end method
