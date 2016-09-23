.class public Lcom/market2345/slidemenu/SlidingFragmentFactory;
.super Ljava/lang/Object;
.source "SlidingFragmentFactory.java"

# interfaces
.implements Lcom/market2345/ui/IBaseFragmentFactory;


# static fields
.field public static final DOWNLOADFRAGMENT:Ljava/lang/String; = "download"

.field public static final GAMEFRAGMENT:Ljava/lang/String; = "list"

.field public static final MANAGEMENTFRAGMENT:Ljava/lang/String; = "manage"

.field public static final RECOMMENDFRAGMENT:Ljava/lang/String; = "recommend"

.field public static final SOFTFRAGMENT:Ljava/lang/String; = "soft"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "frag":Lcom/market2345/ui/BaseFragment;
    const-string v1, "recommend"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance v0, Lcom/market2345/slidemenu/RecommendFragment;

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    invoke-direct {v0}, Lcom/market2345/slidemenu/RecommendFragment;-><init>()V

    .line 38
    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0, p1}, Lcom/market2345/ui/BaseFragment;->setSupportTag(Ljava/lang/String;)V

    .line 41
    :cond_1
    return-object v0

    .line 29
    :cond_2
    const-string v1, "soft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    new-instance v0, Lcom/market2345/slidemenu/SoftFragment;

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    invoke-direct {v0}, Lcom/market2345/slidemenu/SoftFragment;-><init>()V

    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    goto :goto_0

    .line 31
    :cond_3
    const-string v1, "manage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    new-instance v0, Lcom/market2345/slidemenu/ManagementFragment2;

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    invoke-direct {v0}, Lcom/market2345/slidemenu/ManagementFragment2;-><init>()V

    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    goto :goto_0

    .line 33
    :cond_4
    const-string v1, "list"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    new-instance v0, Lcom/market2345/slidemenu/GameFragment;

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    invoke-direct {v0}, Lcom/market2345/slidemenu/GameFragment;-><init>()V

    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    goto :goto_0

    .line 35
    :cond_5
    const-string v1, "download"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Lcom/market2345/slidemenu/DownloadFragment;

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    invoke-direct {v0}, Lcom/market2345/slidemenu/DownloadFragment;-><init>()V

    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    goto :goto_0
.end method
