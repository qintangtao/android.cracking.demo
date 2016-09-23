.class Lcom/market2345/filebrowser/FileDocumentsActivity$5;
.super Ljava/lang/Object;
.source "FileDocumentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileDocumentsActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileDocumentsActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$5;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$5;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->dialogDelete:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$800(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 357
    return-void
.end method
