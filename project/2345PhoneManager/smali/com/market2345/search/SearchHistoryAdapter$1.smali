.class Lcom/market2345/search/SearchHistoryAdapter$1;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchHistoryAdapter;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchHistoryAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/market2345/search/SearchHistoryAdapter$1;->this$0:Lcom/market2345/search/SearchHistoryAdapter;

    iput-object p2, p0, Lcom/market2345/search/SearchHistoryAdapter$1;->val$word:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter$1;->this$0:Lcom/market2345/search/SearchHistoryAdapter;

    iget-object v0, v0, Lcom/market2345/search/SearchHistoryAdapter;->historyListener:Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/market2345/search/SearchHistoryAdapter$1;->this$0:Lcom/market2345/search/SearchHistoryAdapter;

    iget-object v0, v0, Lcom/market2345/search/SearchHistoryAdapter;->historyListener:Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;

    iget-object v1, p0, Lcom/market2345/search/SearchHistoryAdapter$1;->val$word:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;->onArrowClick(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
