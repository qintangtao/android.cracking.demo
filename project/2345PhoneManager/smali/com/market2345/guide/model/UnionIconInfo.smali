.class public Lcom/market2345/guide/model/UnionIconInfo;
.super Ljava/lang/Object;
.source "UnionIconInfo.java"


# static fields
.field private static info:Lcom/market2345/guide/model/UnionIconInfo;


# instance fields
.field public centerX:I

.field public centerY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticInstance()Lcom/market2345/guide/model/UnionIconInfo;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/market2345/guide/model/UnionIconInfo;->info:Lcom/market2345/guide/model/UnionIconInfo;

    return-object v0
.end method

.method public static setStaticInstance(Lcom/market2345/guide/model/UnionIconInfo;)V
    .locals 0
    .param p0, "info11"    # Lcom/market2345/guide/model/UnionIconInfo;

    .prologue
    .line 19
    sput-object p0, Lcom/market2345/guide/model/UnionIconInfo;->info:Lcom/market2345/guide/model/UnionIconInfo;

    .line 20
    return-void
.end method
