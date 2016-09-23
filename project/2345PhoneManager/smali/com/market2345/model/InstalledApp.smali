.class public Lcom/market2345/model/InstalledApp;
.super Ljava/lang/Object;
.source "InstalledApp.java"


# static fields
.field public static final APK_SYS:I = 0x0

.field public static final APK_USER:I = 0x1


# instance fields
.field public appName:Ljava/lang/String;

.field public canMove:I

.field public flag:I

.field public flags:I

.field public iconSize:I

.field public iconUrl:Ljava/lang/String;

.field public isCanMoveGeted:Z

.field public isLatestVersion:Z

.field public lastUpdateTime:J

.field public latestSize:Ljava/lang/String;

.field public latestVersionCode:I

.field public latestVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public signatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public size:Ljava/lang/String;

.field public softId:I

.field public softName:Ljava/lang/String;

.field public softUrl:Ljava/lang/String;

.field public store:I

.field public storeLocation:Ljava/lang/String;

.field public totalFileSize:J

.field public uid:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->size:Ljava/lang/String;

    .line 33
    iput-wide v4, p0, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    .line 35
    iput-wide v4, p0, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    .line 41
    iput v2, p0, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 52
    iput-boolean v1, p0, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    .line 54
    iput-boolean v2, p0, Lcom/market2345/model/InstalledApp;->isLatestVersion:Z

    .line 85
    iput v1, p0, Lcom/market2345/model/InstalledApp;->flags:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/model/InstalledApp;->size:Ljava/lang/String;

    .line 33
    iput-wide v4, p0, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    .line 35
    iput-wide v4, p0, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    .line 41
    iput v2, p0, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 52
    iput-boolean v1, p0, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    .line 54
    iput-boolean v2, p0, Lcom/market2345/model/InstalledApp;->isLatestVersion:Z

    .line 85
    iput v1, p0, Lcom/market2345/model/InstalledApp;->flags:I

    .line 94
    iput-object p1, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 95
    iput p3, p0, Lcom/market2345/model/InstalledApp;->versionCode:I

    .line 96
    iput-object p2, p0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public toJSONObject1()Lcom/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 102
    .local v0, "object":Lcom/google/gson/JsonObject;
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "versionName"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "versionCode"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 105
    const-string v1, "iconSize"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->iconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 106
    const-string v1, "appName"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "size"

    iget-wide v2, p0, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 108
    const-string v1, "canMove"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->canMove:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 109
    const-string v1, "store"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->store:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 110
    const-string v1, "storeLocation"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "flag"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 113
    iget-boolean v1, p0, Lcom/market2345/model/InstalledApp;->isLatestVersion:Z

    if-nez v1, :cond_0

    .line 114
    const-string v1, "softId"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->softId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 115
    const-string v1, "softUrl"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->softUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "softName"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->softName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "latestSize"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->latestSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "latestVersionCode"

    iget v2, p0, Lcom/market2345/model/InstalledApp;->latestVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 119
    const-string v1, "latestVersionName"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->latestVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "iconUrl"

    iget-object v2, p0, Lcom/market2345/model/InstalledApp;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-object v0
.end method
