.class Lcom/market2345/dumpclean/FilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileDetailsActivityPaths.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/FilesAdapter$ViewHold;
    }
.end annotation


# instance fields
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

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/market2345/dumpclean/FilesAdapter;->data:Ljava/util/List;

    .line 87
    iput-object p1, p0, Lcom/market2345/dumpclean/FilesAdapter;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/market2345/dumpclean/FilesAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/market2345/dumpclean/FilesAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    if-nez p2, :cond_1

    .line 109
    iget-object v3, p0, Lcom/market2345/dumpclean/FilesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03008f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;

    invoke-direct {v0}, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;-><init>()V

    .line 111
    .local v0, "hold":Lcom/market2345/dumpclean/FilesAdapter$ViewHold;
    const v3, 0x7f0902fb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    .line 112
    const v3, 0x7f0902fc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f0902fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f09020b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_path:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/market2345/dumpclean/FilesAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 120
    .local v1, "myFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    const v4, 0x7f02024c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_1
    iget-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/dumpclean/FilesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/dumpclean/main/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 129
    iget-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->tv_path:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getRootPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    return-object p2

    .line 117
    .end local v0    # "hold":Lcom/market2345/dumpclean/FilesAdapter$ViewHold;
    .end local v1    # "myFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;

    .restart local v0    # "hold":Lcom/market2345/dumpclean/FilesAdapter$ViewHold;
    goto :goto_0

    .line 123
    .restart local v1    # "myFile":Ljava/io/File;
    :cond_2
    iget-object v3, v0, Lcom/market2345/dumpclean/FilesAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    const v4, 0x7f02004e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
