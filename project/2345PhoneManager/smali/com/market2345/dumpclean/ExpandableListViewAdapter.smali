.class public Lcom/market2345/dumpclean/ExpandableListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;,
        Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    }
.end annotation


# static fields
.field private static final SCHEME:Ljava/lang/String; = "package"


# instance fields
.field private final TYPE:I

.field private final TYPE_CHILD:I

.field private final TYPE_CHILD_OF_CHILD:I

.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private manager:Lcom/market2345/dumpclean/CleanTrustDBManager;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    const v2, 0x7f02004e

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->TYPE:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->TYPE_CHILD:I

    .line 65
    iput v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->TYPE_CHILD_OF_CHILD:I

    .line 71
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/market2345/dumpclean/CleanTrustDBManager;

    invoke-direct {v0, p1}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;

    .line 76
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildCache;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->checkSelect(Lcom/market2345/dumpclean/mode/JunkChildCache;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/market2345/dumpclean/mode/JunkGroup;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->changChild(ILcom/market2345/dumpclean/mode/JunkGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getJunkChildCacheFromPackName(ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handleSendUpdateBtnNotifity()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/market2345/dumpclean/CleanTrustDBManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildApk;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->showApkFileDialog(Lcom/market2345/dumpclean/mode/JunkChildApk;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->showResidualDialog(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ExpandableListViewAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->removePathAllApk(Ljava/lang/String;I)V

    return-void
.end method

.method private changChild(ILcom/market2345/dumpclean/mode/JunkGroup;)V
    .locals 7
    .param p1, "select"    # I
    .param p2, "groupItem"    # Lcom/market2345/dumpclean/mode/JunkGroup;

    .prologue
    .line 1131
    invoke-virtual {p2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    .line 1132
    .local v1, "childrenItems":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1134
    .local v5, "item":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v6, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v6, :cond_2

    move-object v6, v5

    .line 1135
    check-cast v6, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v2, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 1136
    .local v2, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 1138
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0, p1}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->setSelect(I)V

    goto :goto_1

    .line 1140
    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_1
    invoke-virtual {v5, p1}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    goto :goto_0

    .line 1143
    .end local v2    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v5, p1}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    goto :goto_0

    .line 1149
    .end local v5    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_3
    return-void
.end method

.method private checkSelect(Lcom/market2345/dumpclean/mode/JunkChildCache;)I
    .locals 8
    .param p1, "cache"    # Lcom/market2345/dumpclean/mode/JunkChildCache;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 1190
    iget-object v3, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 1191
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v4, v6

    .line 1214
    :cond_1
    :goto_0
    return v4

    .line 1194
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 1195
    .local v0, "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v7

    if-ne v5, v7, :cond_5

    .line 1197
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1198
    .local v1, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_0

    .end local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_4
    move v4, v5

    .line 1202
    goto :goto_0

    .line 1203
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v5

    if-nez v5, :cond_8

    .line 1205
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1206
    .restart local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .end local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_7
    move v4, v6

    .line 1210
    goto :goto_0

    .line 1211
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v4, v6

    .line 1214
    goto :goto_0
.end method

.method private checkSelect(Lcom/market2345/dumpclean/mode/JunkGroup;)I
    .locals 8
    .param p1, "group"    # Lcom/market2345/dumpclean/mode/JunkGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 1157
    invoke-virtual {p1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v3

    .line 1158
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v4, v6

    .line 1181
    :cond_1
    :goto_0
    return v4

    .line 1161
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1162
    .local v2, "junkChild":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v7

    if-ne v5, v7, :cond_5

    .line 1164
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1165
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_0

    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_4
    move v4, v5

    .line 1169
    goto :goto_0

    .line 1170
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v5

    if-nez v5, :cond_8

    .line 1172
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1173
    .restart local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_7
    move v4, v6

    .line 1177
    goto :goto_0

    .line 1178
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v4, v6

    .line 1181
    goto :goto_0
.end method

.method private getApkOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "apk"    # Lcom/market2345/dumpclean/mode/JunkChildApk;
    .param p2, "groupPosition"    # I

    .prologue
    .line 700
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V

    return-object v0
.end method

.method private getApkOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p1, "apk"    # Lcom/market2345/dumpclean/mode/JunkChildApk;
    .param p2, "grouPosition"    # I

    .prologue
    .line 661
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V

    return-object v0
.end method

.method private getCacheOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;II)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "cache"    # Lcom/market2345/dumpclean/mode/JunkChildCache;
    .param p2, "groupPosttion"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 815
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkChildCache;I)V

    return-object v0
.end method

.method private getCacheOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;I)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p1, "cache"    # Lcom/market2345/dumpclean/mode/JunkChildCache;
    .param p2, "groupPosition"    # I

    .prologue
    .line 770
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCache;I)V

    return-object v0
.end method

.method private getCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChild;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "childrenItem"    # Lcom/market2345/dumpclean/mode/JunkChild;
    .param p2, "groupPosition"    # I

    .prologue
    .line 383
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChild;I)V

    return-object v0
.end method

.method private getChildOfChildCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;II)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "childOfChild"    # Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 345
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkChildCacheOfChild;)V

    return-object v0
.end method

.method private getChildOfChildOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "childOfChild"    # Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .param p2, "groupPosition"    # I

    .prologue
    .line 460
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)V

    return-object v0
.end method

.method private getChildOfChildOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p1, "childOfChild"    # Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .param p2, "groupPosition"    # I

    .prologue
    .line 422
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)V

    return-object v0
.end method

.method private getGroupCheckBoxClickListener(Lcom/market2345/dumpclean/mode/JunkGroup;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "groupItem"    # Lcom/market2345/dumpclean/mode/JunkGroup;

    .prologue
    .line 1036
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;

    invoke-direct {v0, p0, p1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkGroup;)V

    return-object v0
.end method

.method private getJunkChildCacheFromPackName(ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1225
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    .line 1226
    .local v1, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1227
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v3, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 1228
    check-cast v3, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 1233
    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRAMOnClickListener(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "ram"    # Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .param p2, "groupPosition"    # I

    .prologue
    .line 562
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;I)V

    return-object v0
.end method

.method private getRAMOnLongClickListener(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p1, "ram"    # Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .prologue
    .line 533
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;)V

    return-object v0
.end method

.method private getResidualOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "residual"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;
    .param p2, "groupPosition"    # I

    .prologue
    .line 754
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$10;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V

    return-object v0
.end method

.method private getResidualOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p1, "residual"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;
    .param p2, "groupPosition"    # I

    .prologue
    .line 715
    new-instance v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V

    return-object v0
.end method

.method private handleSendUpdateBtnNotifity()V
    .locals 2

    .prologue
    .line 1018
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1019
    .local v0, "mes":Landroid/os/Message;
    sget v1, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_SELECTED_CHANGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1020
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1022
    return-void
.end method

.method private removePathAllApk(Ljava/lang/String;I)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "groupPoistion"    # I

    .prologue
    .line 989
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 993
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 996
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 997
    iget-object v6, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 998
    .local v5, "junkGroup":Lcom/market2345/dumpclean/mode/JunkGroup;
    invoke-virtual {v5}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    .line 999
    .local v1, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v2, "delApks":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildApk;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1001
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v6, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;

    if-eqz v6, :cond_2

    move-object v6, v0

    .line 1002
    check-cast v6, Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-object v6, v6, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1003
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildApk;

    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1007
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private showApkFileDialog(Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
    .locals 16
    .param p1, "apk"    # Lcom/market2345/dumpclean/mode/JunkChildApk;
    .param p2, "groupPoistion"    # I

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030042

    invoke-static {v2, v3}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v4

    .line 922
    .local v4, "dialog":Landroid/app/Dialog;
    const v2, 0x7f09020d

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 923
    const v2, 0x7f090207

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 924
    const v2, 0x7f090107

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 925
    .local v10, "dialog_title":Landroid/widget/TextView;
    const v2, 0x7f090208

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 926
    .local v12, "tv_file_size":Landroid/widget/TextView;
    const v2, 0x7f090209

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 927
    .local v15, "tv_version":Landroid/widget/TextView;
    const v2, 0x7f09020a

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 928
    .local v11, "tv_date":Landroid/widget/TextView;
    const v2, 0x7f09020b

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 929
    .local v14, "tv_path":Landroid/widget/TextView;
    const v2, 0x7f09020c

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 930
    .local v13, "tv_go_details":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    .line 931
    .local v7, "path":Ljava/lang/String;
    new-instance v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v2, v0, v4, v7, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    const v2, 0x7f090204

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 954
    .local v9, "dialog_btn1":Landroid/widget/Button;
    const v2, 0x7f090205

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 955
    .local v8, "dialog_btn0":Landroid/widget/Button;
    const v2, 0x7f0b0038

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(I)V

    .line 956
    const v2, 0x7f0b0008

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 957
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->size:J

    invoke-static {v2, v3}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/dumpclean/DateUtils;->long2DateSimple(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    new-instance v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;

    move-object/from16 v3, p0

    move/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;ILcom/market2345/dumpclean/mode/JunkChildApk;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 975
    new-instance v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$18;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 984
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 985
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 986
    return-void
.end method

.method private showResidualDialog(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V
    .locals 18
    .param p1, "residual"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;
    .param p2, "groupPosition"    # I

    .prologue
    .line 863
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const v13, 0x7f030042

    invoke-static {v12, v13}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v4

    .line 864
    .local v4, "dialog":Landroid/app/Dialog;
    const v12, 0x7f09020d

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 865
    const v12, 0x7f090207

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 866
    const v12, 0x7f090107

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 867
    .local v10, "dialog_title":Landroid/widget/TextView;
    const v12, 0x7f09020e

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 869
    .local v8, "dialog_message":Landroid/widget/TextView;
    const v12, 0x7f0901b5

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 870
    .local v9, "dialog_size":Landroid/widget/TextView;
    const v12, 0x7f09020f

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 872
    .local v5, "dialogCheckbox":Landroid/widget/TextView;
    new-instance v12, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 883
    const v12, 0x7f090204

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 884
    .local v7, "dialog_btn1":Landroid/widget/Button;
    const v12, 0x7f090205

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 885
    .local v6, "dialog_btn0":Landroid/widget/Button;
    const v12, 0x7f0b008e

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 886
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/market2345/dumpclean/mode/JunkChildResidual;->name:Ljava/lang/String;

    .line 887
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 888
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const v13, 0x7f0b014e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/market2345/dumpclean/mode/JunkChildResidual;->size:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const v13, 0x7f0b004e

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    new-instance v12, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v12, v0, v4, v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;ILcom/market2345/dumpclean/mode/JunkChildResidual;)V

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    new-instance v12, Lcom/market2345/dumpclean/ExpandableListViewAdapter$15;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$15;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 915
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 916
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 917
    return-void

    .line 890
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const v13, 0x7f0b0036

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 143
    .local v0, "groupItem":Lcom/market2345/dumpclean/mode/JunkGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 171
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 192
    .local v7, "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    if-nez v7, :cond_0

    .line 193
    const/4 v14, 0x0

    .line 341
    .end local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    :goto_0
    return-object v14

    .line 196
    .restart local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildType(II)I

    move-result v12

    .line 197
    .local v12, "type":I
    if-nez p4, :cond_3

    .line 198
    new-instance v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;

    invoke-direct {v8}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;-><init>()V

    .line 199
    .local v8, "holder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;
    packed-switch v12, :pswitch_data_0

    .line 220
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    :goto_2
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-nez v14, :cond_1

    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    if-nez v14, :cond_1

    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildApk;

    if-nez v14, :cond_1

    instance-of v14, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v14, :cond_e

    .line 228
    :cond_1
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_name:Landroid/widget/TextView;

    iget-object v15, v7, Lcom/market2345/dumpclean/mode/JunkChild;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_size:Landroid/widget/TextView;

    iget-wide v0, v7, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v7}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v14

    invoke-virtual {v8, v14}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->setSelect(I)V

    .line 231
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChild;I)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v14, :cond_8

    move-object v5, v7

    .line 233
    check-cast v5, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 234
    .local v5, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-boolean v14, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->isExpanded:Z

    if-nez v14, :cond_4

    .line 236
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    :goto_3
    const-string v14, "com.android.system.cache"

    iget-object v15, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 242
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    const v15, 0x7f0b00a0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 250
    :goto_4
    const-string v14, "com.android.system.cache"

    iget-object v15, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 251
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    const v15, 0x7f0202f4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    :goto_5
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCacheOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;II)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v5    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_2
    :goto_6
    move-object/from16 v14, p4

    .line 341
    goto/16 :goto_0

    .line 201
    .restart local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030082

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 202
    const v14, 0x7f0902bf

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_name:Landroid/widget/TextView;

    .line 203
    const v14, 0x7f0902c0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    .line 204
    const v14, 0x7f0902be

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_size:Landroid/widget/TextView;

    .line 205
    const v14, 0x7f0902c1

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_checkbox:Landroid/widget/ImageView;

    .line 206
    const v14, 0x7f0902bc

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    .line 207
    const v14, 0x7f0902bd

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    .line 208
    const v14, 0x7f0902c2

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    .line 209
    const v14, 0x7f0902ba

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    goto/16 :goto_1

    .line 212
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x7f030084

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 213
    const v14, 0x7f0902c9

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_child_three:Landroid/widget/LinearLayout;

    .line 214
    const v14, 0x7f0902ce

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_child_name:Landroid/widget/TextView;

    .line 215
    const v14, 0x7f0902cf

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_child_size:Landroid/widget/TextView;

    .line 216
    const v14, 0x7f0902cd

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_icon:Landroid/widget/ImageView;

    .line 217
    const v14, 0x7f0902d0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_checkBox:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 222
    .end local v8    # "holder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;

    .restart local v8    # "holder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;
    goto/16 :goto_2

    .line 238
    .restart local v5    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    :cond_4
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 246
    :cond_5
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_size:Landroid/widget/TextView;

    iget-wide v0, v7, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    iget-object v15, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->tip:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCacheOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;I)Landroid/view/View$OnLongClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_4

    .line 252
    :cond_6
    const-string v14, "adsdk"

    iget-object v15, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 253
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    const v15, 0x7f02004e

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 261
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installedApp://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_5

    .line 264
    .end local v5    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    :cond_8
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    if-eqz v14, :cond_9

    move-object v11, v7

    .line 265
    check-cast v11, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    .line 266
    .local v11, "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    const v15, 0x7f02004e

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    const v15, 0x7f0b00a0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 270
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getResidualOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getResidualOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)Landroid/view/View$OnLongClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_6

    .line 272
    .end local v11    # "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    :cond_9
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildApk;

    if-eqz v14, :cond_b

    .line 273
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object v4, v7

    .line 275
    check-cast v4, Lcom/market2345/dumpclean/mode/JunkChildApk;

    .line 276
    .local v4, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unInstalledApp://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v4, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 277
    iget-object v13, v4, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionName:Ljava/lang/String;

    .line 278
    .local v13, "versionName":Ljava/lang/String;
    iget v9, v4, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    .line 279
    .local v9, "installType":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v0, v4, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    if-gez v14, :cond_a

    .line 280
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b000a

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_7
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getApkOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getApkOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnLongClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_6

    .line 282
    :cond_a
    packed-switch v9, :pswitch_data_1

    goto :goto_7

    .line 284
    :pswitch_2
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 287
    :pswitch_3
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 290
    :pswitch_4
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 293
    :pswitch_5
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 296
    :pswitch_6
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0007

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 304
    .end local v4    # "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    .end local v9    # "installType":I
    .end local v13    # "versionName":Ljava/lang/String;
    :cond_b
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v14, :cond_2

    move-object v10, v7

    .line 305
    check-cast v10, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .line 307
    .local v10, "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->fl_junk_subscript:Landroid/widget/FrameLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    invoke-virtual {v10}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v14

    iget v14, v14, Lcom/market2345/model/InstalledApp;->flag:I

    if-nez v14, :cond_d

    .line 309
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    const v15, 0x7f0b0153

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :cond_c
    :goto_8
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getRAMOnClickListener(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;I)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installedApp://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    check-cast v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .end local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-virtual {v7}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 319
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_junk_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getRAMOnLongClickListener(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;)Landroid/view/View$OnLongClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_6

    .line 312
    .restart local v7    # "childrenItem":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_d
    invoke-virtual {v10}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v14

    iget v14, v14, Lcom/market2345/model/InstalledApp;->flag:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 313
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_junk_tip:Landroid/widget/TextView;

    const v15, 0x7f0b0167

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_junk_icon_small:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 323
    .end local v10    # "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_e
    instance-of v14, v7, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    if-eqz v14, :cond_2

    move-object v6, v7

    .line 324
    check-cast v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 325
    .local v6, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_child_name:Landroid/widget/TextView;

    iget-object v15, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->tv_child_size:Landroid/widget/TextView;

    iget-wide v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget v14, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->type:I

    if-nez v14, :cond_f

    .line 328
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_checkBox:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_child_three:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_child_three:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installedApp://"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_icon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 333
    :cond_f
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_checkBox:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_icon:Landroid/widget/ImageView;

    const v15, 0x7f02019c

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    iget-object v15, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_checkBox:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_10

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 336
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_child_three:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildOfChildOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->ll_child_three:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildOfChildOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;I)Landroid/view/View$OnLongClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 338
    iget-object v14, v8, Lcom/market2345/dumpclean/ExpandableListViewAdapter$ViewHolder;->iv_child_checkBox:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildOfChildCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;II)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 335
    :cond_10
    const/4 v14, 0x0

    goto :goto_9

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 282
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 166
    :goto_0
    return v1

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 159
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "wdh"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 163
    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 98
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 106
    .local v1, "groupItem":Lcom/market2345/dumpclean/mode/JunkGroup;
    const/4 v3, 0x0

    .line 107
    .local v3, "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    if-nez p3, :cond_0

    .line 108
    new-instance v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;

    .end local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    invoke-direct {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;-><init>()V

    .line 109
    .restart local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030083

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 110
    const v4, 0x7f0902c6

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupNameTV:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f0902c7

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupSizeTV:Landroid/widget/TextView;

    .line 112
    const v4, 0x7f0902c5

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupImg:Landroid/widget/ImageView;

    .line 113
    const v4, 0x7f0902c8

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p3, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    :goto_0
    iget-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupCb:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getGroupCheckBoxClickListener(Lcom/market2345/dumpclean/mode/JunkGroup;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupNameTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupSizeTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz p2, :cond_1

    .line 122
    iget-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupImg:Landroid/widget/ImageView;

    const v5, 0x7f0201a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_1
    invoke-direct {p0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->checkSelect(Lcom/market2345/dumpclean/mode/JunkGroup;)I

    move-result v2

    .line 127
    .local v2, "select":I
    invoke-virtual {v3, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->setSelect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "groupItem":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v2    # "select":I
    .end local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    :goto_2
    if-nez p1, :cond_2

    .line 133
    invoke-virtual {p3, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    :goto_3
    return-object p3

    .line 116
    .restart local v1    # "groupItem":Lcom/market2345/dumpclean/mode/JunkGroup;
    .restart local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    check-cast v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;

    .restart local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    goto :goto_0

    .line 124
    :cond_1
    iget-object v4, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;->groupImg:Landroid/widget/ImageView;

    const v5, 0x7f0201a4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    .end local v1    # "groupItem":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v3    # "viewHolder":Lcom/market2345/dumpclean/ExpandableListViewAdapter$GroupViewHolder;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p3, v8, v4, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged(Z)V
    .locals 6
    .param p1, "isRefreshData"    # Z

    .prologue
    .line 839
    if-eqz p1, :cond_5

    .line 840
    iget-object v5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 841
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 842
    .local v1, "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 843
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    .line 846
    .local v0, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 847
    .local v4, "junkChild":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v5, v4, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v5, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v5, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 848
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v0    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v1    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    .end local v4    # "junkChild":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_5
    invoke-virtual {p0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged()V

    .line 857
    return-void
.end method
