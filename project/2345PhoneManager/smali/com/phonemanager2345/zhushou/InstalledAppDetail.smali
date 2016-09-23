.class public Lcom/phonemanager2345/zhushou/InstalledAppDetail;
.super Lcom/market2345/model/InstalledApp;
.source "InstalledAppDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appName:Ljava/lang/String;

.field public canMove:I

.field public flag:I

.field public iconSize:I

.field public size:J

.field spite:[B

.field spite1:[B

.field spite2:[B

.field public store:I

.field public storeLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/market2345/model/InstalledApp;-><init>()V

    .line 60
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->spite:[B

    .line 62
    const-string v0, ":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->spite1:[B

    .line 64
    const-string v0, "\""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->spite2:[B

    return-void
.end method


# virtual methods
.method public toJSONObject1()Lcom/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 93
    .local v0, "object":Lcom/google/gson/JsonObject;
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "versionName"

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "versionCode"

    iget v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 97
    const-string v1, "iconSize"

    iget v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->iconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 98
    const-string v1, "appName"

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "size"

    iget-wide v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 100
    const-string v1, "canMove"

    iget v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->canMove:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 101
    const-string v1, "store"

    iget v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->store:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 102
    const-string v1, "storeLocation"

    iget-object v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->storeLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "flag"

    iget v2, p0, Lcom/phonemanager2345/zhushou/InstalledAppDetail;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 105
    return-object v0
.end method
