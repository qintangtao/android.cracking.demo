.class Lcom/market2345/account/PrivateCenterActivity$2;
.super Ljava/lang/Object;
.source "PrivateCenterActivity.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/PrivateCenterActivity;->initPrivateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/PrivateCenterActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/PrivateCenterActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/market2345/account/PrivateCenterActivity$2;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 133
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    if-eqz p3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity$2;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    # getter for: Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/account/PrivateCenterActivity;->access$000(Lcom/market2345/account/PrivateCenterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity$2;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    # getter for: Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/account/PrivateCenterActivity;->access$000(Lcom/market2345/account/PrivateCenterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity$2;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    # getter for: Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/account/PrivateCenterActivity;->access$000(Lcom/market2345/account/PrivateCenterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 113
    return-void
.end method
