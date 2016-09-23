.class public Lcom/market2345/filebrowser/adapter/PackageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PackageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/PackageAdapter$1;,
        Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;,
        Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;
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

.field private mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

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

.field private mTypeMap:Ljava/util/HashMap;
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

.field private onCheckChangedListener:Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 3
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
    .line 38
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    .line 41
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mDeleteMap:Ljava/util/Map;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->isEditMode:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 45
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    const-string v1, "7z"

    const v2, 0x7f02010d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    const-string v1, "zip"

    const v2, 0x7f020110

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    const-string v1, "rar"

    const v2, 0x7f02010f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    const-string v1, "iso"

    const v2, 0x7f02010e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private setPic(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6
    .param p1, "ivPic"    # Landroid/widget/ImageView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f02010f

    .line 148
    :try_start_0
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "suffix":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    .local v1, "resID":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .end local v1    # "resID":Ljava/lang/Integer;
    .end local v2    # "suffix":Ljava/lang/String;
    :goto_0
    return-void

    .line 153
    .restart local v1    # "resID":Ljava/lang/Integer;
    .restart local v2    # "suffix":Ljava/lang/String;
    :cond_0
    const v3, 0x7f02010f

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v1    # "resID":Ljava/lang/Integer;
    .end local v2    # "suffix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mTypeMap:Ljava/util/HashMap;

    .line 165
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/PackageAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030061

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    invoke-direct {v0, p0, v2}, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/PackageAdapter;Lcom/market2345/filebrowser/adapter/PackageAdapter$1;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    .line 71
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    const v0, 0x7f090263

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 72
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    const v0, 0x7f090261

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 73
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    const v0, 0x7f090202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    const v0, 0x7f09023c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    const v0, 0x7f0901f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->isEditMode:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v2, v0, Lcom/market2345/filebrowser/bean/FileInfo;->ModifiedDate:J

    const-string v0, "yyyy/MM/dd HH:mm"

    invoke-static {v2, v3, v0}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v1, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v0, v0, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/market2345/filebrowser/adapter/PackageAdapter;->setPic(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 98
    return-object p2

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    goto/16 :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/market2345/filebrowser/adapter/PackageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->isEditMode:Z

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 128
    check-cast v0, Landroid/widget/CheckBox;

    .line 129
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    .local v1, "position":I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;

    invoke-interface {v2}, Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;->checkChanged()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f090263
        :pswitch_0
    .end packed-switch
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->isEditMode:Z

    .line 116
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/PackageAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;)V
    .locals 0
    .param p1, "onCheckChangedListener"    # Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/PackageAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/PackageAdapter$OnCheckChangedListener;

    .line 169
    return-void
.end method
