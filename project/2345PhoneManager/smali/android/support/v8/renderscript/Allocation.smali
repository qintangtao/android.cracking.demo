.class public Landroid/support/v8/renderscript/Allocation;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Allocation$1;,
        Landroid/support/v8/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

.field mBitmap:Landroid/graphics/Bitmap;

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mReadAllowed:Z

.field mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1194
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1196
    sget-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1197
    return-void
.end method

.method constructor <init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p3, "t"    # Landroid/support/v8/renderscript/Type;
    .param p4, "usage"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;-><init>(ILandroid/support/v8/renderscript/RenderScript;)V

    .line 70
    iput-boolean v3, p0, Landroid/support/v8/renderscript/Allocation;->mReadAllowed:Z

    .line 71
    iput-boolean v3, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    .line 75
    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    iput-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    .line 223
    and-int/lit16 v1, p4, -0xe4

    if-eqz v1, :cond_0

    .line 228
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_1

    .line 232
    iput-boolean v2, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    .line 234
    and-int/lit8 v1, p4, -0x24

    if-eqz v1, :cond_1

    .line 237
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_1
    iput-object p3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    .line 242
    iput p4, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    .line 243
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    .line 245
    if-eqz p3, :cond_2

    .line 246
    invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->updateCacheInfo(Landroid/support/v8/renderscript/Type;)V

    .line 248
    :cond_2
    sget-boolean v1, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    if-ne v1, v3, :cond_3

    .line 250
    :try_start_0
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_3
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1461
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1415
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1418
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1420
    .local v6, "width":I
    rem-int/lit8 v9, v6, 0x6

    if-eqz v9, :cond_0

    .line 1421
    new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v8, "Cubemap height must be multiple of 6"

    invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1423
    :cond_0
    div-int/lit8 v9, v6, 0x6

    if-eq v9, v1, :cond_1

    .line 1424
    new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v8, "Only square cube map faces supported"

    invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1426
    :cond_1
    add-int/lit8 v9, v1, -0x1

    and-int/2addr v9, v1

    if-nez v9, :cond_2

    move v3, v7

    .line 1427
    .local v3, "isPow2":Z
    :goto_0
    if-nez v3, :cond_3

    .line 1428
    new-instance v7, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v8, "Only power of 2 cube faces supported"

    invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3    # "isPow2":Z
    :cond_2
    move v3, v8

    .line 1426
    goto :goto_0

    .line 1431
    .restart local v3    # "isPow2":Z
    :cond_3
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 1432
    .local v0, "e":Landroid/support/v8/renderscript/Element;
    new-instance v5, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v5, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 1433
    .local v5, "tb":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v5, v1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 1434
    invoke-virtual {v5, v1}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 1435
    invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 1436
    sget-object v9, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v9, :cond_4

    :goto_1
    invoke-virtual {v5, v7}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 1437
    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    .line 1439
    .local v4, "t":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v7

    iget v8, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v7, v8, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1440
    .local v2, "id":I
    if-nez v2, :cond_5

    .line 1441
    new-instance v7, Landroid/support/v8/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load failed for bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "id":I
    .end local v4    # "t":Landroid/support/v8/renderscript/Type;
    :cond_4
    move v7, v8

    .line 1436
    goto :goto_1

    .line 1443
    .restart local v2    # "id":I
    .restart local v4    # "t":Landroid/support/v8/renderscript/Type;
    :cond_5
    new-instance v7, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v7, v2, p0, v4, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    return-object v7
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 9
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1559
    sget-object v7, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .prologue
    .line 1532
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1393
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 10
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v9, 0x0

    .line 1338
    sget-boolean v6, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v6, :cond_0

    move-object v4, p0

    .line 1339
    check-cast v4, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 1340
    .local v4, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v4, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 1377
    .end local v4    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v0

    .line 1342
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1345
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1346
    and-int/lit16 v6, p3, 0x80

    if-eqz v6, :cond_1

    .line 1347
    new-instance v6, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1349
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1350
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1351
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v1, p1, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1352
    invoke-static {p0, v3, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    goto :goto_0

    .line 1355
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;

    move-result-object v5

    .line 1358
    .local v5, "t":Landroid/support/v8/renderscript/Type;
    sget-object v6, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v6, :cond_4

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x83

    if-ne p3, v6, :cond_4

    .line 1361
    invoke-virtual {v5, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v6

    iget v7, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v6, v7, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1362
    .local v2, "id":I
    if-nez v2, :cond_3

    .line 1363
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1367
    :cond_3
    new-instance v0, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v5, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 1368
    .local v0, "alloc":Landroid/support/v8/renderscript/Allocation;
    invoke-direct {v0, p1}, Landroid/support/v8/renderscript/Allocation;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1373
    .end local v0    # "alloc":Landroid/support/v8/renderscript/Allocation;
    .end local v2    # "id":I
    :cond_4
    invoke-virtual {v5, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v6

    iget v7, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    invoke-virtual {p0, v6, v7, p1, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I

    move-result v2

    .line 1374
    .restart local v2    # "id":I
    if-nez v2, :cond_5

    .line 1375
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1377
    :cond_5
    new-instance v0, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, v2, p0, v5, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/16 :goto_0
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 1612
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 4
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 1585
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1586
    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_0

    .line 1587
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1589
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1590
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 1591
    .local v0, "alloc":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1592
    return-object v0
.end method

.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 1629
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1630
    const/4 v1, 0x0

    .line 1632
    .local v1, "allocArray":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1633
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    .line 1634
    .local v0, "alloc":Landroid/support/v8/renderscript/Allocation;
    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    return-object v0

    .line 1637
    .end local v0    # "alloc":Landroid/support/v8/renderscript/Allocation;
    :catch_0
    move-exception v2

    .line 1638
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "count"    # I

    .prologue
    .line 1292
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 7
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    .line 1266
    sget-boolean v4, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v4, :cond_0

    move-object v2, p0

    .line 1267
    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 1268
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    .line 1279
    .end local v2    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v4

    .line 1270
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1271
    new-instance v0, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 1272
    .local v0, "b":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 1273
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    .line 1275
    .local v3, "t":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v4

    sget-object v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    iget v5, v5, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p3, v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result v1

    .line 1276
    .local v1, "id":I
    if-nez v1, :cond_1

    .line 1277
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Allocation creation failed."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1279
    :cond_1
    new-instance v4, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v4, v1, p0, v3, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto :goto_0
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;

    .prologue
    .line 1250
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "usage"    # I

    .prologue
    .line 1237
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 1210
    sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 1211
    check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 1212
    .local v1, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    invoke-static {v1, p1, p2, p3}, Landroid/support/v8/renderscript/AllocationThunker;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    .line 1222
    .end local v1    # "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :goto_0
    return-object v2

    .line 1214
    :cond_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1215
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1216
    new-instance v2, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v3, "Bad Type"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1218
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    iget v3, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, p3, v4}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(IIII)I

    move-result v0

    .line 1219
    .local v0, "id":I
    if-nez v0, :cond_2

    .line 1220
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Allocation creation failed."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1222
    :cond_2
    new-instance v2, Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v2, v0, p0, p1, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto :goto_0
.end method

.method private data1DChecks(IIII)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 689
    if-gez p1, :cond_0

    .line 690
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 693
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_1
    add-int v0, p1, p2

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    if-le v0, v1, :cond_2

    .line 696
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_2
    if-ge p3, p4, :cond_3

    .line 700
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_3
    return-void
.end method

.method static elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 4
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1297
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    .line 1298
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    .line 1307
    :goto_0
    return-object v1

    .line 1300
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 1301
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1303
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    .line 1304
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1306
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_3

    .line 1307
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    goto :goto_0

    .line 1309
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    .line 219
    return-void
.end method

.method static typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
    .locals 3
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .prologue
    .line 1314
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    .line 1315
    .local v0, "e":Landroid/support/v8/renderscript/Element;
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    .line 1316
    .local v1, "tb":Landroid/support/v8/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 1317
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    .line 1318
    sget-object v2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    .line 1319
    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    return-object v2

    .line 1318
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCacheInfo(Landroid/support/v8/renderscript/Type;)V
    .locals 3
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    .line 206
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    .line 207
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    .line 208
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 209
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v2, :cond_0

    .line 210
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 212
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v2, :cond_1

    .line 213
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    .line 215
    :cond_1
    return-void
.end method

.method private validate2DRange(IIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 858
    :cond_0
    return-void

    .line 848
    :cond_1
    if-ltz p1, :cond_2

    if-gez p2, :cond_3

    .line 849
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_3
    if-ltz p4, :cond_4

    if-gez p3, :cond_5

    .line 852
    :cond_4
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_5
    add-int v0, p1, p3

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p4

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-le v0, v1, :cond_0

    .line 855
    :cond_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .prologue
    .line 995
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 1009
    :cond_0
    return-void

    .line 999
    :cond_1
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 1000
    :cond_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_3
    if-ltz p5, :cond_4

    if-ltz p4, :cond_4

    if-gez p6, :cond_5

    .line 1003
    :cond_4
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_5
    add-int v0, p1, p4

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    if-gt v0, v1, :cond_6

    add-int v0, p2, p5

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-gt v0, v1, :cond_6

    add-int v0, p3, p6

    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-le v0, v1, :cond_0

    .line 1006
    :cond_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    .line 398
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 399
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_0

    .line 400
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_0
    sget-object v1, Landroid/support/v8/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 444
    :cond_1
    return-void

    .line 404
    :pswitch_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1

    .line 405
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :pswitch_1
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 415
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :pswitch_2
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 425
    :cond_3
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    :pswitch_3
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 435
    :cond_4
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 447
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 448
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    return-void
.end method

.method private validateIsFloat32()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 278
    :cond_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    return-void

    .line 271
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 287
    :cond_0
    return-void

    .line 289
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v0, v1, :cond_1

    .line 307
    :cond_0
    return-void

    .line 309
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v2, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
    .locals 14
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 837
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v6, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    const/4 v8, 0x1

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v13, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move v3, p1

    move/from16 v7, p2

    move/from16 v10, p4

    invoke-virtual/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    .line 841
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 809
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 810
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 811
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 823
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 824
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    .line 825
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 782
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    .line 783
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 0
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 795
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 796
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    .line 797
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 753
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 754
    .local v6, "dataSize":I
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V

    .line 755
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[BI)V

    .line 756
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 766
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 767
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V

    .line 768
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[FI)V

    .line 769
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 728
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V

    .line 729
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[II)V

    .line 730
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 7
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 740
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    mul-int v6, v0, p2

    .line 741
    .local v6, "dataSize":I
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2, v0, v6}, Landroid/support/v8/renderscript/Allocation;->data1DChecks(IIII)V

    .line 742
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(IIII[SI)V

    .line 743
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
    .locals 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 963
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 964
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 965
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v6, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v9

    move-object/from16 v0, p5

    iget v12, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v13, v3, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move v3, p1

    move/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIIIIIIII)V

    .line 969
    return-void
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 900
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 901
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    .line 902
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 945
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 946
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    .line 947
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 930
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 931
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    .line 932
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 915
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 916
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    .line 917
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 981
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 982
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 984
    .local v8, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 985
    .local v7, "c":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    invoke-virtual {v7, p3, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 986
    invoke-virtual {p0, p1, p2, v8}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    .line 992
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v8    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-direct {p0, p3}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 990
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 991
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method copy2DRangeFromUnchecked(IIII[B)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 862
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 863
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    array-length v9, p5

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[BI)V

    .line 865
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[F)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 883
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 884
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[FI)V

    .line 886
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[I)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 875
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 876
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 877
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x4

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[II)V

    .line 879
    return-void
.end method

.method copy2DRangeFromUnchecked(IIII[S)V
    .locals 10
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 868
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 869
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->validate2DRange(IIII)V

    .line 870
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    iget v5, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    array-length v2, p5

    mul-int/lit8 v9, v2, 0x2

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(IIIIIII[SI)V

    .line 872
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILandroid/support/v8/renderscript/Allocation;III)V
    .locals 15
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .prologue
    .line 1119
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1120
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1121
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v10

    move-object/from16 v0, p7

    iget v14, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v14}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIIIIIIII)V

    .line 1124
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[B)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [B

    .prologue
    .line 1070
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 1071
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    .line 1072
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[F)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [F

    .prologue
    .line 1097
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 1098
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    .line 1099
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[I)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [I

    .prologue
    .line 1088
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 1089
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    .line 1090
    return-void
.end method

.method public copy3DRangeFrom(IIIIII[S)V
    .locals 0
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [S

    .prologue
    .line 1079
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 1080
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    .line 1081
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[B)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [B

    .prologue
    .line 1016
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1017
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1018
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v11, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[BI)V

    .line 1020
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[F)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [F

    .prologue
    .line 1049
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1050
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1051
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[FI)V

    .line 1053
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[I)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [I

    .prologue
    .line 1038
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1039
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1040
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[II)V

    .line 1042
    return-void
.end method

.method copy3DRangeFromUnchecked(IIIIII[S)V
    .locals 12
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # [S

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1028
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->validate3DRange(IIIIII)V

    .line 1029
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v2

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move-object/from16 v0, p7

    array-length v3, v0

    mul-int/lit8 v11, v3, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(IIIIIIII[SI)V

    .line 1031
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 607
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 610
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 611
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 612
    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 618
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 616
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 617
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
    .locals 8
    .param p1, "a"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v1, 0x0

    .line 627
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 628
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V

    .line 632
    return-void
.end method

.method public copyFrom([B)V
    .locals 8
    .param p1, "d"    # [B

    .prologue
    const/4 v1, 0x0

    .line 565
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 566
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 567
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[B)V

    .line 573
    :goto_0
    return-void

    .line 568
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 569
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V

    goto :goto_0

    .line 571
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    goto :goto_0
.end method

.method public copyFrom([F)V
    .locals 8
    .param p1, "d"    # [F

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 584
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 585
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[F)V

    .line 591
    :goto_0
    return-void

    .line 586
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 587
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V

    goto :goto_0

    .line 589
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[F)V

    goto :goto_0
.end method

.method public copyFrom([I)V
    .locals 8
    .param p1, "d"    # [I

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 530
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 531
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[I)V

    .line 537
    :goto_0
    return-void

    .line 532
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 533
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V

    goto :goto_0

    .line 535
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[I)V

    goto :goto_0
.end method

.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
    .locals 5
    .param p1, "d"    # [Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 384
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 385
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsObject()V

    .line 386
    array-length v2, p1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    if-eq v2, v3, :cond_0

    .line 387
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_0
    array-length v2, p1

    new-array v1, v2, [I

    .line 391
    .local v1, "i":[I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 392
    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v2

    aput v2, v1, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    .line 395
    return-void
.end method

.method public copyFrom([S)V
    .locals 8
    .param p1, "d"    # [S

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 548
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 549
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFrom(IIIIII[S)V

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 551
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V

    goto :goto_0

    .line 553
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFrom(II[S)V

    goto :goto_0
.end method

.method public copyFromUnchecked([B)V
    .locals 8
    .param p1, "d"    # [B

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 495
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 496
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[B)V

    .line 502
    :goto_0
    return-void

    .line 497
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 498
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[B)V

    goto :goto_0

    .line 500
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    goto :goto_0
.end method

.method public copyFromUnchecked([F)V
    .locals 8
    .param p1, "d"    # [F

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 512
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 513
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[F)V

    .line 519
    :goto_0
    return-void

    .line 514
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 515
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[F)V

    goto :goto_0

    .line 517
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V

    goto :goto_0
.end method

.method public copyFromUnchecked([I)V
    .locals 8
    .param p1, "d"    # [I

    .prologue
    const/4 v1, 0x0

    .line 460
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 461
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 462
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[I)V

    .line 468
    :goto_0
    return-void

    .line 463
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 464
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[I)V

    goto :goto_0

    .line 466
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    goto :goto_0
.end method

.method public copyFromUnchecked([S)V
    .locals 8
    .param p1, "d"    # [S

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 478
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    if-lez v0, :cond_0

    .line 479
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->copy3DRangeFromUnchecked(IIIIII[S)V

    .line 485
    :goto_0
    return-void

    .line 480
    :cond_0
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    if-lez v0, :cond_1

    .line 481
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIII[S)V

    goto :goto_0

    .line 483
    :cond_1
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V

    goto :goto_0
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1135
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1136
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1137
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V

    .line 1138
    return-void
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 1148
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt8()V

    .line 1149
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1150
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[B)V

    .line 1151
    return-void
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsFloat32()V

    .line 1188
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1189
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[F)V

    .line 1190
    return-void
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 1174
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt32()V

    .line 1175
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1176
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[I)V

    .line 1177
    return-void
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 1161
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->validateIsInt16()V

    .line 1162
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1163
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(I[S)V

    .line 1164
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 259
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    if-ne v0, v2, :cond_0

    .line 260
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_0
    invoke-super {p0}, Landroid/support/v8/renderscript/BaseObj;->finalize()V

    .line 263
    return-void
.end method

.method public generateMipmaps()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGenerateMipmaps(I)V

    .line 716
    return-void
.end method

.method public getBytesSize()I
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget v0, v0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 201
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    return v0
.end method

.method public ioReceive()V
    .locals 2

    .prologue
    .line 370
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 375
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoReceive(I)V

    .line 376
    return-void
.end method

.method public ioSend()V
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 353
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoSend(I)V

    .line 354
    return-void
.end method

.method public ioSendOutput()V
    .locals 0

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->ioSend()V

    .line 362
    return-void
.end method

.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 8
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 665
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 666
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 667
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component_number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_0
    if-gez p1, :cond_1

    .line 670
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    .line 674
    .local v5, "data":[B
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v6

    .line 675
    .local v6, "data_length":I
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v7

    .line 676
    .local v7, "eSize":I
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    aget v0, v0, p2

    mul-int/2addr v7, v0

    .line 678
    if-eq v6, v7, :cond_2

    .line 679
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field packer sizelength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match component size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationElementData1D(IIII[BI)V

    .line 685
    return-void
.end method

.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 643
    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 644
    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    iget-object v4, v4, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v3

    .line 645
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 646
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 648
    .local v2, "data_length":I
    div-int v0, v2, v3

    .line 649
    .local v0, "count":I
    mul-int v4, v3, v0

    if-eq v4, v2, :cond_0

    .line 650
    new-instance v4, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    .line 654
    return-void
.end method

.method public syncAll(I)V
    .locals 2
    .param p1, "srcLocation"    # I

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_0

    .line 334
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :pswitch_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 337
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->getIDSafe()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSyncAll(II)V

    .line 338
    return-void

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
