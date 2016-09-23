.class public Lcom/market2345/messages/MessagesContext;
.super Ljava/lang/Object;
.source "MessagesContext.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private manager:Lcom/market2345/messages/MessagesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/market2345/messages/MessagesContext;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public getMessagesManager()Lcom/market2345/messages/MessagesManager;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/market2345/messages/MessagesContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/messages/MessagesManagerImpl;->getInstance(Landroid/content/Context;)Lcom/market2345/messages/MessagesManager;

    move-result-object v0

    return-object v0
.end method
