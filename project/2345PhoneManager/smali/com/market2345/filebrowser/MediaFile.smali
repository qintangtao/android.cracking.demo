.class public Lcom/market2345/filebrowser/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/filebrowser/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x7

    const/16 v6, 0x15

    const v5, 0xb984

    const/16 v4, 0x300b

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/market2345/filebrowser/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 137
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 138
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v4}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 140
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    const-string v0, "OGG"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 143
    const-string v0, "OGA"

    const-string v1, "application/ogg"

    const v2, 0xb902

    invoke-static {v0, v7, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 144
    const-string v0, "AAC"

    const-string v1, "audio/aac"

    const v2, 0xb903

    invoke-static {v0, v8, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 145
    const-string v0, "AAC"

    const-string v1, "audio/aac-adts"

    const v2, 0xb903

    invoke-static {v0, v8, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 146
    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const-string v0, "MPEG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v6, v1, v4}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 149
    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    invoke-static {v0, v6, v1, v4}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 150
    const-string v0, "MP4"

    const-string v1, "video/mp4"

    invoke-static {v0, v6, v1, v4}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 151
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v4}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 152
    const-string v0, "3GP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    invoke-static {v0, v1, v2, v5}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 153
    const-string v0, "3GPP"

    const/16 v1, 0x17

    const-string v2, "video/3gpp"

    invoke-static {v0, v1, v2, v5}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 154
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v5}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 155
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    invoke-static {v0, v1, v2, v5}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 156
    const-string v0, "MKV"

    const/16 v1, 0x1b

    const-string v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v0, "WEBM"

    const/16 v1, 0x1e

    const-string v2, "video/webm"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v0, "TS"

    const/16 v1, 0x1c

    const-string v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v0, "AVI"

    const/16 v1, 0x1d

    const-string v2, "video/avi"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v0, "JPG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 162
    const-string v0, "JPEG"

    const/16 v1, 0x1f

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 163
    const-string v0, "GIF"

    const/16 v1, 0x20

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 164
    const-string v0, "PNG"

    const/16 v1, 0x21

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 165
    const-string v0, "BMP"

    const/16 v1, 0x22

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    .line 166
    const-string v0, "WBMP"

    const/16 v1, 0x23

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const-string v0, "WEBP"

    const/16 v1, 0x24

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/market2345/filebrowser/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/market2345/filebrowser/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/market2345/filebrowser/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/market2345/filebrowser/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "mtpFormatCode"    # I

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lcom/market2345/filebrowser/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/market2345/filebrowser/MediaFile$MediaFileType;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "lastDot":I
    if-gez v0, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/market2345/filebrowser/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    const/4 v0, 0x1

    .line 172
    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_2

    const/16 v1, 0xd

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 182
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .param p0, "fileType"    # I

    .prologue
    .line 177
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
