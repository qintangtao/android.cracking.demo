.class Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;
.super Ljava/lang/Object;
.source "ContactsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/contacts/ContactsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerHolder"
.end annotation


# static fields
.field private static manager:Lcom/market2345/contacts/ContactsManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/market2345/contacts/ContactsManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/market2345/contacts/ContactsManagerImpl;-><init>(Lcom/market2345/contacts/ContactsManagerImpl$1;)V

    sput-object v0, Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->manager:Lcom/market2345/contacts/ContactsManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/market2345/contacts/ContactsManagerImpl;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/market2345/contacts/ContactsManagerImpl$ManagerHolder;->manager:Lcom/market2345/contacts/ContactsManagerImpl;

    return-object v0
.end method
