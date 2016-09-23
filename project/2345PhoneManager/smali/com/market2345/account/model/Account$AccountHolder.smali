.class Lcom/market2345/account/model/Account$AccountHolder;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/model/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountHolder"
.end annotation


# static fields
.field private static account:Lcom/market2345/account/model/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/market2345/account/model/Account;

    invoke-direct {v0}, Lcom/market2345/account/model/Account;-><init>()V

    sput-object v0, Lcom/market2345/account/model/Account$AccountHolder;->account:Lcom/market2345/account/model/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/market2345/account/model/Account;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/market2345/account/model/Account$AccountHolder;->account:Lcom/market2345/account/model/Account;

    return-object v0
.end method
