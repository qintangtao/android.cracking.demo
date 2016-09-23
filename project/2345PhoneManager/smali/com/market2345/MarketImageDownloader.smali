.class public Lcom/market2345/MarketImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.source "MarketImageDownloader.java"


# static fields
.field public static final INSTALLED_APP_SCHEME:Ljava/lang/String; = "installedApp://"

.field public static final UNINSTALLED_APP_SCHEME:Ljava/lang/String; = "unInstalledApp://"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectTimeout"    # I
    .param p3, "readTimeout"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    .line 40
    return-void
.end method


# virtual methods
.method public bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v1, "is":Ljava/io/InputStream;
    return-object v1
.end method

.method public drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    return-object v0

    .line 97
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public drawable2InputStream(Landroid/graphics/drawable/Drawable;)Ljava/io/InputStream;
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/market2345/MarketImageDownloader;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v3

    return-object v3

    .line 87
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/market2345/MarketImageDownloader;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 9
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v7, "installedApp://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .local v4, "install":Z
    if-nez v4, :cond_0

    const-string v7, "unInstalledApp://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 46
    :cond_0
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/MarketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 50
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    .line 51
    :try_start_0
    const-string v7, "com.android.system.cache"

    const-string v8, "installedApp://"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 52
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/MarketApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0202f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/MarketImageDownloader;->drawable2InputStream(Landroid/graphics/drawable/Drawable;)Ljava/io/InputStream;

    move-result-object v7

    .line 79
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v7

    .line 54
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v7, "installedApp://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 55
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    .line 56
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 57
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/market2345/MarketImageDownloader;->drawable2InputStream(Landroid/graphics/drawable/Drawable;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    .line 61
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    const-string v7, "unInstalledApp://"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 63
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3

    .line 64
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 69
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 71
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 72
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/market2345/MarketImageDownloader;->drawable2InputStream(Landroid/graphics/drawable/Drawable;)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 75
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 79
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;->getStreamFromOtherSource(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0
.end method
