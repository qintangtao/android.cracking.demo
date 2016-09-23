.class public abstract Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;
.super Ljava/lang/Object;
.source "IProgressCallback.java"

# interfaces
.implements Lcom/market2345/download/interfaces/IProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/interfaces/IProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProgressCallbackImpl"
.end annotation


# instance fields
.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->mKeyedTags:Landroid/util/SparseArray;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 35
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;->setKeyedTag(ILjava/lang/Object;)V

    .line 41
    return-void
.end method
