.class public final enum Lcom/market2345/settings/rangebar/MeasureSpecMode;
.super Ljava/lang/Enum;
.source "MeasureSpecMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/settings/rangebar/MeasureSpecMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/settings/rangebar/MeasureSpecMode;

.field public static final enum AT_MOST:Lcom/market2345/settings/rangebar/MeasureSpecMode;

.field public static final enum EXACTLY:Lcom/market2345/settings/rangebar/MeasureSpecMode;

.field public static final enum UNSPECIFIED:Lcom/market2345/settings/rangebar/MeasureSpecMode;


# instance fields
.field private final mModeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;

    const-string v1, "AT_MOST"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v3, v2}, Lcom/market2345/settings/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->AT_MOST:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    new-instance v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;

    const-string v1, "EXACTLY"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v4, v2}, Lcom/market2345/settings/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->EXACTLY:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    new-instance v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v5, v3}, Lcom/market2345/settings/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->UNSPECIFIED:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/market2345/settings/rangebar/MeasureSpecMode;

    sget-object v1, Lcom/market2345/settings/rangebar/MeasureSpecMode;->AT_MOST:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/settings/rangebar/MeasureSpecMode;->EXACTLY:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/settings/rangebar/MeasureSpecMode;->UNSPECIFIED:Lcom/market2345/settings/rangebar/MeasureSpecMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->$VALUES:[Lcom/market2345/settings/rangebar/MeasureSpecMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "modeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->mModeValue:I

    .line 37
    return-void
.end method

.method public static getMode(I)Lcom/market2345/settings/rangebar/MeasureSpecMode;
    .locals 6
    .param p0, "measureSpec"    # I

    .prologue
    .line 63
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 65
    .local v4, "modeValue":I
    invoke-static {}, Lcom/market2345/settings/rangebar/MeasureSpecMode;->values()[Lcom/market2345/settings/rangebar/MeasureSpecMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/market2345/settings/rangebar/MeasureSpecMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 67
    .local v3, "mode":Lcom/market2345/settings/rangebar/MeasureSpecMode;
    invoke-virtual {v3}, Lcom/market2345/settings/rangebar/MeasureSpecMode;->getModeValue()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 72
    .end local v3    # "mode":Lcom/market2345/settings/rangebar/MeasureSpecMode;
    :goto_1
    return-object v3

    .line 65
    .restart local v3    # "mode":Lcom/market2345/settings/rangebar/MeasureSpecMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "mode":Lcom/market2345/settings/rangebar/MeasureSpecMode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/settings/rangebar/MeasureSpecMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;

    return-object v0
.end method

.method public static values()[Lcom/market2345/settings/rangebar/MeasureSpecMode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->$VALUES:[Lcom/market2345/settings/rangebar/MeasureSpecMode;

    invoke-virtual {v0}, [Lcom/market2345/settings/rangebar/MeasureSpecMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/settings/rangebar/MeasureSpecMode;

    return-object v0
.end method


# virtual methods
.method public getModeValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/market2345/settings/rangebar/MeasureSpecMode;->mModeValue:I

    return v0
.end method
