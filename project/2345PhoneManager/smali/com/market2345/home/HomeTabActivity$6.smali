.class Lcom/market2345/home/HomeTabActivity$6;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "HomeTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->updateAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/home/HomeTabActivity;->access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/home/HomeTabActivity;->access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    const v2, 0x7f0201f9

    .line 713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/home/HomeTabActivity;->access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v1}, Lcom/market2345/home/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    # getter for: Lcom/market2345/home/HomeTabActivity;->mMenu:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/home/HomeTabActivity;->access$1100(Lcom/market2345/home/HomeTabActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$6;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v1}, Lcom/market2345/home/HomeTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
