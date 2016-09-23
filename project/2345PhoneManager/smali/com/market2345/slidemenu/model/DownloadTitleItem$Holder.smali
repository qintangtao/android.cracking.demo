.class Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;
.super Ljava/lang/Object;
.source "DownloadTitleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/model/DownloadTitleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public deleteAllText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/market2345/slidemenu/model/DownloadTitleItem;

.field public titleText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/slidemenu/model/DownloadTitleItem;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;->this$0:Lcom/market2345/slidemenu/model/DownloadTitleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/slidemenu/model/DownloadTitleItem;Lcom/market2345/slidemenu/model/DownloadTitleItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/slidemenu/model/DownloadTitleItem;
    .param p2, "x1"    # Lcom/market2345/slidemenu/model/DownloadTitleItem$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/model/DownloadTitleItem$Holder;-><init>(Lcom/market2345/slidemenu/model/DownloadTitleItem;)V

    return-void
.end method
