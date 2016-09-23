.class Lcom/market2345/cacheclean/CleanBigFileDialog$1;
.super Ljava/lang/Object;
.source "CleanBigFileDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanBigFileDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanBigFileDialog;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    .local v0, "id":I
    const v1, 0x7f090198

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->access$000(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->access$000(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 117
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->dismiss()V

    .line 118
    return-void

    .line 112
    :cond_1
    const v1, 0x7f090197

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->access$100(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    # getter for: Lcom/market2345/cacheclean/CleanBigFileDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->access$100(Lcom/market2345/cacheclean/CleanBigFileDialog;)Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileDialog$1;->this$0:Lcom/market2345/cacheclean/CleanBigFileDialog;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
