.class Lcom/market2345/dumpclean/ScanHelp$3;
.super Ljava/lang/Object;
.source "ScanHelp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ScanHelp;->initDataFromScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/market2345/dumpclean/mode/JunkChild;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ScanHelp;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ScanHelp;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp$3;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/market2345/dumpclean/mode/JunkChild;Lcom/market2345/dumpclean/mode/JunkChild;)I
    .locals 5
    .param p1, "lhs"    # Lcom/market2345/dumpclean/mode/JunkChild;
    .param p2, "rhs"    # Lcom/market2345/dumpclean/mode/JunkChild;

    .prologue
    const/4 v2, 0x0

    .line 290
    instance-of v3, p1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 291
    check-cast v0, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .local v0, "ram1":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    move-object v1, p2

    .line 292
    check-cast v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .line 293
    .local v1, "ram2":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v3

    iget v3, v3, Lcom/market2345/model/InstalledApp;->flag:I

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v4

    iget v4, v4, Lcom/market2345/model/InstalledApp;->flag:I

    if-le v3, v4, :cond_1

    .line 294
    const/4 v2, -0x1

    .line 301
    .end local v0    # "ram1":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .end local v1    # "ram2":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_0
    :goto_0
    return v2

    .line 295
    .restart local v0    # "ram1":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .restart local v1    # "ram2":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v3

    iget v3, v3, Lcom/market2345/model/InstalledApp;->flag:I

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v4

    iget v4, v4, Lcom/market2345/model/InstalledApp;->flag:I

    if-eq v3, v4, :cond_0

    .line 298
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p1, Lcom/market2345/dumpclean/mode/JunkChild;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/market2345/dumpclean/mode/JunkChild;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/market2345/dumpclean/ScanHelp$3;->compare(Lcom/market2345/dumpclean/mode/JunkChild;Lcom/market2345/dumpclean/mode/JunkChild;)I

    move-result v0

    return v0
.end method
