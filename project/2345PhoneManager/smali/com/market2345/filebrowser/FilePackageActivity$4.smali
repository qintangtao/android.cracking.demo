.class Lcom/market2345/filebrowser/FilePackageActivity$4;
.super Ljava/lang/Object;
.source "FilePackageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FilePackageActivity;->showConfirmDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FilePackageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FilePackageActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/market2345/filebrowser/FilePackageActivity$4;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePackageActivity$4;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    # getter for: Lcom/market2345/filebrowser/FilePackageActivity;->dialogDelete:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/market2345/filebrowser/FilePackageActivity;->access$800(Lcom/market2345/filebrowser/FilePackageActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 345
    return-void
.end method
