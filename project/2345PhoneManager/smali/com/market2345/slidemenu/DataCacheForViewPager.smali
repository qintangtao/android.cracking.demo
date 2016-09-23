.class public Lcom/market2345/slidemenu/DataCacheForViewPager;
.super Ljava/lang/Object;
.source "DataCacheForViewPager.java"


# static fields
.field public static final COLLECTION:Ljava/lang/String; = "collection"

.field public static final DECORVIEW_TOP:Ljava/lang/String; = "decorview_top"

.field public static final DOWNLOAD_WIDTH:Ljava/lang/String; = "download_width"

.field public static final IMAGES_IDS:Ljava/lang/String; = "images_ids"

.field public static final IMAGE_IDS:Ljava/lang/String; = "image_ids"

.field public static Intercept:Z = false

.field public static final MENU_HEIGHT:Ljava/lang/String; = "menu_height"

.field public static final MENU_WIDHT:Ljava/lang/String; = "menu_width"

.field public static final MYDAPATER:Ljava/lang/String; = "MYDAPATER"

.field public static final PAGE_COMMENT:Ljava/lang/String; = "page_comment"

.field public static final PHOTOVIEW_HIGHT:Ljava/lang/String; = "photo_hight"

.field public static final PHOTOVIEW_WIDTH:Ljava/lang/String; = "photo_width"

.field public static final RANK_DOWNLOAD:Ljava/lang/String; = "rank_download"

.field public static final RANK_RANK:Ljava/lang/String; = "rank_rank"

.field public static final RANK_RISE:Ljava/lang/String; = "rank_rise"

.field public static final SCALE:Ljava/lang/String; = "scale"

.field public static final SPECIAL_DATA:Ljava/lang/String; = "special_data"

.field public static final SPECIAL_TITLE:Ljava/lang/String; = "special_title"

.field public static final SPECIAL_TOP:Ljava/lang/String; = "special_top"

.field public static final TITLE_WIDTH:Ljava/lang/String; = "title_width"

.field public static final VIEWPAGER_HEIGHT:Ljava/lang/String; = "viewpager_height"

.field public static final VIEWPAGER_TOP:Ljava/lang/String; = "viewpager_top"

.field public static final WINDOW_HEIGHT:Ljava/lang/String; = "window_height"

.field public static final WINDOW_WIDTH:Ljava/lang/String; = "window_width"

.field private static cache:Lcom/market2345/slidemenu/DataCacheForViewPager;

.field private static datas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFilled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->Intercept:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/slidemenu/DataCacheForViewPager;->isFilled:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->datas:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public static getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->cache:Lcom/market2345/slidemenu/DataCacheForViewPager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/market2345/slidemenu/DataCacheForViewPager;

    invoke-direct {v0}, Lcom/market2345/slidemenu/DataCacheForViewPager;-><init>()V

    sput-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->cache:Lcom/market2345/slidemenu/DataCacheForViewPager;

    .line 82
    :cond_0
    sget-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->cache:Lcom/market2345/slidemenu/DataCacheForViewPager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->datas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    return-void
.end method

.method public fill(Landroid/app/Activity;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 103
    invoke-virtual {p0}, Lcom/market2345/slidemenu/DataCacheForViewPager;->isFilled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v6, "scale":F
    const/high16 v9, 0x42b00000    # 88.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v8, v10

    .line 107
    .local v8, "top":I
    const/high16 v9, 0x43070000    # 135.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v1, v10

    .line 108
    .local v1, "height":I
    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v5, v10

    .line 109
    .local v5, "menuWidth":I
    const/high16 v9, 0x42400000    # 48.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v4, v10

    .line 110
    .local v4, "menuHight":I
    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v9, v10

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0202ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int v0, v9, v10

    .line 111
    .local v0, "downloadWidth":I
    const/high16 v9, 0x42960000    # 75.0f

    mul-float/2addr v9, v6

    float-to-double v10, v9

    add-double/2addr v10, v12

    double-to-int v7, v10

    .line 112
    .local v7, "titleWidth":I
    const-string v9, "scale"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v9, "viewpager_top"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v9, "viewpager_height"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v9, "menu_width"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v9, "menu_height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v9, "download_width"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v9, "title_width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 120
    .local v3, "mScreenWidth":I
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 121
    .local v2, "mScreenHeight":I
    const-string v9, "window_width"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v9, "window_height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/market2345/slidemenu/DataCacheForViewPager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/market2345/slidemenu/DataCacheForViewPager;->isFilled:Z

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->datas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFilled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/market2345/slidemenu/DataCacheForViewPager;->isFilled:Z

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    sget-object v0, Lcom/market2345/slidemenu/DataCacheForViewPager;->datas:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method
