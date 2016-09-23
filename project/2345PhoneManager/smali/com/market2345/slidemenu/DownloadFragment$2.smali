.class Lcom/market2345/slidemenu/DownloadFragment$2;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/DownloadFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/DownloadFragment;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$2;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment$2;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intentTo":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    const-string v1, "title"

    const-string v2, "\u5c1d\u9c9c"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment$2;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v1, v0}, Lcom/market2345/slidemenu/DownloadFragment;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method
