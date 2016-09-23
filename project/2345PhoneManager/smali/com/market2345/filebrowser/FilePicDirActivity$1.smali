.class Lcom/market2345/filebrowser/FilePicDirActivity$1;
.super Ljava/lang/Object;
.source "FilePicDirActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FilePicDirActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FilePicDirActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FilePicDirActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/market2345/filebrowser/FilePicDirActivity$1;->this$0:Lcom/market2345/filebrowser/FilePicDirActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity$1;->this$0:Lcom/market2345/filebrowser/FilePicDirActivity;

    const-class v2, Lcom/market2345/filebrowser/FileImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity$1;->this$0:Lcom/market2345/filebrowser/FilePicDirActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/market2345/filebrowser/FilePicDirActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method
