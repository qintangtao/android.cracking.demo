.class Lcom/market2345/filebrowser/FileVideoActivity$4;
.super Ljava/lang/Object;
.source "FileVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileVideoActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileVideoActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileVideoActivity;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/market2345/filebrowser/FileVideoActivity$4;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$4;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # getter for: Lcom/market2345/filebrowser/FileVideoActivity;->dialogDelete:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$1100(Lcom/market2345/filebrowser/FileVideoActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 291
    iget-object v0, p0, Lcom/market2345/filebrowser/FileVideoActivity$4;->this$0:Lcom/market2345/filebrowser/FileVideoActivity;

    # invokes: Lcom/market2345/filebrowser/FileVideoActivity;->asyncDelete()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileVideoActivity;->access$1200(Lcom/market2345/filebrowser/FileVideoActivity;)V

    .line 292
    return-void
.end method
