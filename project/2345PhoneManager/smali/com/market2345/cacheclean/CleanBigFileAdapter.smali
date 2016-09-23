.class public Lcom/market2345/cacheclean/CleanBigFileAdapter;
.super Landroid/widget/BaseAdapter;
.source "CleanBigFileAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;,
        Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static SDROOT:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/BigFileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->SDROOT:Ljava/lang/String;

    .line 45
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanBigFileAdapter;)Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    return-object v0
.end method

.method private getIcon(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "apk"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "name_s":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "apk_path":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 160
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 161
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 163
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 166
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 200
    .end local v0    # "apk_path":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "name_s":Ljava/lang/String;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v2

    .line 171
    .restart local v0    # "apk_path":Ljava/lang/String;
    .restart local v4    # "name_s":Ljava/lang/String;
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200f2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 176
    .end local v0    # "apk_path":Ljava/lang/String;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    :cond_3
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 180
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 182
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 186
    :cond_6
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 188
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".rar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".7z"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 190
    :cond_8
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    .line 194
    :cond_9
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 51
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    move v3, p1

    .line 76
    .local v3, "pos":I
    const/4 v0, 0x0

    .line 77
    .local v0, "holder":Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 79
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030030

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;-><init>(Lcom/market2345/cacheclean/CleanBigFileAdapter;)V

    .line 81
    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    const v4, 0x7f0901bb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 82
    const v4, 0x7f0901bd

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 83
    const v4, 0x7f0901c0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f0901c1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_path:Landroid/widget/TextView;

    .line 85
    const v4, 0x7f0901bc

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->isApkFile()Z

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->getIcon(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 96
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_1
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/market2345/cacheclean/CleanMainACtivity;->filePath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/BigFileInfo;->isSelect()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :goto_2
    sget-object v4, Lcom/market2345/cacheclean/CleanMainACtivity;->outPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 115
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_path:Landroid/widget/TextView;

    sget-object v5, Lcom/market2345/cacheclean/CleanMainACtivity;->outPath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_3
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    new-instance v5, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;

    invoke-direct {v5, p0, p1, v3}, Lcom/market2345/cacheclean/CleanBigFileAdapter$1;-><init>(Lcom/market2345/cacheclean/CleanBigFileAdapter;II)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object p2

    .line 92
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    check-cast v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;
    goto/16 :goto_0

    .line 99
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 111
    .restart local v2    # "path":Ljava/lang/String;
    :cond_2
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 119
    :cond_3
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanBigFileAdapter$ViewHolder;->tv_path:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setSelectListener(Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanBigFileAdapter;->listener:Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;

    .line 70
    return-void
.end method
