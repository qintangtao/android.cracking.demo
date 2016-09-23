.class Lcom/market2345/account/LoginActivity$9;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/market2345/account/SignInController$CheckCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/LoginActivity;->getCheckCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/market2345/account/LoginActivity$9;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Landroid/graphics/Bitmap;Lorg/apache/http/cookie/Cookie;)V
    .locals 1
    .param p1, "bit"    # Landroid/graphics/Bitmap;
    .param p2, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$9;->this$0:Lcom/market2345/account/LoginActivity;

    # getter for: Lcom/market2345/account/LoginActivity;->checkCodeImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/account/LoginActivity;->access$800(Lcom/market2345/account/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$9;->this$0:Lcom/market2345/account/LoginActivity;

    # setter for: Lcom/market2345/account/LoginActivity;->mCookie:Lorg/apache/http/cookie/Cookie;
    invoke-static {v0, p2}, Lcom/market2345/account/LoginActivity;->access$902(Lcom/market2345/account/LoginActivity;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;

    .line 267
    return-void
.end method
