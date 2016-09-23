.class Lcom/market2345/filebrowser/FilePackageActivity$1;
.super Ljava/lang/Object;
.source "FilePackageActivity.java"

# interfaces
.implements Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FilePackageActivity;->initListener()V
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
    .line 172
    iput-object p1, p0, Lcom/market2345/filebrowser/FilePackageActivity$1;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkChanged()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePackageActivity$1;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    # getter for: Lcom/market2345/filebrowser/FilePackageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FilePackageActivity;->access$400(Lcom/market2345/filebrowser/FilePackageActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/market2345/filebrowser/FilePackageActivity$1;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    # getter for: Lcom/market2345/filebrowser/FilePackageActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FilePackageActivity;->access$200(Lcom/market2345/filebrowser/FilePackageActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/market2345/filebrowser/FilePackageActivity$1;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    # getter for: Lcom/market2345/filebrowser/FilePackageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/filebrowser/FilePackageActivity;->access$300(Lcom/market2345/filebrowser/FilePackageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePackageActivity$1;->this$0:Lcom/market2345/filebrowser/FilePackageActivity;

    # invokes: Lcom/market2345/filebrowser/FilePackageActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FilePackageActivity;->access$500(Lcom/market2345/filebrowser/FilePackageActivity;)V

    .line 179
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
