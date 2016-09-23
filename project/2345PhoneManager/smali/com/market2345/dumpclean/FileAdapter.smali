.class public Lcom/market2345/dumpclean/FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/FileAdapter$ViewHold;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
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
    .line 23
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/market2345/dumpclean/FileAdapter;->data:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/market2345/dumpclean/FileAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/dumpclean/FileAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/FileAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/dumpclean/FileAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/market2345/dumpclean/FileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03008e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/FileAdapter$ViewHold;-><init>(Lcom/market2345/dumpclean/FileAdapter;)V

    .line 53
    .local v0, "hold":Lcom/market2345/dumpclean/FileAdapter$ViewHold;
    const v2, 0x7f0902fb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    .line 54
    const v2, 0x7f0902fc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0902fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_time:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0902fe

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/market2345/dumpclean/FileAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 62
    .local v1, "myFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    :goto_1
    iget-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_time:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/dumpclean/DateUtils;->long2Date(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->tv_size:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/dumpclean/FileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/dumpclean/main/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object p2

    .line 59
    .end local v0    # "hold":Lcom/market2345/dumpclean/FileAdapter$ViewHold;
    .end local v1    # "myFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;

    .restart local v0    # "hold":Lcom/market2345/dumpclean/FileAdapter$ViewHold;
    goto :goto_0

    .line 65
    .restart local v1    # "myFile":Ljava/io/File;
    :cond_1
    iget-object v2, v0, Lcom/market2345/dumpclean/FileAdapter$ViewHold;->im_type:Landroid/widget/ImageView;

    const v3, 0x7f02004e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
