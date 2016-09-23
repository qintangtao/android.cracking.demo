.class public Lcom/market2345/lm/util/RequestUtils;
.super Ljava/lang/Object;
.source "RequestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 123
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 124
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 127
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 128
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 132
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    add-int/lit8 v5, v1, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    .end local v1    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static getListParams()Lcom/lidroid/xutils/http/RequestParams;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    .line 36
    .local v0, "params":Lcom/lidroid/xutils/http/RequestParams;
    const-string v1, "action"

    const-string v2, "getpermissiblelist"

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "uid"

    sget-object v2, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "sign"

    const-string v2, "getpermissiblelist"

    sget-object v3, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/market2345/lm/util/RequestUtils;->getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    const-string v3, "utf8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    .local v0, "byteArray":[B
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 102
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 103
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/lm/util/RequestUtils;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 113
    .end local v0    # "byteArray":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 113
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/lm/util/RequestUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/lm/util/RequestUtils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "sign":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUserNameParams()Lcom/lidroid/xutils/http/RequestParams;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    .line 22
    .local v0, "params":Lcom/lidroid/xutils/http/RequestParams;
    const-string v1, "action"

    const-string v2, "getusername"

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "uid"

    sget-object v2, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "sign"

    const-string v2, "getusername"

    sget-object v3, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/market2345/lm/util/RequestUtils;->getSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

.method public static strCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v2, "{C8B22E37-AF95-4b84-9CCA-18A27D09D18B}"

    .line 64
    .local v2, "hash":Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/lm/util/GetMD5;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 68
    .local v0, "bstr":[B
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 69
    .local v6, "keylen":I
    array-length v9, v0

    .line 71
    .local v9, "strlen":I
    array-length v13, v0

    new-array v8, v13, [B

    .line 72
    .local v8, "resultByte":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 74
    rem-int v4, v3, v6

    .line 75
    .local v4, "k":I
    aget-byte v10, v0, v3

    .line 76
    .local v10, "x":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 77
    .local v11, "y":I
    xor-int v13, v10, v11

    int-to-byte v12, v13

    .line 78
    .local v12, "z":B
    aput-byte v12, v8, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "k":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "z":B
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v8, v13}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v13

    const-string v14, "utf-8"

    invoke-direct {v7, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    return-object v7

    .line 86
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 90
    const/4 v7, 0x0

    goto :goto_1
.end method
