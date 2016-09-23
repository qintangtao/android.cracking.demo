.class public Lcom/market2345/ui/BaseFragmentfactory;
.super Ljava/lang/Object;
.source "BaseFragmentfactory.java"

# interfaces
.implements Lcom/market2345/ui/IBaseFragmentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
