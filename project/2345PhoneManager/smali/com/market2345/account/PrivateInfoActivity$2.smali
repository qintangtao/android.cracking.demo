.class Lcom/market2345/account/PrivateInfoActivity$2;
.super Ljava/lang/Object;
.source "PrivateInfoActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/PrivateInfoActivity;->initPrivateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/PrivateInfoActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/PrivateInfoActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 123
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    if-eqz p3, :cond_0

    .line 113
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v1}, Lcom/market2345/account/PrivateInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 114
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    # getter for: Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/market2345/account/PrivateInfoActivity;->access$000(Lcom/market2345/account/PrivateInfoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    # getter for: Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/market2345/account/PrivateInfoActivity;->access$000(Lcom/market2345/account/PrivateInfoActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v2}, Lcom/market2345/account/PrivateInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    # getter for: Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/account/PrivateInfoActivity;->access$000(Lcom/market2345/account/PrivateInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity$2;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v1}, Lcom/market2345/account/PrivateInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 101
    return-void
.end method
