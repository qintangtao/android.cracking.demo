.class final enum Lcom/market2345/clean/shortcut/shortcutActivity$Direction;
.super Ljava/lang/Enum;
.source "shortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/clean/shortcut/shortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/clean/shortcut/shortcutActivity$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

.field public static final enum LEFT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

.field public static final enum RIGHT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->RIGHT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    new-instance v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->LEFT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    sget-object v1, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->RIGHT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->LEFT:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->$VALUES:[Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/clean/shortcut/shortcutActivity$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    return-object v0
.end method

.method public static values()[Lcom/market2345/clean/shortcut/shortcutActivity$Direction;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->$VALUES:[Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    invoke-virtual {v0}, [Lcom/market2345/clean/shortcut/shortcutActivity$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

    return-object v0
.end method
