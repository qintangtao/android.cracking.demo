.class public Lcom/market2345/clearStrategy/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MD5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "updateFile"    # Ljava/io/File;

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/market2345/clearStrategy/MD5;->calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "MD5"

    const-string v3, "Exception while getting FileInputStream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static calculateMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 51
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 57
    .local v2, "digest":Ljava/security/MessageDigest;
    const/16 v7, 0x2000

    new-array v1, v7, [B

    .line 59
    .local v1, "buffer":[B
    if-eqz p0, :cond_0

    .line 61
    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "read":I
    if-lez v6, :cond_1

    .line 62
    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v6    # "read":I
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unable to process file for MD5"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 74
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 77
    :goto_1
    throw v7

    .line 52
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "MD5"

    const-string v8, "Exception while getting digest"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_2
    return-object v5

    .line 64
    .restart local v1    # "buffer":[B
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "read":I
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 65
    .local v4, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v0, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "output":Ljava/lang/String;
    const-string v7, "%32s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    const/16 v9, 0x30

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 74
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 75
    :catch_2
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "MD5"

    const-string v8, "Exception on closing MD5 input stream"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 75
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "md5sum":[B
    .end local v5    # "output":Ljava/lang/String;
    .end local v6    # "read":I
    :catch_3
    move-exception v3

    .line 76
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "MD5"

    const-string v9, "Exception on closing MD5 input stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "updateFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 21
    :cond_0
    const-string v2, "MD5"

    const-string v3, "MD5 string empty or updateFile null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return v1

    .line 25
    :cond_1
    invoke-static {p1}, Lcom/market2345/clearStrategy/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "calculatedDigest":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 27
    const-string v2, "MD5"

    const-string v3, "calculatedDigest null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "MD5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v1, "MD5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
