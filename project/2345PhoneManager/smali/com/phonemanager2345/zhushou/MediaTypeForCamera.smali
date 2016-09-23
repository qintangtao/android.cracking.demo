.class public Lcom/phonemanager2345/zhushou/MediaTypeForCamera;
.super Ljava/lang/Object;
.source "MediaTypeForCamera.java"


# static fields
.field private static IMAGESUFFIX:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MUSICSUFFIX:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static PICTURE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QQ_1:Ljava/lang/String; = "tencent/QQfile_recv"

.field private static final QQ_2:Ljava/lang/String; = "Tencent/QQfile_recv"

.field private static REVICE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static RINGSUFFIX:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SHOT:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SOPPORT_IMAGE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static VIDEO:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static VIDEOSUFFIX:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static WALLPAPER:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WX_1:Ljava/lang/String; = "tencent/MicroMsg"

.field private static final WX_2:Ljava/lang/String; = "Tencent/MicroMsg"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".png"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".jpeg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".jpg"

    const-string v2, "image/jpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".gif"

    const-string v2, "image/gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".wbmp"

    const-string v2, "image/wbmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    const-string v1, ".bmp"

    const-string v2, "image/wbmp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".mpeg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".mpg"

    const-string v2, "video/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".mp4"

    const-string v2, "video/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".m4v"

    const-string v2, "video/mp4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".3gp"

    const-string v2, "video/3gpp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".3gpp"

    const-string v2, "video/3gpp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    const-string v1, ".avi"

    const-string v2, "video/avi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".mp3"

    const-string v2, "audio/mpeg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".wav"

    const-string v2, "audio/x-wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".amr"

    const-string v2, "audio/amr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".awb"

    const-string v2, "audio/amr-wb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".ogg"

    const-string v2, "application/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".oga"

    const-string v2, "application/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    const-string v1, ".aac"

    const-string v2, "audio/aac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".bmp"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".gif"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".jpg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".jpeg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".png"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->RINGSUFFIX:Ljava/util/Map;

    const-string v1, ".wbmp"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".bmp"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".gif"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".jpg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".jpeg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".png"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    const-string v1, ".wbmp"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    const-string v1, "Wallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    const-string v1, "WallPaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    const-string v1, "wallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    const-string v1, "2345\u624b\u673a\u52a9\u624b/wallpaper"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "DCIM/Screenshots"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "dcim/Screenshots"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "Screenshots"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "Pictures/Screenshots"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "ScreenCapture"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "Coolpad/\u622a\u5c4f\u56fe\u7247"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    const-string v1, "Photo/Screenshots"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "dcim/camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "dcim/camera/multishoot"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "dcim/100andro"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "dcim/100media"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "dcim"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "pictures/camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "\u6211\u7684\u76f8\u673a"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "\u76f8\u673a/\u7167\u7247"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "\u7167\u76f8\u673a/camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    const-string v1, "2345\u624b\u673a\u52a9\u624b/photo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "DCIM/Camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "DCIM"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "Camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "Camera/Video"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "Pictures/Camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u6211\u7684\u76f8\u673a"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "Photo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "camera/Pictures"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u6211\u7684\u7167\u7247"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u76f8\u673a/\u7167\u7247"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u7167\u76f8\u673a/Camera"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "video"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "camera/Videos"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u6211\u7684\u89c6\u9891"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    const-string v1, "\u76f8\u673a/\u5f55\u50cf"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static belongOtherImage(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {p0}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-static {p0}, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->belongPicture(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static belongPicture(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 204
    sget-object v1, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->PICTURE:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcim/camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongQQFile_Recv(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v0, "tencent/QQfile_recv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Tencent/QQfile_recv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongReceive(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->REVICE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongShotCut(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 219
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SHOT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongWX(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "tencent/MicroMsg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Tencent/MicroMsg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "image2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static belongWallpaper(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->WALLPAPER:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWXPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "Tencent/MicroMsg"

    return-object v0
.end method

.method public static supportImage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportImageSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 319
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->IMAGESUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static supportImageType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 283
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->SOPPORT_IMAGE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportMusicSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 324
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static supportMusicType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->MUSICSUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportVideoSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 329
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static supportVideoType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/phonemanager2345/zhushou/MediaTypeForCamera;->VIDEOSUFFIX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
