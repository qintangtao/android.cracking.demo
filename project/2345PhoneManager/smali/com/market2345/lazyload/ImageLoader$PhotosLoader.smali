.class Lcom/market2345/lazyload/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lazyload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/market2345/lazyload/ImageLoader;


# direct methods
.method constructor <init>(Lcom/market2345/lazyload/ImageLoader;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V
    .locals 0
    .param p2, "photoToLoad"    # Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    .line 213
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 221
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v3, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v3, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;

    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v2, v1, v3}, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;-><init>(Lcom/market2345/lazyload/ImageLoader;Landroid/graphics/Bitmap;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    .line 244
    .local v0, "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    .end local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    # invokes: Lcom/market2345/lazyload/ImageLoader;->getBitmap(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/market2345/lazyload/ImageLoader;->access$000(Lcom/market2345/lazyload/ImageLoader;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_4

    .line 229
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    # getter for: Lcom/market2345/lazyload/ImageLoader;->memoryCache:Lcom/market2345/lazyload/MemoryCache;
    invoke-static {v2}, Lcom/market2345/lazyload/ImageLoader;->access$100(Lcom/market2345/lazyload/ImageLoader;)Lcom/market2345/lazyload/MemoryCache;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/market2345/lazyload/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v3, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 240
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    :cond_5
    new-instance v0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;

    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v2, v1, v3}, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;-><init>(Lcom/market2345/lazyload/ImageLoader;Landroid/graphics/Bitmap;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    .line 244
    .restart local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v2, :cond_6

    .line 246
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    .line 248
    :cond_6
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 232
    .end local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    :catch_0
    move-exception v2

    .line 238
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v3, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 240
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v2, v3}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    :cond_7
    new-instance v0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;

    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v2, v1, v3}, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;-><init>(Lcom/market2345/lazyload/ImageLoader;Landroid/graphics/Bitmap;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    .line 244
    .restart local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v2, :cond_8

    .line 246
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    .line 248
    :cond_8
    iget-object v2, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v2, v2, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 238
    .end local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;->type:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v4, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v3, v4}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 240
    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v4, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/market2345/lazyload/ImageLoader;->imageViewReused(Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    :cond_9
    new-instance v0, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v4, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->photoToLoad:Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;

    invoke-direct {v0, v3, v1, v4}, Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;-><init>(Lcom/market2345/lazyload/ImageLoader;Landroid/graphics/Bitmap;Lcom/market2345/lazyload/ImageLoader$PhotoToLoad;)V

    .line 244
    .restart local v0    # "bd":Lcom/market2345/lazyload/ImageLoader$BitmapDisplayer;
    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, v3, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    if-nez v3, :cond_a

    .line 246
    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    .line 248
    :cond_a
    iget-object v3, p0, Lcom/market2345/lazyload/ImageLoader$PhotosLoader;->this$0:Lcom/market2345/lazyload/ImageLoader;

    iget-object v3, v3, Lcom/market2345/lazyload/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    throw v2
.end method
