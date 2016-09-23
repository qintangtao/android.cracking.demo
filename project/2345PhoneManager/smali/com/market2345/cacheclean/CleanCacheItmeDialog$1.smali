.class Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;
.super Ljava/lang/Object;
.source "CleanCacheItmeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanCacheItmeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;->this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 71
    .local v0, "id":I
    const v1, 0x7f0901cf

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;->this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    # getter for: Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->access$000(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;->this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    # getter for: Lcom/market2345/cacheclean/CleanCacheItmeDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->access$000(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;->this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    # getter for: Lcom/market2345/cacheclean/CleanCacheItmeDialog;->box:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->access$100(Lcom/market2345/cacheclean/CleanCacheItmeDialog;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;->onClick(Z)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheItmeDialog$1;->this$0:Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->dismiss()V

    .line 77
    return-void
.end method
