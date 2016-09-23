.class final enum Lcom/market2345/search/SearchDialogFragment$ClickType;
.super Ljava/lang/Enum;
.source "SearchDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/search/SearchDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClickType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/search/SearchDialogFragment$ClickType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/search/SearchDialogFragment$ClickType;

.field public static final enum RESULT:Lcom/market2345/search/SearchDialogFragment$ClickType;

.field public static final enum SUGGESTION:Lcom/market2345/search/SearchDialogFragment$ClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1080
    new-instance v0, Lcom/market2345/search/SearchDialogFragment$ClickType;

    const-string v1, "SUGGESTION"

    invoke-direct {v0, v1, v2}, Lcom/market2345/search/SearchDialogFragment$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->SUGGESTION:Lcom/market2345/search/SearchDialogFragment$ClickType;

    new-instance v0, Lcom/market2345/search/SearchDialogFragment$ClickType;

    const-string v1, "RESULT"

    invoke-direct {v0, v1, v3}, Lcom/market2345/search/SearchDialogFragment$ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->RESULT:Lcom/market2345/search/SearchDialogFragment$ClickType;

    .line 1079
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market2345/search/SearchDialogFragment$ClickType;

    sget-object v1, Lcom/market2345/search/SearchDialogFragment$ClickType;->SUGGESTION:Lcom/market2345/search/SearchDialogFragment$ClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/search/SearchDialogFragment$ClickType;->RESULT:Lcom/market2345/search/SearchDialogFragment$ClickType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->$VALUES:[Lcom/market2345/search/SearchDialogFragment$ClickType;

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
    .line 1079
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/search/SearchDialogFragment$ClickType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1079
    const-class v0, Lcom/market2345/search/SearchDialogFragment$ClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/search/SearchDialogFragment$ClickType;

    return-object v0
.end method

.method public static values()[Lcom/market2345/search/SearchDialogFragment$ClickType;
    .locals 1

    .prologue
    .line 1079
    sget-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->$VALUES:[Lcom/market2345/search/SearchDialogFragment$ClickType;

    invoke-virtual {v0}, [Lcom/market2345/search/SearchDialogFragment$ClickType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/search/SearchDialogFragment$ClickType;

    return-object v0
.end method
