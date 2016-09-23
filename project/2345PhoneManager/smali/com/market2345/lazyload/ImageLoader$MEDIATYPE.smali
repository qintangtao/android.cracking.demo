.class public final enum Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/lazyload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIATYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum BACKGROUND:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum IMAGE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum NORMAL:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

.field public static final enum VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->IMAGE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "NOTCHCHKREUSE"

    invoke-direct {v0, v1, v5}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v6}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->BACKGROUND:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "RORATE"

    invoke-direct {v0, v1, v7}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    new-instance v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    const-string v1, "NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NORMAL:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->IMAGE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->VIDEO:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NOTCHCHKREUSE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->BACKGROUND:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->RORATE:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->NORMAL:Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->$VALUES:[Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    return-object v0
.end method

.method public static values()[Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->$VALUES:[Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    invoke-virtual {v0}, [Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/lazyload/ImageLoader$MEDIATYPE;

    return-object v0
.end method
