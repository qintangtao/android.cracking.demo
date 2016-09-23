.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/RenderScript$MessageThread;,
        Landroid/support/v8/renderscript/RenderScript$Priority;,
        Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;,
        Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;,
        Landroid/support/v8/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static isNative:Z

.field static lock:Ljava/lang/Object;

.field static mCachePath:Ljava/lang/String;

.field static registerNativeAllocation:Ljava/lang/reflect/Method;

.field static registerNativeFree:Ljava/lang/reflect/Method;

.field static sInitialized:Z

.field static sRuntime:Ljava/lang/Object;

.field private static sSdkVersion:I

.field private static sThunk:I

.field static sUseGCHooks:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mDev:I

.field mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

.field mElement_A_8:Landroid/support/v8/renderscript/Element;

.field mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

.field mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

.field mElement_F32:Landroid/support/v8/renderscript/Element;

.field mElement_F64:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

.field mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

.field mElement_I16:Landroid/support/v8/renderscript/Element;

.field mElement_I32:Landroid/support/v8/renderscript/Element;

.field mElement_I64:Landroid/support/v8/renderscript/Element;

.field mElement_I8:Landroid/support/v8/renderscript/Element;

.field mElement_INT_2:Landroid/support/v8/renderscript/Element;

.field mElement_INT_3:Landroid/support/v8/renderscript/Element;

.field mElement_INT_4:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_LONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

.field mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_565:Landroid/support/v8/renderscript/Element;

.field mElement_RGB_888:Landroid/support/v8/renderscript/Element;

.field mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

.field mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

.field mElement_TYPE:Landroid/support/v8/renderscript/Element;

.field mElement_U16:Landroid/support/v8/renderscript/Element;

.field mElement_U32:Landroid/support/v8/renderscript/Element;

.field mElement_U64:Landroid/support/v8/renderscript/Element;

.field mElement_U8:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

.field mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_2:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_3:Landroid/support/v8/renderscript/Element;

.field mElement_UINT_4:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

.field mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

.field mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

.field mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    .line 78
    sput v1, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    .line 79
    sput v1, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 829
    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 957
    if-eqz p1, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    .line 960
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 961
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1041
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    .line 976
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    const/4 v9, 0x0

    .line 987
    new-instance v2, Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v2, p0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 989
    .local v2, "rs":Landroid/support/v8/renderscript/RenderScript;
    sget v4, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 990
    sput p1, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    .line 995
    :cond_0
    sget v4, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    invoke-static {v4, p0}, Landroid/support/v8/renderscript/RenderScript;->setupThunk(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 996
    const-string v4, "RenderScript_jni"

    const-string v5, "RS native mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget v4, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    invoke-static {p0, v4}, Landroid/support/v8/renderscript/RenderScriptThunker;->create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    .line 1031
    .end local v2    # "rs":Landroid/support/v8/renderscript/RenderScript;
    :goto_0
    return-object v2

    .line 991
    .restart local v2    # "rs":Landroid/support/v8/renderscript/RenderScript;
    :cond_1
    sget v4, Landroid/support/v8/renderscript/RenderScript;->sSdkVersion:I

    if-eq v4, p1, :cond_0

    .line 992
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Can\'t have two contexts with different SDK versions in support lib"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 999
    :cond_2
    sget-object v5, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 1000
    :try_start_0
    sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 1002
    :try_start_1
    const-string v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1003
    .local v3, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getRuntime"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1004
    .local v1, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    .line 1005
    const-string v4, "registerNativeAllocation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    .line 1006
    const-string v4, "registerNativeFree"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    .line 1007
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    .end local v1    # "get_runtime":Ljava/lang/reflect/Method;
    .end local v3    # "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    :try_start_2
    const-string v4, "RSSupport"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1014
    const-string v4, "rsjni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1015
    const/4 v4, 0x1

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1021
    :cond_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1023
    const-string v4, "RenderScript_jni"

    const-string v5, "RS compat mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()I

    move-result v4

    iput v4, v2, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    .line 1025
    iget v4, v2, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    iget v5, p2, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    invoke-virtual {v2, v4, v9, p1, v5}, Landroid/support/v8/renderscript/RenderScript;->nContextCreate(IIII)I

    move-result v4

    iput v4, v2, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    .line 1026
    iget v4, v2, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-nez v4, :cond_4

    .line 1027
    new-instance v4, Landroid/support/v8/renderscript/RSDriverException;

    const-string v5, "Failed to create RS context."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "RenderScript_jni"

    const-string v6, "No GC methods"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v4, 0x0

    sput-boolean v4, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    goto :goto_1

    .line 1021
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1016
    :catch_1
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_5
    const-string v4, "RenderScript_jni"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading RS jni library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading RS jni library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1029
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_4
    new-instance v4, Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-direct {v4, v2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object v4, v2, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    .line 1030
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->start()V

    goto/16 :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/support/v8/renderscript/RenderScript$ContextType;

    .prologue
    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1055
    .local v0, "v":I
    invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.renderscript.cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/support/v8/renderscript/RenderScript;->mCachePath:Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 185
    return-void
.end method

.method private static setupThunk(ILandroid/content/Context;)Z
    .locals 14
    .param p0, "sdkVersion"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    sget v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "forcecompat":I
    :try_start_0
    const-string v11, "android.os.SystemProperties"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 101
    .local v10, "sysprop":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v7, v11

    .line 102
    .local v7, "signature":[Ljava/lang/Class;
    const-string v11, "getInt"

    invoke-virtual {v10, v11, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 103
    .local v4, "getint":Ljava/lang/reflect/Method;
    const/4 v11, 0x2

    new-array v0, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "debug.rs.forcecompat"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v0, v11

    .line 104
    .local v0, "args":[Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 110
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v4    # "getint":Ljava/lang/reflect/Method;
    .end local v7    # "signature":[Ljava/lang/Class;
    .end local v10    # "sysprop":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-ne v11, v12, :cond_2

    const/16 v11, 0x13

    if-lt p0, v11, :cond_2

    .line 111
    const/4 v11, 0x0

    sput v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    .line 121
    :goto_1
    sget v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 125
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 131
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const-wide/16 v8, 0x0

    .line 135
    .local v8, "minorVersion":J
    :try_start_2
    const-string v11, "android.renderscript.RenderScript"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 136
    .local v6, "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getMinorID"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 137
    .local v3, "getMinorID":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v3, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v8

    .line 142
    .end local v3    # "getMinorID":Ljava/lang/reflect/Method;
    .end local v6    # "javaRS":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_1

    .line 144
    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "com.android.support.v8.renderscript.EnableAsyncTeardown"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 145
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_0

    .line 146
    const/4 v11, 0x0

    sput v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    .line 151
    :cond_0
    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "com.android.support.v8.renderscript.EnableBlurWorkaround"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 152
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-gt v11, v12, :cond_1

    .line 154
    const/4 v11, 0x0

    sput v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    .line 162
    .end local v2    # "forcecompat":I
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "minorVersion":J
    :cond_1
    sget v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 163
    const/4 v11, 0x1

    .line 165
    :goto_3
    return v11

    .line 113
    .restart local v2    # "forcecompat":I
    :cond_2
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x12

    if-lt v11, v12, :cond_3

    if-nez v2, :cond_3

    .line 115
    const/4 v11, 0x1

    sput v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    goto :goto_1

    .line 117
    :cond_3
    const/4 v11, 0x0

    sput v11, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v11, 0x1

    goto :goto_3

    .line 165
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "forcecompat":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 138
    .restart local v2    # "forcecompat":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "minorVersion":J
    :catch_1
    move-exception v11

    goto :goto_2

    .line 105
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "minorVersion":J
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method static shouldThunk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 82
    sget v1, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Can\'t use RS classes before setting up a RenderScript context"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    sget v1, Landroid/support/v8/renderscript/RenderScript;->sThunk:I

    if-ne v1, v0, :cond_1

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDump(I)V

    .line 1066
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1084
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1085
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    .line 1086
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDeinitToClient(I)V

    .line 1087
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 1089
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextDestroy()V

    .line 1094
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nDeviceDestroy(I)V

    .line 1095
    iput v1, p0, Landroid/support/v8/renderscript/RenderScript;->mDev:I

    .line 1096
    return-void

    .line 1090
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1074
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V

    .line 1075
    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 1

    .prologue
    .line 1099
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 372
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 343
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 320
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 332
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)I
    .locals 1
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 337
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 314
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(IIII)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "usage"    # I
    .param p4, "pointer"    # I

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 309
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 327
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[BI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 389
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[FI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [F
    .param p6, "sizeBytes"    # I

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 394
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[II)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [I
    .param p6, "sizeBytes"    # I

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 379
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[SI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [S
    .param p6, "sizeBytes"    # I

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 384
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
    .locals 14
    .param p1, "dstAlloc"    # I
    .param p2, "dstXoff"    # I
    .param p3, "dstYoff"    # I
    .param p4, "dstMip"    # I
    .param p5, "dstFace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "srcAlloc"    # I
    .param p9, "srcXoff"    # I
    .param p10, "srcYoff"    # I
    .param p11, "srcMip"    # I
    .param p12, "srcFace"    # I

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 415
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 426
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [F
    .param p9, "sizeBytes"    # I

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 441
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[II)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [I
    .param p9, "sizeBytes"    # I

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 436
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [S
    .param p9, "sizeBytes"    # I

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 431
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 446
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIIIIIIII)V
    .locals 15
    .param p1, "dstAlloc"    # I
    .param p2, "dstXoff"    # I
    .param p3, "dstYoff"    # I
    .param p4, "dstZoff"    # I
    .param p5, "dstMip"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "srcAlloc"    # I
    .param p10, "srcXoff"    # I
    .param p11, "srcYoff"    # I
    .param p12, "srcZoff"    # I
    .param p13, "srcMip"    # I

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 461
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[BI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [B
    .param p10, "sizeBytes"    # I

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 470
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[FI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [F
    .param p10, "sizeBytes"    # I

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 485
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[II)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [I
    .param p10, "sizeBytes"    # I

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 480
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[SI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [S
    .param p10, "sizeBytes"    # I

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 475
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(IIII[BI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "mip"    # I
    .param p4, "compIdx"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 400
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 367
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 512
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetType(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 360
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoReceive(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoSend(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 355
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoSend(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [B

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 492
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [F

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 507
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [I

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 502
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[S)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [S

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 497
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dimX"    # I

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 518
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize2D(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 523
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize2D(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(II)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "src"    # I

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 350
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(IIII)I
    .locals 1
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I
    .param p4, "contextType"    # I

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 3

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 230
    iget-object v2, p0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 231
    .local v1, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 233
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    .line 235
    .local v0, "curCon":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    .line 237
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 238
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 226
    .end local v0    # "curCon":I
    .end local v1    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nContextDump(I)V
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 248
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 253
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->rsnContextFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 259
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSendMessage(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 243
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "kind"    # I
    .param p3, "norm"    # Z
    .param p4, "vecSize"    # I

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 276
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .locals 1
    .param p1, "elements"    # [I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 281
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "elementData"    # [I

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 286
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "IDs"    # [I
    .param p3, "names"    # [Ljava/lang/String;
    .param p4, "arraySizes"    # [I

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 292
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nObjDestroy(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 268
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    .line 269
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(II)V

    .line 271
    :cond_0
    return-void
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)I
    .locals 8
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    .prologue
    .line 662
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 663
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(III)V
    .locals 1
    .param p1, "script"    # I
    .param p2, "alloc"    # I
    .param p3, "slot"    # I

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 529
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 613
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(II)I
    .locals 1
    .param p1, "sid"    # I
    .param p2, "slot"    # I

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 631
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptFieldIDCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(IIII[B)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 549
    if-nez p5, :cond_0

    .line 550
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEachClipped(IIII[BIIIIII)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B
    .param p6, "xstart"    # I
    .param p7, "xend"    # I
    .param p8, "ystart"    # I
    .param p9, "yend"    # I
    .param p10, "zstart"    # I
    .param p11, "zend"    # I

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 559
    if-nez p5, :cond_0

    .line 560
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :goto_0
    monitor-exit p0

    return-void

    .line 562
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(IIIII[BIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([I[I[I[I[I)I
    .locals 7
    .param p1, "kernels"    # [I
    .param p2, "src"    # [I
    .param p3, "dstk"    # [I
    .param p4, "dstf"    # [I
    .param p5, "types"    # [I

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 637
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupCreate(I[I[I[I[I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(I)V
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 655
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupExecute(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(III)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "kernel"    # I
    .param p3, "alloc"    # I

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 643
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetInput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(III)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "kernel"    # I
    .param p3, "alloc"    # I

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 649
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetOutput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(II)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "eid"    # I

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 619
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 539
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "params"    # [B

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 569
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(III)I
    .locals 1
    .param p1, "sid"    # I
    .param p2, "slot"    # I
    .param p3, "sig"    # I

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 625
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptKernelIDCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(I[B)V
    .locals 1
    .param p1, "script"    # I
    .param p2, "timeZone"    # [B

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 534
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(IID)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # D

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 589
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # F

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 584
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 574
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(IIJ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # J

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 579
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 606
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 594
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(II[BI[I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B
    .param p4, "e"    # I
    .param p5, "dims"    # [I

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 601
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarVE(III[BI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZI)I
    .locals 9
    .param p1, "eid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "mips"    # Z
    .param p6, "faces"    # Z
    .param p7, "yuv"    # I

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 298
    iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "typeData"    # [I

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 303
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIIII)I
.end method

.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationData1D(IIIII[BI)V
.end method

.method native rsnAllocationData1D(IIIII[FI)V
.end method

.method native rsnAllocationData1D(IIIII[II)V
.end method

.method native rsnAllocationData1D(IIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method

.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(IIIIIIIIIIIIII)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[BI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[FI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[II)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[SI)V
.end method

.method native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(II)V
.end method

.method native rsnAllocationGetType(II)I
.end method

.method native rsnAllocationIoReceive(II)V
.end method

.method native rsnAllocationIoSend(II)V
.end method

.method native rsnAllocationRead(II[B)V
.end method

.method native rsnAllocationRead(II[F)V
.end method

.method native rsnAllocationRead(II[I)V
.end method

.method native rsnAllocationRead(II[S)V
.end method

.method native rsnAllocationResize1D(III)V
.end method

.method native rsnAllocationResize2D(IIII)V
.end method

.method native rsnAllocationSyncAll(III)V
.end method

.method native rsnContextCreate(IIII)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnContextDump(II)V
.end method

.method native rsnContextFinish(I)V
.end method

.method native rsnContextSendMessage(II[I)V
.end method

.method native rsnContextSetPriority(II)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method native rsnElementGetNativeData(II[I)V
.end method

.method native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnSamplerCreate(IIIIIIF)I
.end method

.method native rsnScriptBindAllocation(IIII)V
.end method

.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method

.method native rsnScriptFieldIDCreate(III)I
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptForEachClipped(IIIIIIIIIII)V
.end method

.method native rsnScriptForEachClipped(IIIII[BIIIIII)V
.end method

.method native rsnScriptGroupCreate(I[I[I[I[I[I)I
.end method

.method native rsnScriptGroupExecute(II)V
.end method

.method native rsnScriptGroupSetInput(IIII)V
.end method

.method native rsnScriptGroupSetOutput(IIII)V
.end method

.method native rsnScriptIntrinsicCreate(III)I
.end method

.method native rsnScriptInvoke(III)V
.end method

.method native rsnScriptInvokeV(III[B)V
.end method

.method native rsnScriptKernelIDCreate(IIII)I
.end method

.method native rsnScriptSetTimeZone(II[B)V
.end method

.method native rsnScriptSetVarD(IIID)V
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarI(IIII)V
.end method

.method native rsnScriptSetVarJ(IIIJ)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnScriptSetVarV(III[B)V
.end method

.method native rsnScriptSetVarVE(III[BI[I)V
.end method

.method native rsnTypeCreate(IIIIIZZI)I
.end method

.method native rsnTypeGetNativeData(II[I)V
.end method

.method safeID(Landroid/support/v8/renderscript/BaseObj;)I
    .locals 1
    .param p1, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    .line 1106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(I[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    .line 806
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextSendMessage(I[I)V

    .line 807
    return-void
.end method

.method public setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
    .locals 2
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .prologue
    .line 832
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;

    .line 833
    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 834
    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 835
    .local v0, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/RenderScriptThunker;->setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V

    .line 837
    .end local v0    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :cond_0
    return-void
.end method

.method public setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
    .locals 2
    .param p1, "msg"    # Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .prologue
    .line 786
    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    .line 787
    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 788
    check-cast v0, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 789
    .local v0, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/RenderScriptThunker;->setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V

    .line 791
    .end local v0    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :cond_0
    return-void
.end method

.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
    .locals 1
    .param p1, "p"    # Landroid/support/v8/renderscript/RenderScript$Priority;

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 871
    iget v0, p1, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextSetPriority(I)V

    .line 872
    return-void
.end method

.method validate()V
    .locals 2

    .prologue
    .line 858
    iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_0
    return-void
.end method
