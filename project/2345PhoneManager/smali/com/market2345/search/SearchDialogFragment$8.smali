.class Lcom/market2345/search/SearchDialogFragment$8;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$8;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$8;->this$0:Lcom/market2345/search/SearchDialogFragment;

    const-string v1, "\u662f\u5426\u6e05\u9664\u6240\u6709\u5386\u53f2\u8bb0\u5f55?"

    const/4 v2, 0x0

    # invokes: Lcom/market2345/search/SearchDialogFragment;->clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->access$1500(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void
.end method
