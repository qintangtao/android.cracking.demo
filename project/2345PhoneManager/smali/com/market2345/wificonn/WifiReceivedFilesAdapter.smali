.class public Lcom/market2345/wificonn/WifiReceivedFilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiReceivedFilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/wificonn/WifiReceivedFilesAdapter$1;,
        Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/FileFromPC;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method private setIconBySuffix(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "holder"    # Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 165
    const-string v0, "doc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "docx"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    :cond_0
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020286

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    const-string v0, "wps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "ppt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pptx"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    :cond_4
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 177
    :cond_5
    const-string v0, "xls"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "xlsx"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "et"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :cond_6
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_7
    const-string v0, "pdf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 185
    :cond_8
    const-string v0, "txt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 187
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 189
    :cond_9
    const-string v0, "ebk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ebk3"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    :cond_a
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020287

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 193
    :cond_b
    const-string v0, "htm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    :cond_c
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020288

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 197
    :cond_d
    const-string v0, "csv"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 57
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "count":I
    iget-object v1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    sub-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v10, 0x7f02028e

    .line 73
    if-nez p2, :cond_1

    .line 75
    iget-object v6, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0300dd

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance v3, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    invoke-direct {v3, p0, v8}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;-><init>(Lcom/market2345/wificonn/WifiReceivedFilesAdapter;Lcom/market2345/wificonn/WifiReceivedFilesAdapter$1;)V

    .line 77
    .local v3, "holder":Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    const v6, 0x7f09043e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    # setter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3, v6}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$102(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 78
    const v6, 0x7f090440

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileName:Landroid/widget/TextView;
    invoke-static {v3, v6}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$202(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 79
    const v6, 0x7f090441

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;
    invoke-static {v3, v6}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$302(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    const v6, 0x7f09043f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    # setter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3, v6}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$402(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v6, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    .local v0, "count":I
    iget-object v6, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    sub-int v7, v0, p1

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/FileFromPC;

    .line 91
    .local v2, "file":Lcom/market2345/model/FileFromPC;
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u6253\u5f00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$200(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, v2, Lcom/market2345/model/FileFromPC;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->fileSize:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$300(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    iget-wide v8, v2, Lcom/market2345/model/FileFromPC;->fileSize:J

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v6, v2, Lcom/market2345/model/FileFromPC;->fileName:Ljava/lang/String;

    iget-object v7, v2, Lcom/market2345/model/FileFromPC;->fileName:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, v2, Lcom/market2345/model/FileFromPC;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "extension":Ljava/lang/String;
    sget-object v6, Lcom/market2345/wificonn/WifiGlobalUtil;->MUSICTYPEMAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 99
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020289

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u64ad\u653e"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    :goto_1
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 155
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f09002b

    iget-object v8, v2, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 157
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-object p2

    .line 85
    .end local v0    # "count":I
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "file":Lcom/market2345/model/FileFromPC;
    .end local v3    # "holder":Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;
    goto/16 :goto_0

    .line 102
    .restart local v0    # "count":I
    .restart local v1    # "extension":Ljava/lang/String;
    .restart local v2    # "file":Lcom/market2345/model/FileFromPC;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/market2345/wificonn/WifiGlobalUtil;->VIDEOTYPEMAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 104
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f02028f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u64ad\u653e"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 107
    :cond_3
    sget-object v6, Lcom/market2345/wificonn/WifiGlobalUtil;->COMPRESSTYPEMAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 109
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020292

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_4
    sget-object v6, Lcom/market2345/wificonn/WifiGlobalUtil;->PICTYPEMAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 113
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f02028b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 115
    :cond_5
    sget-object v6, Lcom/market2345/wificonn/WifiGlobalUtil;->DOCTYPEMAP:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mimeType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 118
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u6253\u5f00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0, v3, v1}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->setIconBySuffix(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :cond_6
    const-string v6, "apk"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 123
    iget-object v6, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/market2345/common/util/Utils;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market2345/lm/bean/AppInfo;

    move-result-object v4

    .line 124
    .local v4, "info":Lcom/market2345/lm/bean/AppInfo;
    if-eqz v4, :cond_8

    .line 126
    iget-object v6, v4, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020275

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v6, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    iget-object v7, v4, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 131
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u6253\u5f00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const-string v5, "application/vnd.android.package-archiveopen"

    .line 133
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f09002c

    iget-object v8, v4, Lcom/market2345/lm/bean/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 137
    :cond_7
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u5b89\u88c5"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v5, "application/vnd.android.package-archiveinstall"

    goto/16 :goto_1

    .line 144
    :cond_8
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->action:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$400(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "\u6253\u5f00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const-string v5, "received_unknown"

    goto/16 :goto_1

    .line 151
    .end local v4    # "info":Lcom/market2345/lm/bean/AppInfo;
    :cond_9
    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->icon:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;->access$100(Lcom/market2345/wificonn/WifiReceivedFilesAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    const-string v5, "received_unknown"

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "mimeType":Ljava/lang/String;
    const v4, 0x7f09002b

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "path":Ljava/lang/String;
    const-string v4, "application/vnd.android.package-archiveopen"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    iget-object v5, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f09002c

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/market2345/common/util/Utils;->startAppByPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 229
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    const-string v4, "application/vnd.android.package-archiveinstall"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    const-string v5, "\u4e0d\u652f\u6301\u7684\u6587\u4ef6\u6216\u7c7b\u578b"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "mimeType":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2}, Lcom/market2345/filebrowser/FileBrowserUtil;->openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setFiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/FileFromPC;>;"
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->mFiles:Ljava/util/ArrayList;

    .line 46
    return-void
.end method
