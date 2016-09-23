.class Lcom/market2345/filebrowser/FileDocumentsActivity$1;
.super Ljava/lang/Object;
.source "FileDocumentsActivity.java"

# interfaces
.implements Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileDocumentsActivity;->initListener()V
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
    .line 173
    iput-object p1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$1;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkChanged()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$1;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$400(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$1;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$200(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$1;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$1;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # invokes: Lcom/market2345/filebrowser/FileDocumentsActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$500(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    .line 180
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
