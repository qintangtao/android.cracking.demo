.class Lcom/market2345/cacheclean/CleanAlertDialog$1;
.super Ljava/lang/Object;
.source "CleanAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanAlertDialog;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanAlertDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    .local v0, "id":I
    const v1, 0x7f090198

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    # getter for: Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->access$000(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    # getter for: Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerOK:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->access$000(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->dismiss()V

    .line 101
    return-void

    .line 95
    :cond_1
    const v1, 0x7f090197

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    # getter for: Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->access$100(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    # getter for: Lcom/market2345/cacheclean/CleanAlertDialog;->mListenerCancel:Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->access$100(Lcom/market2345/cacheclean/CleanAlertDialog;)Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanAlertDialog$1;->this$0:Lcom/market2345/cacheclean/CleanAlertDialog;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
