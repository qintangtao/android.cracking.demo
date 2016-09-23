.class public Lcom/market2345/account/SignInController;
.super Ljava/lang/Object;
.source "SignInController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/SignInController$AccountSignInProxy;,
        Lcom/market2345/account/SignInController$HasCheckCodeCallBack;,
        Lcom/market2345/account/SignInController$CheckCodeCallBack;,
        Lcom/market2345/account/SignInController$SignInCallBack;
    }
.end annotation


# static fields
.field private static final QQ_APPKEY:Ljava/lang/String; = "1101209129"


# instance fields
.field private bit:Landroid/graphics/Bitmap;

.field private cookie:Lorg/apache/http/cookie/Cookie;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/market2345/account/SignInController;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 44
    iput-object v0, p0, Lcom/market2345/account/SignInController;->bit:Landroid/graphics/Bitmap;

    .line 45
    new-instance v0, Lcom/market2345/account/SignInController$1;

    invoke-direct {v0, p0}, Lcom/market2345/account/SignInController$1;-><init>(Lcom/market2345/account/SignInController;)V

    iput-object v0, p0, Lcom/market2345/account/SignInController;->mHandler:Landroid/os/Handler;

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/SignInController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/SignInController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/account/SignInController;->bit:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/market2345/account/SignInController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/SignInController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/account/SignInController;->bit:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/market2345/account/SignInController;)Lorg/apache/http/cookie/Cookie;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/SignInController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/account/SignInController;->cookie:Lorg/apache/http/cookie/Cookie;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/account/SignInController;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/SignInController;
    .param p1, "x1"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/market2345/account/SignInController;->cookie:Lorg/apache/http/cookie/Cookie;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/account/SignInController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/SignInController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/account/SignInController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/SignInController;
    .param p1, "x1"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/SignInController;
    .param p1, "x1"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p4, "checkCode"    # Ljava/lang/String;
    .param p5, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "tag"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, p6}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://login.2345.com/mobile/login"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/account/model/LoginCallResultForUserCenter;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-static {p2}, Lcom/market2345/account/SignInController;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/SignInController$6;

    invoke-direct {v2, p0, p1, p6, p3}, Lcom/market2345/account/SignInController$6;-><init>(Lcom/market2345/account/SignInController;Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 288
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 289
    const-string v1, "check_code"

    invoke-virtual {v0, v1, p4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCookie(Lorg/apache/http/cookie/Cookie;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 293
    return-void
.end method

.method private signInAuto(Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const-string v3, "\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-direct {p0, p2, v3, v4, v4}, Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V

    .line 225
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "passId":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "token":Ljava/lang/String;
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v3, "http://zhushou.2345.com/index.php?c=member&d=autoLogin"

    invoke-virtual {v0, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v3

    const-class v4, Lcom/market2345/account/model/LoginCallResult;

    invoke-virtual {v3, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v3

    const-string v4, "passid"

    invoke-virtual {v3, v4, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v3

    const-string v4, "token"

    invoke-virtual {v3, v4, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v3

    new-instance v4, Lcom/market2345/account/SignInController$5;

    invoke-direct {v4, p0, p2}, Lcom/market2345/account/SignInController$5;-><init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;)V

    invoke-virtual {v3, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 221
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v3

    invoke-interface {v3}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto :goto_0
.end method

.method private signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V

    .line 298
    return-void
.end method

.method private signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "success"    # Z
    .param p4, "needCheckCode"    # Z

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1, p3, p2, p4}, Lcom/market2345/account/SignInController$SignInCallBack;->callBack(ZLjava/lang/String;Z)V

    .line 303
    :cond_0
    return-void
.end method

.method private signInWithQQ(Landroid/app/Activity;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v2, "1101209129"

    invoke-static {v2, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    .line 135
    .local v1, "tencent":Lcom/tencent/tauth/Tencent;
    new-instance v0, Lcom/market2345/account/SignInController$4;

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/market2345/account/SignInController$4;-><init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Lcom/tencent/tauth/Tencent;Landroid/app/Activity;)V

    .line 185
    .local v0, "listener":Lcom/tencent/tauth/IUiListener;
    const-string v2, "get_user_info"

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 186
    return-void
.end method

.method public static string2MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "inStr"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v5, 0x0

    .line 233
    .local v5, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 240
    .local v1, "charArray":[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 242
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 243
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const-string v8, ""

    .line 252
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 244
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 245
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 247
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 248
    .local v7, "val":I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 249
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 252
    .end local v7    # "val":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method


# virtual methods
.method public callCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$CheckCodeCallBack;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/account/SignInController$2;

    invoke-direct {v1, p0, p2}, Lcom/market2345/account/SignInController$2;-><init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    return-void
.end method

.method public checkHasCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$HasCheckCodeCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$HasCheckCodeCallBack;

    .prologue
    .line 107
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=memberApi&d=showCheckCodeByIp"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/account/model/HasCheckCodeCallResult;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/SignInController$3;

    invoke-direct {v2, p0, p2}, Lcom/market2345/account/SignInController$3;-><init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$HasCheckCodeCallBack;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 120
    return-void
.end method

.method saveSuccessResuet(Lcom/market2345/account/model/RegisterCallResult;Landroid/content/Context;)V
    .locals 3
    .param p1, "result"    # Lcom/market2345/account/model/RegisterCallResult;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    new-instance v0, Lcom/market2345/account/SignInController$AccountSignInProxy;

    invoke-direct {v0, p0}, Lcom/market2345/account/SignInController$AccountSignInProxy;-><init>(Lcom/market2345/account/SignInController;)V

    .line 307
    .local v0, "proxy":Lcom/market2345/account/SignInController$AccountSignInProxy;
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->uName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 308
    const/4 v1, 0x2

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->uId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 309
    const/4 v1, 0x5

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 310
    const/4 v1, 0x3

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->lastToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 311
    const/4 v1, 0x6

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->avatarURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 312
    const/4 v1, 0x7

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->regType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 313
    return-void
.end method

.method public saveUserInfoToServer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=memberApi&d=submitInfo"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "uname"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "passid"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "token"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 131
    return-void
.end method

.method public signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;)V
    .locals 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;
    .param p4, "checkCode"    # Ljava/lang/String;
    .param p5, "cookie"    # Lorg/apache/http/cookie/Cookie;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/market2345/account/SignInController;->signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public signInAuto(Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/account/SignInController;->signInAuto(Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public signInWithQQ(Landroid/app/Activity;Lcom/market2345/account/SignInController$SignInCallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/market2345/account/SignInController$SignInCallBack;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/account/SignInController;->signInWithQQ(Landroid/app/Activity;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V

    .line 62
    return-void
.end method
