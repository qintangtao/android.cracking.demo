.class Lcom/market2345/home/HomeTabActivity$8;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$8;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1022
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1023
    new-instance v1, Ljava/io/File;

    sget-object v12, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v1, "cacheDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1030
    .local v2, "current":J
    const-wide/32 v6, 0x36ee80

    .line 1031
    .local v6, "distance":J
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 1032
    .local v9, "files":[Ljava/io/File;
    if-eqz v9, :cond_2

    array-length v12, v9

    const/16 v13, 0xc8

    if-lt v12, v13, :cond_2

    .line 1033
    move-object v0, v9

    .local v0, "arr$":[Ljava/io/File;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v8, v0, v10

    .line 1034
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v4, v2, v12

    .line 1035
    .local v4, "d":J
    cmp-long v12, v4, v6

    if-ltz v12, :cond_0

    .line 1036
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1033
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1025
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "current":J
    .end local v4    # "d":J
    .end local v6    # "distance":J
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "files":[Ljava/io/File;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_1
    iget-object v12, p0, Lcom/market2345/home/HomeTabActivity$8;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v12}, Lcom/market2345/home/HomeTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "cacheDir":Ljava/io/File;
    goto :goto_0

    .line 1041
    :cond_2
    return-void
.end method
