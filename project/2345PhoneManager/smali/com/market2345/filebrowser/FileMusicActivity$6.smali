.class Lcom/market2345/filebrowser/FileMusicActivity$6;
.super Ljava/lang/Object;
.source "FileMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileMusicActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileMusicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileMusicActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/market2345/filebrowser/FileMusicActivity$6;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$6;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # getter for: Lcom/market2345/filebrowser/FileMusicActivity;->dialogDelete:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1500(Lcom/market2345/filebrowser/FileMusicActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 362
    iget-object v0, p0, Lcom/market2345/filebrowser/FileMusicActivity$6;->this$0:Lcom/market2345/filebrowser/FileMusicActivity;

    # invokes: Lcom/market2345/filebrowser/FileMusicActivity;->asyncDelete()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileMusicActivity;->access$1600(Lcom/market2345/filebrowser/FileMusicActivity;)V

    .line 363
    return-void
.end method
