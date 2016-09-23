.class Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lazyload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDisplayer"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/market2345/lazyload/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/market2345/lazyload/ImageLoader;Landroid/graphics/Bitmap;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "p"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->this$0:Lcom/market2345/lazyload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    .line 481
    iput-object p3, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .line 482
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->BACKGROUND:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 517
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->background:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->BACKGROUND:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v0, v1}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    if-lez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget v1, v1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    if-lez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v0, v0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->background:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget v1, v1, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
