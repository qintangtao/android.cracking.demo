.class public Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
.super Lcom/market2345/dumpclean/mode/JunkChild;
.source "InstalledAppAndRAM.java"


# static fields
.field public static lastCleanTime:J


# instance fields
.field public app:Lcom/market2345/model/InstalledApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/market2345/dumpclean/mode/JunkChild;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/market2345/model/InstalledApp;)V
    .locals 0
    .param p1, "app"    # Lcom/market2345/model/InstalledApp;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/market2345/dumpclean/mode/JunkChild;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->app:Lcom/market2345/model/InstalledApp;

    .line 23
    return-void
.end method


# virtual methods
.method public getApp()Lcom/market2345/model/InstalledApp;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->app:Lcom/market2345/model/InstalledApp;

    return-object v0
.end method

.method public setApp(Lcom/market2345/model/InstalledApp;)V
    .locals 0
    .param p1, "app"    # Lcom/market2345/model/InstalledApp;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->app:Lcom/market2345/model/InstalledApp;

    .line 18
    return-void
.end method
