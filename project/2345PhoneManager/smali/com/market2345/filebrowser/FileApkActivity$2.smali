.class Lcom/market2345/filebrowser/FileApkActivity$2;
.super Ljava/lang/Object;
.source "FileApkActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileApkActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileApkActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileApkActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$600(Lcom/market2345/filebrowser/FileApkActivity;)Lcom/market2345/filebrowser/adapter/ApkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->getEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$200(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileApkActivity;->access$300(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$400(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$200(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v4, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileApkActivity;->access$300(Lcom/market2345/filebrowser/FileApkActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$100(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$400(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->bottom:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$700(Lcom/market2345/filebrowser/FileApkActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # invokes: Lcom/market2345/filebrowser/FileApkActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$500(Lcom/market2345/filebrowser/FileApkActivity;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/filebrowser/FileApkActivity$2;->this$0:Lcom/market2345/filebrowser/FileApkActivity;

    # getter for: Lcom/market2345/filebrowser/FileApkActivity;->adapter:Lcom/market2345/filebrowser/adapter/ApkAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileApkActivity;->access$600(Lcom/market2345/filebrowser/FileApkActivity;)Lcom/market2345/filebrowser/adapter/ApkAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->setEditMode(Z)V

    .line 196
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    :cond_1
    move v1, v2

    .line 196
    goto :goto_1
.end method
