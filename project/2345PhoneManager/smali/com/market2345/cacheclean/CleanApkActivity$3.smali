.class Lcom/market2345/cacheclean/CleanApkActivity$3;
.super Ljava/lang/Object;
.source "CleanApkActivity.java"

# interfaces
.implements Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanApkActivity;->showInstallDialog(Lcom/market2345/cacheclean/ApkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanApkActivity;

.field final synthetic val$apk:Lcom/market2345/cacheclean/ApkInfo;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanApkActivity;Lcom/market2345/cacheclean/ApkInfo;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkActivity$3;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    iput-object p2, p0, Lcom/market2345/cacheclean/CleanApkActivity$3;->val$apk:Lcom/market2345/cacheclean/ApkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$3;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity$3;->val$apk:Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ApkInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/market2345/cacheclean/Util;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 345
    return-void
.end method
