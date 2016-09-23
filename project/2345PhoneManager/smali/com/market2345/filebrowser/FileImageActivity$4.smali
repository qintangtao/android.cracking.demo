.class Lcom/market2345/filebrowser/FileImageActivity$4;
.super Ljava/lang/Object;
.source "FileImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileImageActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/market2345/filebrowser/FileImageActivity$4;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/market2345/filebrowser/FileImageActivity$4;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileImageActivity;->access$900(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 297
    return-void
.end method
