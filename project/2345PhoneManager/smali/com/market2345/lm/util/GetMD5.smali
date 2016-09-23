.class public Lcom/market2345/lm/util/GetMD5;
.super Ljava/lang/Object;
.source "GetMD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "plainText"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 27
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 30
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 33
    aget-byte v3, v0, v5

    .line 34
    .local v3, "i":I
    if-gez v3, :cond_0

    .line 35
    add-int/lit16 v3, v3, 0x100

    .line 36
    :cond_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    .line 37
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 40
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 48
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :goto_1
    return-object v6

    .line 44
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 48
    const/4 v6, 0x0

    goto :goto_1
.end method
