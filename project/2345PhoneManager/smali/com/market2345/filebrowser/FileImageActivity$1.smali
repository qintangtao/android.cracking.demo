.class Lcom/market2345/filebrowser/FileImageActivity$1;
.super Ljava/lang/Object;
.source "FileImageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/filebrowser/FileImageActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileImageActivity;


# direct methods
.method constructor <init>(Lcom/market2345/filebrowser/FileImageActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 145
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$000(Lcom/market2345/filebrowser/FileImageActivity;)Lcom/market2345/filebrowser/adapter/ImageAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v1

    .line 147
    .local v1, "info":Lcom/market2345/filebrowser/bean/FileInfo;
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->adapter:Lcom/market2345/filebrowser/adapter/ImageAdapter;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$000(Lcom/market2345/filebrowser/FileImageActivity;)Lcom/market2345/filebrowser/adapter/ImageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    const v5, 0x7f090263

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 150
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$100(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_0
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->cbTopSelectAll:Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$300(Lcom/market2345/filebrowser/FileImageActivity;)Landroid/widget/CheckBox;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/market2345/filebrowser/FileImageActivity;->access$100(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->mInfos:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/market2345/filebrowser/FileImageActivity;->access$200(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    iget-object v3, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # invokes: Lcom/market2345/filebrowser/FileImageActivity;->changeTitle()V
    invoke-static {v3}, Lcom/market2345/filebrowser/FileImageActivity;->access$400(Lcom/market2345/filebrowser/FileImageActivity;)V

    .line 167
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :goto_2
    return-void

    .line 154
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->deleteMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$100(Lcom/market2345/filebrowser/FileImageActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v3, v4

    .line 158
    goto :goto_1

    .line 162
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    const-class v5, Lcom/market2345/filebrowser/FileBigImageActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "position"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v4, "index"

    iget-object v5, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    # getter for: Lcom/market2345/filebrowser/FileImageActivity;->currentIndex:I
    invoke-static {v5}, Lcom/market2345/filebrowser/FileImageActivity;->access$500(Lcom/market2345/filebrowser/FileImageActivity;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v4, p0, Lcom/market2345/filebrowser/FileImageActivity$1;->this$0:Lcom/market2345/filebrowser/FileImageActivity;

    invoke-virtual {v4, v2, v3}, Lcom/market2345/filebrowser/FileImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method
