.class Lcom/market2345/filebrowser/FileBigImageActivity$5;
.super Ljava/lang/Object;
.source "FileBigImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileBigImageActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileBigImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileBigImageActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/market2345/filebrowser/FileBigImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/market2345/filebrowser/FileBigImageActivity$5;->this$0:Lcom/market2345/filebrowser/FileBigImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileBigImageActivity;->dlgConfirmDelete:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileBigImageActivity;->access$400(Lcom/market2345/filebrowser/FileBigImageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 244
    return-void
.end method
