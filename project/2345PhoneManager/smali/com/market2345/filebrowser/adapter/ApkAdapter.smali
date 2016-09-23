.class public Lcom/market2345/filebrowser/adapter/ApkAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApkAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/ApkAdapter$1;,
        Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;,
        Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;
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

.field private mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

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

.field private onCheckChangedListener:Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;


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
    .line 40
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mDeleteMap:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 64
    if-nez p2, :cond_1

    .line 65
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03005a

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    invoke-direct {v0, p0, v4}, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/ApkAdapter;Lcom/market2345/filebrowser/adapter/ApkAdapter$1;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    .line 67
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f090262

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvInstall:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f090263

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 69
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f090261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 70
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f090202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f09023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    const v0, 0x7f0901f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvInstall:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->ModifiedDate:J

    const-string v0, "yyyy/MM/dd HH:mm"

    invoke-static {v2, v3, v0}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->appName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    invoke-static {v1, v0}, Lcom/market2345/filebrowser/FileBrowserUtil;->getApkInfo(Landroid/content/Context;Lcom/market2345/filebrowser/bean/FileInfo;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInstalledApp://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v2, v2, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 104
    return-object p2

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    goto/16 :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvInstall:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvInstall:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/ApkAdapter$ViewHolder;->tvInstall:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    .local v1, "position":I
    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v2, v2, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v4, v2}, Lcom/market2345/common/util/Utils;->installApk(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v1    # "position":I
    :pswitch_1
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 142
    check-cast v0, Landroid/widget/CheckBox;

    .line 143
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .restart local v1    # "position":I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;

    invoke-interface {v2}, Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;->checkChanged()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f090262
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->isEditMode:Z

    .line 124
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/ApkAdapter;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;)V
    .locals 0
    .param p1, "onCheckChangedListener"    # Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/ApkAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/ApkAdapter$OnCheckChangedListener;

    .line 162
    return-void
.end method
