.class Lcom/market2345/search/SearchDialogFragment$2;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 302
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$2;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$2;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->searchEvent()V
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$100(Lcom/market2345/search/SearchDialogFragment;)V

    .line 307
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$2;->this$0:Lcom/market2345/search/SearchDialogFragment;

    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "v":Landroid/widget/TextView;
    # invokes: Lcom/market2345/search/SearchDialogFragment;->startSearch(Landroid/widget/EditText;)V
    invoke-static {v0, p1}, Lcom/market2345/search/SearchDialogFragment;->access$200(Lcom/market2345/search/SearchDialogFragment;Landroid/widget/EditText;)V

    .line 310
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
