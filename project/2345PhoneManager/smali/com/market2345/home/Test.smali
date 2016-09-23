.class public Lcom/market2345/home/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignaturesFromApk(Ljava/io/File;I)Landroid/content/pm/Signature;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v8, 0x0

    .line 28
    .local v8, "signature":Landroid/content/pm/Signature;
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 30
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    const-string v10, "AndroidManifest.xml"

    invoke-virtual {v4, v10}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 31
    .local v5, "je":Ljava/util/jar/JarEntry;
    const/16 v10, 0x2000

    new-array v7, v10, [B

    .line 32
    .local v7, "readBuffer":[B
    invoke-static {v4, v5, v7}, Lcom/market2345/home/Test;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 33
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    .line 34
    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v9, v8

    .end local v8    # "signature":Landroid/content/pm/Signature;
    .local v9, "signature":Landroid/content/pm/Signature;
    :goto_0
    if-ge v3, v6, :cond_1

    :try_start_1
    aget-object v1, v0, v3

    .line 35
    .local v1, "c":Ljava/security/cert/Certificate;
    const-string v10, "janan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key\u662f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v10, "janan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8bc1\u4e66\u662f"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v8, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/content/pm/Signature;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "signature":Landroid/content/pm/Signature;
    .restart local v9    # "signature":Landroid/content/pm/Signature;
    goto :goto_0

    .line 40
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "c":Ljava/security/cert/Certificate;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "i$":I
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "len$":I
    .end local v7    # "readBuffer":[B
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v10

    .line 42
    :cond_0
    :goto_1
    return-object v8

    .line 40
    .end local v8    # "signature":Landroid/content/pm/Signature;
    .restart local v0    # "arr$":[Ljava/security/cert/Certificate;
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v3    # "i$":I
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    .restart local v6    # "len$":I
    .restart local v7    # "readBuffer":[B
    .restart local v9    # "signature":Landroid/content/pm/Signature;
    :catch_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "signature":Landroid/content/pm/Signature;
    goto :goto_1

    .end local v8    # "signature":Landroid/content/pm/Signature;
    .restart local v9    # "signature":Landroid/content/pm/Signature;
    :cond_1
    move-object v8, v9

    .end local v9    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "signature":Landroid/content/pm/Signature;
    goto :goto_1
.end method

.method public static getSignaturesFromApk(Ljava/io/File;)Ljava/util/List;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v10, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 56
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    const-string v11, "AndroidManifest.xml"

    invoke-virtual {v4, v11}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 57
    .local v5, "je":Ljava/util/jar/JarEntry;
    const/16 v11, 0x2000

    new-array v7, v11, [B

    .line 58
    .local v7, "readBuffer":[B
    invoke-static {v4, v5, v7}, Lcom/market2345/home/Test;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 59
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    .line 60
    move-object v0, v2

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v0, v3

    .line 61
    .local v1, "c":Ljava/security/cert/Certificate;
    const-string v11, "janan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "key\u662f"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v11, "janan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8bc1\u4e66\u662f"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v8, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/content/pm/Signature;-><init>([B)V

    .line 64
    .local v8, "s":Landroid/content/pm/Signature;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v11

    invoke-static {v11}, Lcom/market2345/home/Test;->toCharsString([B)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "sig":Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v1    # "c":Ljava/security/cert/Certificate;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "i$":I
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "len$":I
    .end local v7    # "readBuffer":[B
    .end local v8    # "s":Landroid/content/pm/Signature;
    .end local v9    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 70
    :cond_0
    return-object v10
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 84
    .local v0, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v0, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 87
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static toCharsString([B)Ljava/lang/String;
    .locals 10
    .param p0, "sigBytes"    # [B

    .prologue
    const/16 v9, 0xa

    .line 100
    move-object v4, p0

    .line 101
    .local v4, "sig":[B
    array-length v0, v4

    .line 102
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 103
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 104
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 105
    aget-byte v6, v4, v3

    .line 106
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 107
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 108
    and-int/lit8 v2, v6, 0xf

    .line 109
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 111
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method
