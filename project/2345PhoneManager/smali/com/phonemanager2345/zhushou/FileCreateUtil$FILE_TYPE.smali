.class public final enum Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
.super Ljava/lang/Enum;
.source "FileCreateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/zhushou/FileCreateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum APK:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum AUDIO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum OTHERIMAGE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum PHOTO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum RECEIVE_FILE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum RING:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum VIDEO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

.field public static final enum WALLPAPER:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "APK"

    invoke-direct {v0, v1, v3}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->APK:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->PHOTO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "WALLPAPER"

    invoke-direct {v0, v1, v5}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->WALLPAPER:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "OTHERIMAGE"

    invoke-direct {v0, v1, v6}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->OTHERIMAGE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "RING"

    invoke-direct {v0, v1, v7}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RING:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->AUDIO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->VIDEO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    new-instance v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    const-string v1, "RECEIVE_FILE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RECEIVE_FILE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    sget-object v1, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->APK:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->PHOTO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->WALLPAPER:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->OTHERIMAGE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RING:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->AUDIO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->VIDEO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RECEIVE_FILE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->$VALUES:[Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->$VALUES:[Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    invoke-virtual {v0}, [Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    return-object v0
.end method
