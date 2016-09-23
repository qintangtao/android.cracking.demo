.class public Lcom/market2345/util/ZSEncryption;
.super Ljava/lang/Object;
.source "ZSEncryption.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "zsencryption"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decrypt([BI)Ljava/lang/String;
.end method

.method public static native encrypt(Ljava/lang/String;)[B
.end method

.method public static native init(Landroid/content/Context;)V
.end method
