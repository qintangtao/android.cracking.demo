.class Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/autocheck/ServiceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static serviceHolder:Lcom/market2345/autocheck/ServiceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/market2345/autocheck/ServiceHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/autocheck/ServiceHolder;-><init>(Lcom/market2345/autocheck/ServiceHolder$1;)V

    sput-object v0, Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->serviceHolder:Lcom/market2345/autocheck/ServiceHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/market2345/autocheck/ServiceHolder;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/market2345/autocheck/ServiceHolder$InstanceHolder;->serviceHolder:Lcom/market2345/autocheck/ServiceHolder;

    return-object v0
.end method
