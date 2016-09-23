.class public Lcom/market2345/filebrowser/adapter/DocumentAdapter;
.super Landroid/widget/BaseAdapter;
.source "DocumentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/DocumentAdapter$1;,
        Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;,
        Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isEditMode:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

.field private mIconResIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onCheckChangedListener:Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    const v7, 0x7f020124

    const v6, 0x7f020123

    const v5, 0x7f02012a

    const v4, 0x7f020125

    const v3, 0x7f020127

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mDeleteMap:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->isEditMode:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    .line 47
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "doc"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "dot"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "wps"

    const v2, 0x7f020129

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "docx"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "dotx"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "ppt"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "pps"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "pos"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "pptx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "ppsx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "potx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "dps"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xls"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xlt"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xlsx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xltx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "et"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "pdf"

    const v2, 0x7f020126

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "txt"

    const v2, 0x7f020128

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "ebk"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "ebk3"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "htm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "html"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xht"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xhtm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    const-string v1, "xhtml"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private getSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 214
    .end local v1    # "suffix":Ljava/lang/String;
    .local v2, "suffix":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 208
    .end local v2    # "suffix":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_0
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 210
    .end local v1    # "suffix":Ljava/lang/String;
    .restart local v2    # "suffix":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v2    # "suffix":Ljava/lang/String;
    .restart local v1    # "suffix":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 214
    .end local v1    # "suffix":Ljava/lang/String;
    .restart local v2    # "suffix":Ljava/lang/String;
    goto :goto_0
.end method

.method private setPic(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5
    .param p1, "ivPic"    # Landroid/widget/ImageView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f020128

    .line 174
    invoke-direct {p0, p2}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 181
    .local v0, "resID":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mIconResIDMap:Ljava/util/HashMap;

    .line 222
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 87
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    const-string v0, "*/*"

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-static {}, Lcom/market2345/filebrowser/FileBrowserUtil;->getDocMimeTypeMap()Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string v0, "*/*"

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p2, :cond_1

    .line 93
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030061

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/DocumentAdapter;Lcom/market2345/filebrowser/adapter/DocumentAdapter$1;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    .line 95
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    const v0, 0x7f090263

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 96
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    const v0, 0x7f090261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    const v0, 0x7f090202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 98
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    const v0, 0x7f09023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    const v0, 0x7f0901f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_0
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->isEditMode:Z

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->ModifiedDate:J

    const-string v0, "yyyy/MM/dd HH:mm"

    invoke-static {v2, v3, v0}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->setPic(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    .line 125
    :cond_0
    return-object p2

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/DocumentAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->isEditMode:Z

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 155
    check-cast v0, Landroid/widget/CheckBox;

    .line 156
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 157
    .local v1, "position":I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;

    invoke-interface {v2}, Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;->checkChanged()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f090263
        :pswitch_0
    .end packed-switch
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->isEditMode:Z

    .line 143
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;)V
    .locals 0
    .param p1, "onCheckChangedListener"    # Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/DocumentAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/DocumentAdapter$OnCheckChangedListener;

    .line 226
    return-void
.end method
