.class Lcom/market2345/download/view/SignatureErrorDialogActivity$1;
.super Ljava/lang/Object;
.source "SignatureErrorDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/view/SignatureErrorDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/view/SignatureErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/market2345/download/view/SignatureErrorDialogActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/market2345/download/view/SignatureErrorDialogActivity$1;->this$0:Lcom/market2345/download/view/SignatureErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/download/view/SignatureErrorDialogActivity$1;->this$0:Lcom/market2345/download/view/SignatureErrorDialogActivity;

    invoke-virtual {v0}, Lcom/market2345/download/view/SignatureErrorDialogActivity;->finish()V

    .line 38
    return-void
.end method
