.class public final enum Lcom/market2345/settings/SettingUtils$SETTING;
.super Ljava/lang/Enum;
.source "SettingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/settings/SettingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SETTING"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/settings/SettingUtils$SETTING;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

.field public static final enum USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "DEL_APK"

    invoke-direct {v0, v1, v3}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "INSTALL_TIP"

    invoke-direct {v0, v1, v4}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "UPDATE_APP"

    invoke-direct {v0, v1, v5}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "AUTO_INSTALL"

    invoke-direct {v0, v1, v6}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "RECEIVE_FILE_TIP"

    invoke-direct {v0, v1, v7}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "FREE_UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "ICON_BALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "ICON_SEARCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "PUSH_TIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    new-instance v0, Lcom/market2345/settings/SettingUtils$SETTING;

    const-string v1, "USER_PLAN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/market2345/settings/SettingUtils$SETTING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/market2345/settings/SettingUtils$SETTING;

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/market2345/settings/SettingUtils$SETTING;->USER_PLAN:Lcom/market2345/settings/SettingUtils$SETTING;

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->$VALUES:[Lcom/market2345/settings/SettingUtils$SETTING;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/settings/SettingUtils$SETTING;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/settings/SettingUtils$SETTING;

    return-object v0
.end method

.method public static values()[Lcom/market2345/settings/SettingUtils$SETTING;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->$VALUES:[Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-virtual {v0}, [Lcom/market2345/settings/SettingUtils$SETTING;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/settings/SettingUtils$SETTING;

    return-object v0
.end method
