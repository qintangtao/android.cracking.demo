.class public Lcom/market2345/model/ForFirstPage;
.super Ljava/lang/Object;
.source "ForFirstPage.java"


# instance fields
.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/RecommendAd;",
            ">;"
        }
    .end annotation
.end field

.field public banners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/Banner;",
            ">;"
        }
    .end annotation
.end field

.field public currentPage:I

.field public ip:Ljava/lang/String;

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public response:Lcom/market2345/model/ResponseInfo;

.field public time:Ljava/lang/String;

.field public totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
