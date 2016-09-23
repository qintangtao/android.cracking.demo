.class public final Lcom/startup/usbhelper/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 69
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_1
    return-object v0

    .line 73
    :cond_0
    aget-byte v1, v2, v0

    .line 74
    if-gez v1, :cond_1

    .line 75
    add-int/lit16 v1, v1, 0x100

    .line 76
    :cond_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_2

    .line 77
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 84
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    invoke-static {p0}, Lcom/startup/usbhelper/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 47
    array-length v4, v2

    .line 48
    array-length v0, v2

    new-array v5, v0, [B

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v5, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    return-object v0

    .line 50
    :cond_0
    rem-int v6, v0, v3

    .line 51
    aget-byte v7, v2, v0

    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 53
    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 54
    aput-byte v6, v5, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_1
.end method
