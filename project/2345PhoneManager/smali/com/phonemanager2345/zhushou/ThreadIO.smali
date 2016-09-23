.class public Lcom/phonemanager2345/zhushou/ThreadIO;
.super Ljava/lang/Object;
.source "ThreadIO.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final screenDimCommands:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

.field private client:Ljava/net/Socket;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/phonemanager2345/zhushou/ThreadIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    .line 30
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;Lcom/phonemanager2345/zhushou/BatteryInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Ljava/net/Socket;
    .param p3, "bInfo"    # Lcom/phonemanager2345/zhushou/BatteryInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iput-object p2, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    .line 76
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    .line 78
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method private handlerBatteryInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    .locals 7
    .param p1, "dataLength"    # I
    .param p2, "in"    # Ljava/io/BufferedInputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 391
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 392
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "error_code"

    const-string v5, "00001"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v4, "batteryLevel"

    iget-object v5, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    iget v5, v5, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 394
    const-string v4, "batteryVoltage"

    iget-object v5, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    iget v5, v5, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryVoltage:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 395
    const-string v4, "powered"

    iget-object v5, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    iget v5, v5, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 396
    const-string v4, "temperature"

    iget-object v5, p0, Lcom/phonemanager2345/zhushou/ThreadIO;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;

    iget v5, v5, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryTemperature:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 397
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 399
    .local v1, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 400
    .local v0, "length":[B
    const/16 v4, 0x23

    invoke-static {v4, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 401
    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 402
    invoke-static {v1, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 403
    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 404
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 405
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 406
    return-void
.end method

.method public static readCMDFromSocket(Ljava/io/InputStream;)I
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 498
    const/4 v0, 0x4

    .line 499
    .local v0, "MAX_BUFFER_BYTES":I
    const/4 v1, 0x0

    .line 500
    .local v1, "cmd":I
    new-array v3, v0, [B

    .line 502
    .local v3, "tempbuffer":[B
    array-length v4, v3

    invoke-virtual {p0, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 506
    .local v2, "numReadedBytes":I
    if-ge v2, v6, :cond_0

    .line 507
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    .line 509
    :cond_0
    array-length v4, v3

    if-eq v4, v6, :cond_1

    .line 510
    new-instance v4, Ljava/io/IOException;

    const-string v5, "data format error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 513
    :cond_1
    invoke-static {v3, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v1

    .line 514
    return v1
.end method

.method public static readDataLengthFromSocket(Ljava/io/BufferedInputStream;)I
    .locals 6
    .param p0, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 483
    const/4 v0, 0x4

    .line 484
    .local v0, "MAX_BUFFER_BYTES":I
    new-array v2, v0, [B

    .line 485
    .local v2, "tempbuffer":[B
    array-length v4, v2

    invoke-virtual {p0, v2, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 486
    .local v1, "numReadedBytes":I
    if-ne v1, v3, :cond_0

    .line 492
    :goto_0
    return v3

    .line 489
    :cond_0
    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 490
    new-instance v3, Ljava/io/IOException;

    const-string v4, "data format error"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    :cond_1
    invoke-static {v2, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitFromArray([BI)I

    move-result v3

    goto :goto_0
.end method

.method private showError(ILjava/io/BufferedOutputStream;)V
    .locals 7
    .param p1, "currCMD"    # I
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 466
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 467
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "error_code"

    const-string v5, "10002"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "error"

    const-string v5, "fail parm"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 472
    .local v1, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 473
    .local v0, "length":[B
    invoke-static {p1, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 474
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 475
    invoke-static {v1, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 476
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 477
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 478
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 479
    return-void
.end method

.method private showError(ILjava/io/BufferedOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "currCMD"    # I
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "errorcode"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 418
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 419
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "error_code"

    invoke-virtual {v2, v4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v4, "error"

    invoke-virtual {v2, v4, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 423
    .local v1, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 424
    .local v0, "length":[B
    invoke-static {p1, v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 425
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 426
    invoke-static {v1, v0, v5}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 427
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 428
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 429
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 431
    return-void
.end method

.method private showJsonError(ILjava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "currCMD"    # I
    .param p2, "out"    # Ljava/io/BufferedOutputStream;
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 443
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 444
    .local v2, "result":Lcom/google/gson/JsonObject;
    const-string v4, "error_code"

    const-string v5, "10002"

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v4, "error"

    invoke-virtual {v2, v4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 448
    .local v1, "nCount":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 449
    .local v0, "length":[B
    invoke-static {p1, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 450
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 451
    invoke-static {v1, v0, v6}, Lcom/phonemanager2345/zhushou/CommandHander;->swap32bitsToArray(I[BI)V

    .line 452
    invoke-virtual {p2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 454
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 456
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v14, 0x0

    .line 85
    .local v14, "out":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 87
    .local v10, "in":Ljava/io/BufferedInputStream;
    sget-object v17, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "---->"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u6536\u62fe\u6536\u62fe"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v6, 0x0

    .line 93
    .local v6, "currCMD":I
    :try_start_0
    new-instance v15, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .local v15, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Lcom/google/gson/JsonIOException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_18
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 98
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .local v11, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    const-string v18, "a client has connected to server!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->isClosed()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 102
    :cond_0
    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    const-string v18, "\u672a\u8fde\u63a5\u6210\u529f\uff0c\u9000\u51fa"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    const/16 v17, 0x6

    :try_start_3
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .local v4, "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .local v3, "cc":I
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_1

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v11, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v16

    .line 358
    .local v16, "t":I
    if-gez v16, :cond_6

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :cond_1
    :goto_1
    if-eqz v15, :cond_2

    .line 369
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_2
    if-eqz v11, :cond_3

    .line 371
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 378
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    :goto_3
    return-void

    .line 361
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v16    # "t":I
    :cond_6
    add-int v3, v3, v16

    .line 363
    goto :goto_0

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_0
    move-exception v8

    .line 365
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "client.isConnected:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->isConnected()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "**client.isClosed:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->isClosed()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v11}, Lcom/phonemanager2345/zhushou/ThreadIO;->readCMDFromSocket(Ljava/io/InputStream;)I

    move-result v6

    .line 108
    invoke-static {v11}, Lcom/phonemanager2345/zhushou/ThreadIO;->readDataLengthFromSocket(Ljava/io/BufferedInputStream;)I

    move-result v7

    .line 109
    .local v7, "dataLength":I
    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "length:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMD:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "ip":Ljava/lang/String;
    const-string v17, "client"

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v5, 0x0

    .line 115
    .local v5, "connStatus":I
    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v6, v0, :cond_8

    .line 116
    const/16 v17, 0x26

    move/from16 v0, v17

    if-ne v6, v0, :cond_e

    .line 119
    const/4 v5, 0x0

    .line 120
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.phonemanager2345.zhushou.connection.status"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v12, "intent":Landroid/content/Intent;
    const-string v17, "conn_status_key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v17, "conn_notify_key"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v17, "conn_command_key"

    const/16 v18, 0x26

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-static {v5}, Lcom/phonemanager2345/zhushou/CommandHander;->wifiInform(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/phonemanager2345/zhushou/ThreadIO;->showError(ILjava/io/BufferedOutputStream;)V

    .line 149
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    sget-object v17, Lcom/phonemanager2345/zhushou/ThreadIO;->screenDimCommands:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->acquireDimWakeLock(Landroid/content/Context;)V

    .line 153
    :cond_9
    packed-switch v6, :pswitch_data_0

    .line 319
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/phonemanager2345/zhushou/ThreadIO;->showError(ILjava/io/BufferedOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 354
    :goto_5
    const/16 v17, 0x6

    :try_start_6
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_a

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_a

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v11, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_22

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :cond_a
    :goto_7
    if-eqz v15, :cond_b

    .line 369
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_b
    if-eqz v11, :cond_c

    .line 371
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    :cond_d
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 376
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_3

    .line 128
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :cond_e
    :try_start_8
    const-string v17, "127."

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v17

    if-eqz v17, :cond_13

    .line 130
    const/4 v5, 0x2

    .line 131
    :try_start_9
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-class v18, Lcom/phonemanager2345/zhushou/ConnectionService;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v17, "conn_status_key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 134
    .end local v12    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v8

    .line 135
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_a
    const-class v17, Lcom/phonemanager2345/zhushou/ThreadIO;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new CMD="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "startsWith 127:start service exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 323
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "ip":Ljava/lang/String;
    :catch_3
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 324
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "e":Ljava/io/IOException;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v17, :cond_f

    .line 326
    :try_start_c
    const-string v17, "20001"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v6, v14, v1, v2}, Lcom/phonemanager2345/zhushou/ThreadIO;->showError(ILjava/io/BufferedOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 354
    :cond_f
    :goto_9
    const/16 v17, 0x6

    :try_start_d
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_a
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_10

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_10

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v10, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_23

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :cond_10
    :goto_b
    if-eqz v14, :cond_11

    .line 369
    :try_start_e
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_11
    if-eqz v10, :cond_12

    .line 371
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_3

    .line 374
    :catch_4
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 138
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "connStatus":I
    .restart local v7    # "dataLength":I
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :cond_13
    const/16 v17, 0x24

    move/from16 v0, v17

    if-ne v6, v0, :cond_17

    .line 139
    const/4 v5, 0x1

    .line 140
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->wifiConnectInform(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_4

    .line 333
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v13    # "ip":Ljava/lang/String;
    :catch_5
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 335
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "e":Lcom/google/gson/JsonIOException;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :goto_c
    :try_start_10
    invoke-virtual {v8}, Lcom/google/gson/JsonIOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v14, v1}, Lcom/phonemanager2345/zhushou/ThreadIO;->showJsonError(ILjava/io/BufferedOutputStream;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 354
    :goto_d
    const/16 v17, 0x6

    :try_start_11
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_e
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_14

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_14

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v10, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_24

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v8    # "e":Lcom/google/gson/JsonIOException;
    .end local v16    # "t":I
    :cond_14
    :goto_f
    if-eqz v14, :cond_15

    .line 369
    :try_start_12
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_15
    if-eqz v10, :cond_16

    .line 371
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_3

    .line 374
    :catch_6
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 142
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "connStatus":I
    .restart local v7    # "dataLength":I
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :cond_17
    const/4 v5, 0x1

    .line 143
    :try_start_13
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.phonemanager2345.zhushou.connection.status"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v17, "conn_status_key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    .line 339
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "ip":Ljava/lang/String;
    :catch_7
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 341
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :goto_10
    :try_start_14
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v14, v1}, Lcom/phonemanager2345/zhushou/ThreadIO;->showJsonError(ILjava/io/BufferedOutputStream;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 354
    :goto_11
    const/16 v17, 0x6

    :try_start_15
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_12
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_18

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_18

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v10, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_25

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v16    # "t":I
    :cond_18
    :goto_13
    if-eqz v14, :cond_19

    .line 369
    :try_start_16
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_19
    if-eqz v10, :cond_1a

    .line 371
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_3

    .line 374
    :catch_8
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 155
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "connStatus":I
    .restart local v7    # "dataLength":I
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_1
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnAppsInfos(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_5

    .line 345
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v13    # "ip":Ljava/lang/String;
    :catch_9
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 347
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :goto_14
    :try_start_18
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v14, v1}, Lcom/phonemanager2345/zhushou/ThreadIO;->showJsonError(ILjava/io/BufferedOutputStream;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 354
    :goto_15
    const/16 v17, 0x6

    :try_start_19
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_16
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_1b

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v3, v0, :cond_1b

    .line 357
    rsub-int/lit8 v17, v3, 0x6

    move/from16 v0, v17

    invoke-virtual {v10, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_26

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v16    # "t":I
    :cond_1b
    :goto_17
    if-eqz v14, :cond_1c

    .line 369
    :try_start_1a
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_1c
    if-eqz v10, :cond_1d

    .line 371
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a

    goto/16 :goto_3

    .line 374
    :catch_a
    move-exception v8

    .line 375
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 158
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "connStatus":I
    .restart local v7    # "dataLength":I
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_2
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnIcons(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_5

    .line 353
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v13    # "ip":Ljava/lang/String;
    :catchall_0
    move-exception v17

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 354
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    :goto_18
    const/16 v18, 0x6

    :try_start_1c
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 355
    .restart local v4    # "closeResp":[B
    const/4 v3, 0x0

    .line 356
    .restart local v3    # "cc":I
    :goto_19
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_1e

    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v3, v0, :cond_1e

    .line 357
    rsub-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    invoke-virtual {v10, v4, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_15

    move-result v16

    .line 358
    .restart local v16    # "t":I
    if-gez v16, :cond_27

    .line 368
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :cond_1e
    :goto_1a
    if-eqz v14, :cond_1f

    .line 369
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 370
    :cond_1f
    if-eqz v10, :cond_20

    .line 371
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 372
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_16

    .line 376
    :cond_21
    :goto_1b
    throw v17

    .line 162
    .end local v10    # "in":Ljava/io/BufferedInputStream;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "connStatus":I
    .restart local v7    # "dataLength":I
    .restart local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :pswitch_3
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnMemoryInfo(Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 165
    :pswitch_4
    const-class v17, Lcom/phonemanager2345/zhushou/ThreadIO;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "================4=============================>>>>"

    invoke-static/range {v17 .. v18}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-class v17, Lcom/phonemanager2345/zhushou/ThreadIO;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new CMD="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnVersionCode(Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 171
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnFileByType(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 175
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 179
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnOrinalImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 183
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->saveImageFromPC(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 187
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->setWallPaper(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 191
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->delImages(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 194
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnImagesNumberByType(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 198
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->getAllContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 202
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->saveContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 206
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->updateContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 210
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->delContacts(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 214
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->getContactsIcon(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 218
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->getContactsCount(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 222
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/ContactUtil;->operateGroup(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 225
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnMusicInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 229
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnRingInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 233
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnVideoInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 237
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnVideoIcon(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 241
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->saveMeidaDataFromPC(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 245
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnOrinalMedia(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 249
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->setRingtone(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 253
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->delMedia(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 256
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->getPhoneData(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 259
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnOriginalApk(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 263
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->returnOriginalApkByName(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 268
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v6, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->InstallApkByWifi(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 272
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->uninstallApkByWifi(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 276
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v11, v15, v1}, Lcom/phonemanager2345/zhushou/ThreadIO;->handlerBatteryInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 279
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->cleanupFromPCcommand(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 283
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->client:Ljava/net/Socket;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v11, v15, v5, v1}, Lcom/phonemanager2345/zhushou/CommandHander;->notifyPhoneStatus2PC(Ljava/net/Socket;Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;ILandroid/content/Context;)V

    goto/16 :goto_5

    .line 286
    :pswitch_23
    invoke-static {v7, v11, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->returnFileInfo(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_5

    .line 289
    :pswitch_24
    invoke-static {v7, v11, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->manageFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_5

    .line 292
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->getStoragePath(Ljava/io/OutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 295
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->toggleScreenOn(ILjava/io/BufferedInputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 298
    :pswitch_27
    invoke-static {v7, v11, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->copyFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_5

    .line 301
    :pswitch_28
    invoke-static {v7, v11, v15}, Lcom/phonemanager2345/zhushou/CommandHander;->searchFile(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_5

    .line 304
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->downloadAppToInstall(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 307
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->startOtherApp(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 310
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->operateSMS(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 313
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->manageLMSoftList(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 316
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonemanager2345/zhushou/ThreadIO;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v7, v11, v15, v0}, Lcom/phonemanager2345/zhushou/CommandHander;->manageChannelID(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Lcom/google/gson/JsonIOException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_5

    .line 361
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v16    # "t":I
    :cond_22
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_6

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_b
    move-exception v8

    .line 365
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 374
    .end local v8    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedInputStream;
    .restart local v10    # "in":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 377
    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_3

    .line 327
    .end local v5    # "connStatus":I
    .end local v7    # "dataLength":I
    .end local v13    # "ip":Ljava/lang/String;
    .local v8, "e":Ljava/io/IOException;
    :catch_d
    move-exception v9

    .line 328
    .local v9, "e1":Ljava/io/IOException;
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_9

    .line 353
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e1":Ljava/io/IOException;
    :catchall_1
    move-exception v17

    goto/16 :goto_18

    .line 361
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v16    # "t":I
    :cond_23
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_a

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_e
    move-exception v8

    .line 365
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 336
    .local v8, "e":Lcom/google/gson/JsonIOException;
    :catch_f
    move-exception v9

    .line 337
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto/16 :goto_d

    .line 361
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v16    # "t":I
    :cond_24
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_e

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_10
    move-exception v8

    .line 365
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 342
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    :catch_11
    move-exception v9

    .line 343
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_21
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    goto/16 :goto_11

    .line 361
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v16    # "t":I
    :cond_25
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_12

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_12
    move-exception v8

    .line 365
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13

    .line 349
    .local v8, "e":Ljava/lang/Exception;
    :catch_13
    move-exception v9

    .line 350
    .restart local v9    # "e1":Ljava/io/IOException;
    :try_start_22
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    goto/16 :goto_15

    .line 361
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v16    # "t":I
    :cond_26
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_16

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_14
    move-exception v8

    .line 365
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_17

    .line 361
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "cc":I
    .restart local v4    # "closeResp":[B
    .restart local v16    # "t":I
    :cond_27
    add-int v3, v3, v16

    .line 363
    goto/16 :goto_19

    .line 364
    .end local v3    # "cc":I
    .end local v4    # "closeResp":[B
    .end local v16    # "t":I
    :catch_15
    move-exception v8

    .line 365
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1a

    .line 374
    .end local v8    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v8

    .line 375
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 353
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v17

    move-object v14, v15

    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_18

    .line 345
    :catch_17
    move-exception v8

    goto/16 :goto_14

    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :catch_18
    move-exception v8

    move-object v14, v15

    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_14

    .line 339
    :catch_19
    move-exception v8

    goto/16 :goto_10

    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :catch_1a
    move-exception v8

    move-object v14, v15

    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_10

    .line 333
    :catch_1b
    move-exception v8

    goto/16 :goto_c

    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :catch_1c
    move-exception v8

    move-object v14, v15

    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_c

    .line 323
    :catch_1d
    move-exception v8

    goto/16 :goto_8

    .end local v14    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "out":Ljava/io/BufferedOutputStream;
    :catch_1e
    move-exception v8

    move-object v14, v15

    .end local v15    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "out":Ljava/io/BufferedOutputStream;
    goto/16 :goto_8

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_1e
        :pswitch_2c
        :pswitch_0
        :pswitch_2d
    .end packed-switch
.end method
