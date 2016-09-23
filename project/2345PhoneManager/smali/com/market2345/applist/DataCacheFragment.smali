.class public abstract Lcom/market2345/applist/DataCacheFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "DataCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/DataCacheFragment$ConfirmData;
    }
.end annotation


# instance fields
.field confirm:Lcom/market2345/applist/DataCacheFragment$ConfirmData;

.field public supportTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 20
    new-instance v0, Lcom/market2345/applist/DataCacheFragment$ConfirmData;

    invoke-direct {v0, p0}, Lcom/market2345/applist/DataCacheFragment$ConfirmData;-><init>(Lcom/market2345/applist/DataCacheFragment;)V

    iput-object v0, p0, Lcom/market2345/applist/DataCacheFragment;->confirm:Lcom/market2345/applist/DataCacheFragment$ConfirmData;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract confirmDataSaveNeeded(Lcom/market2345/applist/DataCacheFragment$ConfirmData;)V
.end method

.method public abstract getSavedData(Lcom/market2345/applist/DataCacheFragment$ConfirmData;)Ljava/lang/String;
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/applist/DataCacheFragment;->supportTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/applist/DataCacheFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/DataCacheFragment;->supportTag:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/DataCacheFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/market2345/applist/DataCacheFragment;->confirm:Lcom/market2345/applist/DataCacheFragment$ConfirmData;

    invoke-virtual {p0, v0}, Lcom/market2345/applist/DataCacheFragment;->confirmDataSaveNeeded(Lcom/market2345/applist/DataCacheFragment$ConfirmData;)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract saveData(Lcom/market2345/applist/DataCacheFragment$ConfirmData;Ljava/lang/String;)V
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/market2345/applist/DataCacheFragment;->supportTag:Ljava/lang/String;

    .line 26
    return-void
.end method
