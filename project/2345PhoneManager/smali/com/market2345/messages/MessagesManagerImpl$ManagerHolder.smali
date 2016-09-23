.class Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;
.super Ljava/lang/Object;
.source "MessagesManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/MessagesManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerHolder"
.end annotation


# static fields
.field private static manager:Lcom/market2345/messages/MessagesManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/market2345/messages/MessagesManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/messages/MessagesManagerImpl;-><init>(Lcom/market2345/messages/MessagesManagerImpl$1;)V

    sput-object v0, Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->manager:Lcom/market2345/messages/MessagesManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/market2345/messages/MessagesManagerImpl;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/market2345/messages/MessagesManagerImpl$ManagerHolder;->manager:Lcom/market2345/messages/MessagesManagerImpl;

    return-object v0
.end method
