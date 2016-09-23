.class final Lcom/phonemanager2345/zhushou/CommandHander$3;
.super Ljava/lang/Object;
.source "CommandHander.java"

# interfaces
.implements Lcom/market2345/fileHandle/FileCopyManager$ScheduleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/CommandHander;->copyFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
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
    .line 3310
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/CommandHander$3;->val$out:Ljava/io/BufferedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callbackSchedule(Lcom/market2345/fileHandle/model/CopySchedule;)V
    .locals 3
    .param p1, "schedule"    # Lcom/market2345/fileHandle/model/CopySchedule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3316
    sget-object v1, Lcom/phonemanager2345/zhushou/CommandHander;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3317
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3318
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/CommandHander$3;->val$out:Ljava/io/BufferedOutputStream;

    # invokes: Lcom/phonemanager2345/zhushou/CommandHander;->flushResult(Ljava/lang/String;ILjava/io/OutputStream;)V
    invoke-static {v0, v1, v2}, Lcom/phonemanager2345/zhushou/CommandHander;->access$200(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 3320
    :cond_0
    return-void
.end method
