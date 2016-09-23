.class Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lazyload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public background:Landroid/view/View;

.field public errorIcon:I

.field public height:I

.field public id:I

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/lazyload/ImageLoader;

.field public type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/market2345/lazyload/ImageLoader;Ljava/lang/String;Landroid/view/View;IIIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V
    .locals 1
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/view/View;
    .param p4, "id"    # I
    .param p5, "defaultIcon"    # I
    .param p6, "errorIcon"    # I
    .param p7, "defaultX"    # I
    .param p8, "defaultY"    # I
    .param p9, "type"    # Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->this$0:Lcom/market2345/lazyload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    sget-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NORMAL:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .line 461
    iput p4, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->id:I

    .line 462
    iput-object p9, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .line 463
    iput-object p2, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 464
    iput-object p3, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->background:Landroid/view/View;

    .line 465
    iput p7, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->width:I

    .line 466
    iput p8, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->height:I

    .line 467
    iput p6, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    .line 468
    return-void
.end method

.method public constructor <init>(Lcom/market2345/lazyload/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;IIIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V
    .locals 1
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/widget/ImageView;
    .param p4, "id"    # I
    .param p5, "defaultIcon"    # I
    .param p6, "errorIcon"    # I
    .param p7, "defaultX"    # I
    .param p8, "defaultY"    # I
    .param p9, "type"    # Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->this$0:Lcom/market2345/lazyload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    sget-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NORMAL:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    iput-object v0, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .line 450
    iput p4, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->id:I

    .line 451
    iput-object p9, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .line 452
    iput-object p2, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 453
    iput-object p3, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 454
    iput p7, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->width:I

    .line 455
    iput p8, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->height:I

    .line 456
    iput p6, p0, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->errorIcon:I

    .line 457
    return-void
.end method
