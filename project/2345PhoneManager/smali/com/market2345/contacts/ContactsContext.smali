.class public Lcom/market2345/contacts/ContactsContext;
.super Ljava/lang/Object;
.source "ContactsContext.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private manager:Lcom/market2345/contacts/ContactsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/market2345/contacts/ContactsContext;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getContactsManger()Lcom/market2345/contacts/ContactsManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/market2345/contacts/ContactsContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/contacts/ContactsManagerImpl;->getInstance(Landroid/content/Context;)Lcom/market2345/contacts/ContactsManager;

    move-result-object v0

    return-object v0
.end method
