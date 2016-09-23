.class final Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;
.super Ljava/lang/Object;
.source "ZhuShouUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sendDeviceInfoWifi(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/phonemanager2345/model/PCInfo;

.field final synthetic val$send:Z


# direct methods
.method constructor <init>(Lcom/phonemanager2345/model/PCInfo;Z)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$info:Lcom/phonemanager2345/model/PCInfo;

    iput-boolean p2, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$send:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 504
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$info:Lcom/phonemanager2345/model/PCInfo;

    iget-object v2, v2, Lcom/phonemanager2345/model/PCInfo;->ips:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 505
    .local v1, "ip":Ljava/lang/String;
    const-string v2, "ip"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$info:Lcom/phonemanager2345/model/PCInfo;

    iget v2, v2, Lcom/phonemanager2345/model/PCInfo;->port:I

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$info:Lcom/phonemanager2345/model/PCInfo;

    iget v3, v3, Lcom/phonemanager2345/model/PCInfo;->minVersionCode:I

    iget-boolean v4, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$1;->val$send:Z

    # invokes: Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sendInfos(Ljava/lang/String;IIZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->access$000(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 508
    .end local v1    # "ip":Ljava/lang/String;
    :cond_0
    return-void
.end method
