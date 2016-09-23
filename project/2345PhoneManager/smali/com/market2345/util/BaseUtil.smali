.class public Lcom/market2345/util/BaseUtil;
.super Ljava/lang/Object;
.source "BaseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x400

    .line 12
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 15
    const-string v8, ""

    .line 41
    :goto_0
    return-object v8

    .line 17
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 19
    const-string v8, ""

    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .line 23
    .local v5, "in":Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 27
    .local v1, "buffer":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 28
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v6, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 31
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 35
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 37
    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const-string v8, ""

    goto :goto_0

    .line 33
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 41
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 35
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v7    # "len":I
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_2
.end method
