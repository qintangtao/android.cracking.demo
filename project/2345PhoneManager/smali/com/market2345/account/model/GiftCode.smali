.class public Lcom/market2345/account/model/GiftCode;
.super Lcom/market2345/model/BaseResponse;
.source "GiftCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/model/GiftCode$GiftCodeData;
    }
.end annotation


# static fields
.field public static final STATUS_EMPTY:I = 0x5

.field public static final STATUS_OFF_IIME:I = 0x3

.field public static final STATUS_SUCCESS:I


# instance fields
.field public gift:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/market2345/model/BaseResponse;-><init>()V

    .line 33
    return-void
.end method
