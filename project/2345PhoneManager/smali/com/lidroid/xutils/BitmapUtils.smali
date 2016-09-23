.class public Lcom/lidroid/xutils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Lcom/lidroid/xutils/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    }
.end annotation


# instance fields
.field private cancelAllTask:Z

.field private context:Landroid/content/Context;

.field private defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private pauseTask:Z

.field private final pauseTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 46
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    .line 65
    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCachePercent"    # F
    .param p4, "diskCacheSize"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    .line 87
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCachePath"    # Ljava/lang/String;
    .param p3, "memoryCacheSize"    # I
    .param p4, "diskCacheSize"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    .line 76
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/BitmapUtils;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/BitmapUtils;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-object v0
.end method

.method static synthetic access$4(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 1

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    return-object v0
.end method

.method private static bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p2, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    const/4 v2, 0x1

    .line 384
    invoke-static {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    .line 386
    .local v0, "oldLoadTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    if-eqz v0, :cond_1

    .line 387
    # getter for: Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "oldUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 389
    :cond_0
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    .line 394
    .end local v1    # "oldUrl":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method private static getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "container":Landroid/view/View;, "TT;"
    .local p1, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    if-eqz p0, :cond_0

    .line 374
    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 376
    check-cast v0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    .line 377
    .local v0, "asyncDrawable":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v2

    .line 380
    .end local v0    # "asyncDrawable":Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;, "Lcom/lidroid/xutils/bitmap/core/AsyncDrawable<TT;>;"
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 353
    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    .line 354
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v1

    .line 357
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache()V

    .line 278
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache()V

    .line 286
    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache()V

    .line 282
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public closeCache()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->closeCache()V

    .line 306
    return-void
.end method

.method public configBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "listener"    # Lcom/lidroid/xutils/bitmap/BitmapCacheListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V

    .line 199
    return-object p0
.end method

.method public configDefaultAutoRotation(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "autoRotation"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAutoRotation(Z)V

    .line 139
    return-object p0
.end method

.method public configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 149
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(II)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 124
    return-object p0
.end method

.method public configDefaultBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 129
    return-object p0
.end method

.method public configDefaultCacheExpiry(J)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "defaultExpiry"    # J

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultCacheExpiry(J)V

    .line 164
    return-object p0
.end method

.method public configDefaultConnectTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultConnectTimeout(I)V

    .line 169
    return-object p0
.end method

.method public configDefaultDisplayConfig(Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 0
    .param p1, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 154
    return-object p0
.end method

.method public configDefaultImageLoadAnimation(Landroid/view/animation/Animation;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 134
    return-object p0
.end method

.method public configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-object p0
.end method

.method public configDefaultLoadingImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-object p0
.end method

.method public configDefaultReadTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultReadTimeout(I)V

    .line 174
    return-object p0
.end method

.method public configDefaultShowOriginal(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "showOriginal"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setShowOriginal(Z)V

    .line 144
    return-object p0
.end method

.method public configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheEnabled(Z)V

    .line 189
    return-object p0
.end method

.method public configDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 194
    return-object p0
.end method

.method public configDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "downloader"    # Lcom/lidroid/xutils/bitmap/download/Downloader;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V

    .line 159
    return-object p0
.end method

.method public configMemoryCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheEnabled(Z)V

    .line 184
    return-object p0
.end method

.method public configThreadPoolSize(I)Lcom/lidroid/xutils/BitmapUtils;
    .locals 1
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setThreadPoolSize(I)V

    .line 179
    return-object p0
.end method

.method public display(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 206
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "container":Landroid/view/View;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 210
    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 19
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "displayConfig"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p4, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-nez p4, :cond_2

    .line 222
    new-instance p4, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;

    .end local p4    # "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    invoke-direct/range {p4 .. p4}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    .line 225
    .restart local p4    # "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    :cond_2
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_4

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->cloneNew()Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    move-result-object p3

    .line 230
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v18

    .line 231
    .local v18, "size":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    invoke-virtual/range {v18 .. v18}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearAnimation()V

    .line 235
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 236
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 241
    :cond_5
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 246
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 247
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    .line 253
    sget-object v9, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    .line 248
    invoke-virtual/range {v4 .. v9}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_0

    .line 254
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/BitmapUtils;->bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    new-instance v8, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;-><init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 259
    .local v8, "loadTask":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapLoadExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v16

    .line 260
    .local v16, "executor":Lcom/lidroid/xutils/task/PriorityExecutor;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 261
    .local v15, "diskCacheFile":Ljava/io/File;
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v14, 0x1

    .line 262
    .local v14, "diskCacheExist":Z
    :goto_1
    if-eqz v14, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/lidroid/xutils/task/PriorityExecutor;->isBusy()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v16

    .line 266
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 267
    .local v17, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v8}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    .line 270
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v4}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    goto/16 :goto_0

    .line 261
    .end local v14    # "diskCacheExist":Z
    .end local v17    # "loadingDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "container":Landroid/view/View;, "TT;"
    .local p3, "callBack":Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;, "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    .line 214
    return-void
.end method

.method public flushCache()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->flushCache()V

    .line 302
    return-void
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 314
    iget-object p2, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 339
    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils;->flushCache()V

    .line 340
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    .line 345
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 345
    monitor-exit v1

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportCancel()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public supportResume()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method
