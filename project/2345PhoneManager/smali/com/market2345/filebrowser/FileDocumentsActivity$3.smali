.class Lcom/market2345/filebrowser/FileDocumentsActivity$3;
.super Ljava/lang/Object;
.source "FileDocumentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 194
    iput-object p1, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

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

    .line 198
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$600(Lcom/market2345/filebrowser/FileDocumentsActivity;)Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$200(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$400(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$200(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v4, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$300(Lcom/market2345/filebrowser/FileDocumentsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->ivTopDelete:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$100(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$400(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->bottom:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$700(Lcom/market2345/filebrowser/FileDocumentsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # invokes: Lcom/market2345/filebrowser/FileDocumentsActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$500(Lcom/market2345/filebrowser/FileDocumentsActivity;)V

    .line 205
    iget-object v0, p0, Lcom/market2345/filebrowser/FileDocumentsActivity$3;->this$0:Lcom/market2345/filebrowser/FileDocumentsActivity;

    # getter for: Lcom/market2345/filebrowser/FileDocumentsActivity;->adapter:Lcom/market2345/filebrowser/adapter/DocumentAdapter;
    invoke-static {v0}, Lcom/market2345/filebrowser/FileDocumentsActivity;->access$600(Lcom/market2345/filebrowser/FileDocumentsActivity;)Lcom/market2345/filebrowser/adapter/DocumentAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->setEditMode(Z)V

    .line 209
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 200
    goto :goto_0

    :cond_1
    move v1, v2

    .line 209
    goto :goto_1
.end method
