.class Lcom/market2345/messages/data/Contact$ContactsCache$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/messages/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/messages/data/Contact$ContactsCache;

.field final synthetic val$c:Lcom/market2345/messages/data/Contact;


# direct methods
.method constructor <init>(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/market2345/messages/data/Contact$ContactsCache$1;->this$0:Lcom/market2345/messages/data/Contact$ContactsCache;

    iput-object p2, p0, Lcom/market2345/messages/data/Contact$ContactsCache$1;->val$c:Lcom/market2345/messages/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/market2345/messages/data/Contact$ContactsCache$1;->this$0:Lcom/market2345/messages/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/market2345/messages/data/Contact$ContactsCache$1;->val$c:Lcom/market2345/messages/data/Contact;

    # invokes: Lcom/market2345/messages/data/Contact$ContactsCache;->updateContact(Lcom/market2345/messages/data/Contact;)V
    invoke-static {v0, v1}, Lcom/market2345/messages/data/Contact$ContactsCache;->access$600(Lcom/market2345/messages/data/Contact$ContactsCache;Lcom/market2345/messages/data/Contact;)V

    .line 578
    return-void
.end method
