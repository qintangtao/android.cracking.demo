.class public Lcom/market2345/messages/MessagesManagerTestActivity;
.super Landroid/app/Activity;
.source "MessagesManagerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/market2345/messages/MessagesManagerTestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/MessagesManagerTestActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/messages/MessagesManagerTestActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/messages/MessagesManagerTestActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/market2345/messages/MessagesManagerTestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/market2345/messages/MessagesManagerTestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/messages/MessagesManagerTestActivity;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;

    invoke-direct {v0, p0}, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;-><init>(Lcom/market2345/messages/MessagesManagerTestActivity;)V

    .line 25
    .local v0, "task":Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/market2345/messages/MessagesManagerTestActivity$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method
