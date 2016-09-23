.class public Lcom/market2345/HMACSHA1;
.super Ljava/lang/Object;
.source "HMACSHA1.java"


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    return-object v3

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 36
    .local v0, "keyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA1"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    .local v4, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 38
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 40
    .local v2, "rawHmac":[B
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "result":Ljava/lang/String;
    goto :goto_0
.end method
