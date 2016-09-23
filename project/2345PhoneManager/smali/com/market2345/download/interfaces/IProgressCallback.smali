.class public interface abstract Lcom/market2345/download/interfaces/IProgressCallback;
.super Ljava/lang/Object;
.source "IProgressCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/interfaces/IProgressCallback$ProgressCallbackImpl;
    }
.end annotation


# virtual methods
.method public abstract getTag(I)Ljava/lang/Object;
.end method

.method public abstract setTag(ILjava/lang/Object;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract showCurrentSize(Ljava/lang/String;)V
.end method

.method public abstract showProgress(F)V
.end method

.method public abstract showSpeed(Ljava/lang/String;)V
.end method

.method public abstract showStatus(Lcom/market2345/download/DownloadInfo;)V
.end method
