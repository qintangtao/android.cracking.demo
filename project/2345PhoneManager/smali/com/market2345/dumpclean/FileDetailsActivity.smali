.class public Lcom/market2345/dumpclean/FileDetailsActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FileDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private contentView:Landroid/view/View;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private date:J

.field private dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

.field private ibtn_left_back:Landroid/widget/ImageButton;

.field private ibtn_right:Landroid/widget/ImageButton;

.field private ll_idle:Landroid/widget/LinearLayout;

.field private lv_file:Landroid/widget/ListView;

.field private page_title:Landroid/widget/TextView;

.field private popWindow:Landroid/widget/PopupWindow;

.field private rootPath:Ljava/lang/String;

.field private size:J

.field private titleName:Ljava/lang/String;

.field private tv_file_root:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/FileDetailsActivity;ILjava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/FileDetailsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/FileDetailsActivity;->chooseOver(ILjava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/FileDetailsActivity;)Lcom/market2345/dumpclean/ListViewDialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/FileDetailsActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/FileDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/FileDetailsActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/FileDetailsActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/FileDetailsActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/FileDetailsActivity;->updateUi(Ljava/io/File;)V

    return-void
.end method

.method private addTitleFold(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    .local v3, "tv":Landroid/widget/TextView;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 213
    .local v2, "padding":I
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    const/4 v4, 0x2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02017d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    invoke-virtual {v3, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v1, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v4, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private chooseOver(ILjava/io/File;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 177
    const-string v1, ""

    .line 178
    .local v1, "type":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 192
    const-string v1, "*/*"

    .line 195
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v1, "text/plain"

    .line 181
    goto :goto_0

    .line 183
    :pswitch_1
    const-string v1, "audio/*"

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    const-string v1, "video/*"

    .line 187
    goto :goto_0

    .line 189
    :pswitch_3
    const-string v1, "image/*"

    .line 190
    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/market2345/dumpclean/FileDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/FileDetailsActivity$2;-><init>(Lcom/market2345/dumpclean/FileDetailsActivity;)V

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->size:J

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->date:J

    .line 104
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 77
    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ibtn_left_back:Landroid/widget/ImageButton;

    .line 78
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->page_title:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->titleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->page_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    const v0, 0x7f0900a7

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ibtn_right:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ibtn_left_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ibtn_right:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ll_idle:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->tv_file_root:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->lv_file:Landroid/widget/ListView;

    .line 91
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->tv_file_root:Landroid/widget/TextView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->tv_file_root:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->tv_file_root:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/market2345/dumpclean/FileAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/market2345/dumpclean/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 95
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->lv_file:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->lv_file:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->page_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showOpenFileDialog(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "item":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0300bf

    const v3, 0x7f0903e4

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 162
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Lcom/market2345/dumpclean/FileDetailsActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/market2345/dumpclean/FileDetailsActivity$1;-><init>(Lcom/market2345/dumpclean/FileDetailsActivity;Ljava/io/File;)V

    invoke-static {p0, v0, v2}, Lcom/market2345/util/DialogFactory;->createListViewDialog(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/market2345/dumpclean/ListViewDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    .line 172
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/ListViewDialog;->show()V

    .line 173
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    const v3, 0x7f0b00fd

    invoke-virtual {p0, v3}, Lcom/market2345/dumpclean/FileDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/dumpclean/ListViewDialog;->setCleanTitle(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->dialogSize:Lcom/market2345/dumpclean/ListViewDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/market2345/dumpclean/ListViewDialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    return-void
.end method

.method private updateUi(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 152
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/FileDetailsActivity;->addTitleFold(Ljava/io/File;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/FileDetailsActivity;->showOpenFileDialog(Ljava/io/File;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->contentView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->contentView:Landroid/view/View;

    const v1, 0x7f09032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->contentView:Landroid/view/View;

    const v1, 0x7f090330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->size:J

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->contentView:Landroid/view/View;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/dumpclean/DateUtils;->long2DateSimple(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->contentView:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    .line 120
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 121
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->popWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->ibtn_right:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->finish()V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0900a6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/FileDetailsActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->titleName:Ljava/lang/String;

    .line 62
    const-string v1, "dir"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    .line 63
    const-string v1, "FileDetailsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f20\u8fc7\u6765\u7684\u8def\u5f84\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/market2345/dumpclean/FileDetailsActivity;->initData()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/market2345/dumpclean/FileDetailsActivity;->data:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 144
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/FileDetailsActivity;->updateUi(Ljava/io/File;)V

    .line 145
    return-void
.end method
