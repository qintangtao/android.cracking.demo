.class final Lcom/phonemanager2345/zhushou/CommandHander$4;
.super Ljava/lang/Object;
.source "CommandHander.java"

# interfaces
.implements Lcom/market2345/fileHandle/FileSearchManager$SearchResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/CommandHander;->searchFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/BufferedOutputStream;


# direct methods
.method constructor <init>(Ljava/io/BufferedOutputStream;)V
    .locals 0

    .prologue
    .line 3343
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/CommandHander$4;->val$out:Ljava/io/BufferedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchOver(Lcom/market2345/fileHandle/model/SearchResult;)V
    .locals 3
    .param p1, "result"    # Lcom/market2345/fileHandle/model/SearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3349
    sget-object v1, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3350
    .local v0, "resultOut":Ljava/lang/String;
    const-string v1, "janan"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3352
    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/CommandHander$4;->val$out:Ljava/io/BufferedOutputStream;

    # invokes: Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V
    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->access$200(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 3355
    :cond_0
    return-void
.end method
