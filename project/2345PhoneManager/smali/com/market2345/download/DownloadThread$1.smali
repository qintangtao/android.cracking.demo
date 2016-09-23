.class Lcom/market2345/download/DownloadThread$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadThread;->getPatchUrlIfHas(Lcom/market2345/model/InstalledApp;)Lcom/market2345/model/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/market2345/model/App;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadThread;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadThread;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/market2345/download/DownloadThread$1;->this$0:Lcom/market2345/download/DownloadThread;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
