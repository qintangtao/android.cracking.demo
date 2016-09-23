.class Lcom/market2345/search/SearchDialogFragment$9;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$9;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iput-object p2, p0, Lcom/market2345/search/SearchDialogFragment$9;->val$myDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$9;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 820
    return-void
.end method
