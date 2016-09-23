.class Landroid/support/v8/renderscript/AllocationThunker;
.super Landroid/support/v8/renderscript/Allocation;
.source "AllocationThunker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/AllocationThunker$1;
    }
.end annotation


# static fields
.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mN:Landroid/renderscript/Allocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 391
    sget-object v0, Landroid/support/v8/renderscript/AllocationThunker;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 392
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "t"    # Landroid/support/v8/renderscript/Type;
    .param p3, "usage"    # I
    .param p4, "na"    # Landroid/renderscript/Allocation;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;-><init>(ILandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    .line 78
    iput-object p2, p0, Landroid/support/v8/renderscript/AllocationThunker;->mType:Landroid/support/v8/renderscript/Type;

    .line 79
    iput p3, p0, Landroid/support/v8/renderscript/AllocationThunker;->mUsage:I

    .line 80
    iput-object p4, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    .line 81
    return-void
.end method

.method static convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;
    .locals 2
    .param p0, "mc"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;

    .prologue
    .line 40
    sget-object v0, Landroid/support/v8/renderscript/AllocationThunker$1;->$SwitchMap$android$support$v8$renderscript$Allocation$MipmapControl:[I

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation$MipmapControl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 46
    :pswitch_2
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 430
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 432
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v5

    invoke-static {v4, p1, v5, p3}, Landroid/renderscript/Allocation;->createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 435
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 436
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, v3, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 437
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v3    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 14
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
    .line 451
    move-object v12, p0

    check-cast v12, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 453
    .local v12, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    iget-object v1, v12, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static/range {p7 .. p7}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v8

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/renderscript/Allocation;->createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v10

    .line 457
    .local v10, "a":Landroid/renderscript/Allocation;
    new-instance v13, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v10}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-direct {v13, p0, v1}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 458
    .local v13, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v1, Landroid/support/v8/renderscript/AllocationThunker;

    move/from16 v0, p8

    invoke-direct {v1, p0, v13, v0, v10}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 459
    .end local v10    # "a":Landroid/renderscript/Allocation;
    .end local v13    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v11

    .line 460
    .local v11, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v11}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 413
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 415
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v5

    invoke-static {v4, p1, v5, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 419
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 420
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, v3, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 422
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v3    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 6
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 470
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 472
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {p3}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v5

    invoke-static {v4, p1, p2, v5, p4}, Landroid/renderscript/Allocation;->createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 475
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 476
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, v3, p4, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 477
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v3    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
    .locals 5
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 485
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .line 487
    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-static {v4, p1, p2}, Landroid/renderscript/Allocation;->createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 490
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v3, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 491
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, v3, p2, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 492
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v3    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 7
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    .line 499
    move-object v3, p0

    check-cast v3, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v3, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v1, p1

    .line 500
    check-cast v1, Landroid/support/v8/renderscript/ElementThunker;

    .line 502
    .local v1, "et":Landroid/support/v8/renderscript/ElementThunker;
    :try_start_0
    iget-object v6, v3, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Element;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v5

    check-cast v5, Landroid/renderscript/Element;

    invoke-static {v6, v5, p2, p3}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 505
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v4, Landroid/support/v8/renderscript/TypeThunker;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/support/v8/renderscript/TypeThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 506
    .local v4, "tt":Landroid/support/v8/renderscript/TypeThunker;
    new-instance v5, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v5, p0, v4, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 507
    .end local v0    # "a":Landroid/renderscript/Allocation;
    .end local v4    # "tt":Landroid/support/v8/renderscript/TypeThunker;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "exc":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 7
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "type"    # Landroid/support/v8/renderscript/Type;
    .param p2, "mips"    # Landroid/support/v8/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 395
    move-object v2, p0

    check-cast v2, Landroid/support/v8/renderscript/RenderScriptThunker;

    .local v2, "rst":Landroid/support/v8/renderscript/RenderScriptThunker;
    move-object v3, p1

    .line 396
    check-cast v3, Landroid/support/v8/renderscript/TypeThunker;

    .line 399
    .local v3, "tt":Landroid/support/v8/renderscript/TypeThunker;
    :try_start_0
    iget-object v4, v2, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iget-object v5, v3, Landroid/support/v8/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-static {p2}, Landroid/support/v8/renderscript/AllocationThunker;->convertMipmapControl(Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Allocation$MipmapControl;

    move-result-object v6

    invoke-static {v4, v5, v6, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 403
    .local v0, "a":Landroid/renderscript/Allocation;
    new-instance v4, Landroid/support/v8/renderscript/AllocationThunker;

    invoke-direct {v4, p0, p1, p3, v0}, Landroid/support/v8/renderscript/AllocationThunker;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;ILandroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 404
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
    .locals 5
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 297
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v1, v0

    .line 298
    .local v1, "at":Landroid/support/v8/renderscript/AllocationThunker;
    iget-object v3, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object v4, v1, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1, p2, v4, p4}, Landroid/renderscript/Allocation;->copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-void

    .line 299
    .end local v1    # "at":Landroid/support/v8/renderscript/AllocationThunker;
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v2}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFromUnchecked(II[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
    .locals 11
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 336
    :try_start_0
    move-object/from16 v0, p5

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    move-object v9, v0

    .line 337
    .local v9, "at":Landroid/support/v8/renderscript/AllocationThunker;
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object v6, v9, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-void

    .line 338
    .end local v9    # "at":Landroid/support/v8/renderscript/AllocationThunker;
    :catch_0
    move-exception v10

    .line 339
    .local v10, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v10}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v6

    .line 308
    .local v6, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v6}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 328
    :catch_0
    move-exception v6

    .line 329
    .local v6, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v6}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-void

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v6}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 7
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return-void

    .line 314
    :catch_0
    move-exception v6

    .line 315
    .local v6, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v6}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1, p2, p3}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
    .locals 4
    .param p1, "a"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 187
    move-object v0, p1

    check-cast v0, Landroid/support/v8/renderscript/AllocationThunker;

    .line 189
    .local v0, "at":Landroid/support/v8/renderscript/AllocationThunker;
    :try_start_0
    iget-object v2, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    iget-object v3, v0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyFrom(Landroid/renderscript/Allocation;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public copyFrom([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFrom([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFrom([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
    .locals 4
    .param p1, "d"    # [Landroid/support/v8/renderscript/BaseObj;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    array-length v3, p1

    new-array v0, v3, [Landroid/renderscript/BaseObj;

    .line 112
    .local v0, "dN":[Landroid/renderscript/BaseObj;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 113
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/support/v8/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object v3

    aput-object v3, v0, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyFrom([Landroid/renderscript/BaseObj;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public copyFrom([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFromUnchecked([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFromUnchecked([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFromUnchecked([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyFromUnchecked([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFromUnchecked([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyTo([B)V
    .locals 2
    .param p1, "d"    # [B

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo([B)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyTo([F)V
    .locals 2
    .param p1, "d"    # [F

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo([F)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyTo([I)V
    .locals 2
    .param p1, "d"    # [I

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo([I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public copyTo([S)V
    .locals 2
    .param p1, "d"    # [S

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyTo([S)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public generateMipmaps()V
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->generateMipmaps()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBytesSize()I
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getBytesSize()I
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/support/v8/renderscript/AllocationThunker;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/v8/renderscript/AllocationThunker;->getNObj()Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v8/renderscript/TypeThunker;->find(Landroid/renderscript/Type;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 2

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getUsage()I
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public ioReceive()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioReceive()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public ioSend()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->ioSend()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 217
    .local v0, "data":[B
    invoke-virtual {p3}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 218
    .local v2, "fp_length":I
    new-instance v4, Landroid/renderscript/FieldPacker;

    invoke-direct {v4, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 220
    .local v4, "nfp":Landroid/renderscript/FieldPacker;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 221
    aget-byte v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v5, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v5, p1, p2, v4}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 224
    .end local v0    # "data":[B
    .end local v2    # "fp_length":I
    .end local v3    # "i":I
    .end local v4    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    .line 201
    .local v0, "data":[B
    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 202
    .local v2, "fp_length":I
    new-instance v4, Landroid/renderscript/FieldPacker;

    invoke-direct {v4, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 204
    .local v4, "nfp":Landroid/renderscript/FieldPacker;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 205
    aget-byte v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v5, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v5, p1, v4}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 208
    .end local v0    # "data":[B
    .end local v2    # "fp_length":I
    .end local v3    # "i":I
    .end local v4    # "nfp":Landroid/renderscript/FieldPacker;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v1}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public syncAll(I)V
    .locals 2
    .param p1, "srcLocation"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/AllocationThunker;->mN:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->syncAll(I)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/renderscript/RSRuntimeException;
    invoke-static {v0}, Landroid/support/v8/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
