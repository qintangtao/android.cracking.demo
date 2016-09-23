.class Lcom/market2345/account/ForgetPasswordActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/ForgetPasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/ForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/ForgetPasswordActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/market2345/account/ForgetPasswordActivity$1;->this$0:Lcom/market2345/account/ForgetPasswordActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 30
    return-void
.end method
