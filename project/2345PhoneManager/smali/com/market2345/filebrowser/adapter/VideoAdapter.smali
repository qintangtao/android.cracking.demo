.class public Lcom/market2345/filebrowser/adapter/VideoAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/VideoAdapter$1;,
        Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;,
        Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;
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

.field private mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

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

.field private onCheckChangedListener:Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1
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
    .line 36
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mDeleteMap:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f0202be

    const/4 v5, -0x1

    .line 60
    if-nez p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030067

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/VideoAdapter;Lcom/market2345/filebrowser/adapter/VideoAdapter$1;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    .line 63
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v1, 0x7f090281

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->videoPlay:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v0, 0x7f090263

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 65
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v0, 0x7f090261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v0, 0x7f090282

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v0, 0x7f090284

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    const v0, 0x7f090283

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/lazyload/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/market2345/lazyload/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v2, v2, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    sget-object v7, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/market2345/lazyload/ImageLoader;->DisplayImage(ILandroid/widget/ImageView;IIIILcom/market2345/lazyload/ImageLoader$MEDIATYPE;)V

    .line 89
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->tvDuration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->duration:I

    invoke-static {v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->formatDuration(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-object p2

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->videoPlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/VideoAdapter$ViewHolder;->videoPlay:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 124
    :sswitch_0
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/widget/CheckBox;

    .line 126
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, "position":I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;

    invoke-interface {v2}, Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;->checkChanged()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 139
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "position":I
    :sswitch_1
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 141
    .local v1, "position":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v4, v2, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v2, v2, Lcom/market2345/filebrowser/bean/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/market2345/filebrowser/FileBrowserUtil;->openFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x7f090263 -> :sswitch_0
        0x7f090281 -> :sswitch_1
    .end sparse-switch
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->isEditMode:Z

    .line 113
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/VideoAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;)V
    .locals 0
    .param p1, "onCheckChangedListener"    # Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/VideoAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/VideoAdapter$OnCheckChangedListener;

    .line 151
    return-void
.end method
