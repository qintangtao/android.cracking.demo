.class public Lcom/market2345/filebrowser/adapter/MusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/MusicAdapter$1;,
        Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;,
        Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;,
        Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isEditMode:Z

.field private mAudioListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;

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

.field private mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

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

.field private onCheckChangedListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;


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
    .line 39
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mDeleteMap:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    .line 44
    return-void
.end method

.method private changeDurationStyle(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "currentDuration"    # I
    .param p2, "duration"    # I

    .prologue
    .line 168
    if-lez p1, :cond_0

    .line 169
    invoke-static {p1}, Lcom/market2345/filebrowser/FileBrowserUtil;->formatDuration(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "current":Ljava/lang/String;
    invoke-static {p2}, Lcom/market2345/filebrowser/FileBrowserUtil;->formatDuration(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "total":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x22

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 176
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "current":Ljava/lang/String;
    .end local v2    # "total":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {p2}, Lcom/market2345/filebrowser/FileBrowserUtil;->formatDuration(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030064

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/MusicAdapter;Lcom/market2345/filebrowser/adapter/MusicAdapter$1;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    .line 66
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    const v1, 0x7f09027f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvSetRing:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    const v1, 0x7f090263

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 70
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    const v1, 0x7f09027b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMusicName:Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    const v1, 0x7f09027c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMucisDuration:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    const v1, 0x7f09027d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMucisSize:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    iget-boolean v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvSetRing:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->duration:I

    invoke-direct {p0, v4, v1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->changeDurationStyle(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 91
    .local v0, "duration":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMucisDuration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v2, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMusicName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v2, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMucisSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-wide v4, v1, Lcom/market2345/filebrowser/bean/FileInfo;->fileSize:J

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object p2

    .line 76
    .end local v0    # "duration":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iput-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvSetRing:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvSetRing:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvSetRing:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->duration:I

    invoke-direct {p0, v4, v1}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->changeDurationStyle(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 103
    .restart local v0    # "duration":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/MusicAdapter$ViewHolder;->tvMucisDuration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 140
    :sswitch_0
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mAudioListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, "position":I
    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mAudioListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/filebrowser/bean/FileInfo;

    iget v2, v2, Lcom/market2345/filebrowser/bean/FileInfo;->fileId:I

    invoke-interface {v3, v2}, Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;->setAudio(I)V

    goto :goto_0

    .line 148
    .end local v1    # "position":I
    :sswitch_1
    iget-boolean v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Landroid/widget/CheckBox;

    .line 150
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 151
    .restart local v1    # "position":I
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;

    invoke-interface {v2}, Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;->checkChanged()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x7f090263 -> :sswitch_1
        0x7f09027f -> :sswitch_0
    .end sparse-switch
.end method

.method public setAudioListener(Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;)V
    .locals 0
    .param p1, "audioListener"    # Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->mAudioListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$AudioListener;

    .line 186
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1, "editMode"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->isEditMode:Z

    .line 129
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/MusicAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public setOnCheckChangedListener(Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;)V
    .locals 0
    .param p1, "onCheckChangedListener"    # Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/MusicAdapter;->onCheckChangedListener:Lcom/market2345/filebrowser/adapter/MusicAdapter$OnCheckChangedListener;

    .line 182
    return-void
.end method
