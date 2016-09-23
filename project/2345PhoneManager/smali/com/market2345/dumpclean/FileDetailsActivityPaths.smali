.class public Lcom/market2345/dumpclean/FileDetailsActivityPaths;
.super Lcom/market2345/home/BaseActivity;
.source "FileDetailsActivityPaths.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private ibtn_left_back:Landroid/widget/ImageButton;

.field private lv_file:Landroid/widget/ListView;

.field private page_title:Landroid/widget/TextView;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    .line 48
    const v4, 0x7f0900a6

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->ibtn_left_back:Landroid/widget/ImageButton;

    .line 49
    const v4, 0x7f090052

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->page_title:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->page_title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->ibtn_left_back:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0x7f0900ab

    invoke-virtual {p0, v4}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->lv_file:Landroid/widget/ListView;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Lcom/market2345/dumpclean/FilesAdapter;

    invoke-direct {v4, p0, v0}, Lcom/market2345/dumpclean/FilesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->adapter:Landroid/widget/BaseAdapter;

    .line 59
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->lv_file:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->page_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->paths:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    .restart local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->finish()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0900a6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->title:Ljava/lang/String;

    .line 39
    const-string v1, "dirs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->paths:Ljava/util/List;

    .line 40
    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->paths:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->finish()V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/market2345/dumpclean/FileDetailsActivityPaths;->initView()V

    goto :goto_0
.end method
