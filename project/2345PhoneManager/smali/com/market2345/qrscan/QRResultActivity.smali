.class public Lcom/market2345/qrscan/QRResultActivity;
.super Landroid/app/Activity;
.source "QRResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/qrscan/QRResultActivity$5;,
        Lcom/market2345/qrscan/QRResultActivity$State;
    }
.end annotation


# static fields
.field public static final PATTERNS:[Ljava/lang/String;

.field public static final PATTERN_ADR:Ljava/lang/String; = "\\nADR:(.+?)\\n"

.field public static final PATTERN_CELL:Ljava/lang/String; = "\\nCELL:(.+?)\\n"

.field public static final PATTERN_CELLPHONE:Ljava/lang/String; = "\\nTEL;CELL:(.+?)\\n"

.field public static final PATTERN_EMAIL:Ljava/lang/String; = "\\nEMAIL:(.+?)\\n"

.field public static final PATTERN_N:Ljava/lang/String; = "\\nN:(.+?)\\n"

.field public static final PATTERN_NAME:Ljava/lang/String; = "\\nNAME:(.+?)\\n"

.field public static final PATTERN_ORG:Ljava/lang/String; = "\\nORG:(.+?)\\n"

.field public static final PATTERN_TELL:Ljava/lang/String; = "\\nTEL:(.+?)\\n"

.field public static final PATTERN_TITLE:Ljava/lang/String; = "\\nTITLE:(.+?)\\n"

.field public static final SCAN_RESULT:Ljava/lang/String; = "scan_result"


# instance fields
.field private hasMeasure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\nTITLE:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\\nORG:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\\nADR:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\\nTEL;CELL:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\\nCELL:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\\nTEL:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\\nEMAIL:(.+?)\\n"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\\nNAME:(.+?)\\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\nN:(.+?)\\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity;->PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 304
    return-void
.end method

.method private alertDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 391
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0c0012

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 392
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 393
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    const v2, 0x7f0b010f

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(I)V

    .line 395
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 396
    const v2, 0x7f0b0110

    new-instance v3, Lcom/market2345/qrscan/QRResultActivity$3;

    invoke-direct {v3, p0}, Lcom/market2345/qrscan/QRResultActivity$3;-><init>(Lcom/market2345/qrscan/QRResultActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 402
    const v2, 0x7f0b00f6

    new-instance v3, Lcom/market2345/qrscan/QRResultActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/market2345/qrscan/QRResultActivity$4;-><init>(Lcom/market2345/qrscan/QRResultActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 407
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 408
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 409
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 411
    return-void
.end method

.method private handleResult(Ljava/lang/String;)Lcom/market2345/qrscan/QRResultActivity$State;
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "www."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    :cond_0
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    sget-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->APK:Lcom/market2345/qrscan/QRResultActivity$State;

    .line 300
    .local v0, "state":Lcom/market2345/qrscan/QRResultActivity$State;
    :goto_0
    return-object v0

    .line 293
    .end local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    :cond_1
    sget-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->URL:Lcom/market2345/qrscan/QRResultActivity$State;

    .restart local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    goto :goto_0

    .line 295
    .end local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    :cond_2
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "END:VCARD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    sget-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->VCARD:Lcom/market2345/qrscan/QRResultActivity$State;

    .restart local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    goto :goto_0

    .line 298
    .end local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    :cond_3
    sget-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->TEXT:Lcom/market2345/qrscan/QRResultActivity$State;

    .restart local v0    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    goto :goto_0
.end method

.method private inflateResultView(Lcom/market2345/qrscan/QRResultActivity$State;Ljava/lang/String;)Landroid/view/View;
    .locals 29
    .param p1, "state"    # Lcom/market2345/qrscan/QRResultActivity$State;
    .param p2, "result"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static/range {p2 .. p2}, Lcom/market2345/lm/util/StringUtils;->ToDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 126
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300a2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 127
    .local v24, "root":Landroid/widget/LinearLayout;
    const v2, 0x7f090052

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 128
    .local v26, "title":Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 129
    .local v10, "container":Landroid/view/View;
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$5;->$SwitchMap$com$market2345$qrscan$QRResultActivity$State:[I

    invoke-virtual/range {p1 .. p1}, Lcom/market2345/qrscan/QRResultActivity$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 195
    const v2, 0x7f0b0112

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    const v2, 0x7f0300a4

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/View;
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 197
    .restart local v10    # "container":Landroid/view/View;
    const v2, 0x7f09033c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 198
    .local v27, "txt_tv":Landroid/widget/TextView;
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x7f090216

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 200
    .local v18, "qr_copy":Landroid/widget/Button;
    const v2, 0x7f0b010b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 201
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->TEXT:Lcom/market2345/qrscan/QRResultActivity$State;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 202
    const v2, 0x7f09001b

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 203
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .end local v18    # "qr_copy":Landroid/widget/Button;
    .end local v27    # "txt_tv":Landroid/widget/TextView;
    :goto_0
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v14, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/qrscan/QRResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v12, v2, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v12, "density":F
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v12

    float-to-int v0, v2

    move/from16 v16, v0

    .line 210
    .local v16, "padding":I
    move/from16 v0, v16

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 211
    move/from16 v0, v16

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 212
    move/from16 v0, v16

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 213
    move/from16 v0, v16

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 214
    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-object v24

    .line 131
    .end local v12    # "density":F
    .end local v14    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "padding":I
    :pswitch_0
    const v2, 0x7f0b0111

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const v2, 0x7f0300a3

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/View;
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 133
    .restart local v10    # "container":Landroid/view/View;
    const v2, 0x7f090339

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 134
    .local v17, "qr_apk_tv":Landroid/widget/TextView;
    const-string v2, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v2, 0x7f09033b

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 137
    .local v19, "qr_down":Landroid/widget/Button;
    const v2, 0x7f09033a

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 138
    .local v21, "qr_goto_url":Landroid/widget/Button;
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->APK:Lcom/market2345/qrscan/QRResultActivity$State;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 139
    const v2, 0x7f09001b

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 140
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->URL:Lcom/market2345/qrscan/QRResultActivity$State;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 141
    const v2, 0x7f09001b

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 142
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 147
    .end local v17    # "qr_apk_tv":Landroid/widget/TextView;
    .end local v19    # "qr_down":Landroid/widget/Button;
    .end local v21    # "qr_goto_url":Landroid/widget/Button;
    :pswitch_1
    const v2, 0x7f0b0114

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v7, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const v2, 0x7f0300a5

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/View;
    check-cast v10, Landroid/widget/ScrollView;

    .line 155
    .restart local v10    # "container":Landroid/view/View;
    const v2, 0x7f09033d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 157
    .local v5, "vcard_container":Landroid/widget/LinearLayout;
    sget-object v9, Lcom/market2345/qrscan/QRResultActivity;->PATTERNS:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_0

    aget-object v6, v9, v13

    .local v6, "pattern":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 158
    invoke-direct/range {v2 .. v7}, Lcom/market2345/qrscan/QRResultActivity;->mactchVcard(Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "content":Ljava/lang/String;
    const-string v2, "\\nNAME:(.+?)\\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    :cond_0
    const v2, 0x7f09033f

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 165
    .local v8, "add":Landroid/widget/Button;
    const v2, 0x7f09033e

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 167
    .local v25, "show":Landroid/widget/Button;
    const v2, 0x7f090340

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 168
    .local v23, "qr_vcard_indicator_container":Landroid/widget/RelativeLayout;
    const v2, 0x7f090341

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 169
    .local v22, "qr_vcard_code":Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->VCARD:Lcom/market2345/qrscan/QRResultActivity$State;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 172
    const v2, 0x7f090019

    invoke-virtual {v8, v2, v7}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->VCARDCODE:Lcom/market2345/qrscan/QRResultActivity$State;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 176
    const v2, 0x7f090019

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 177
    const v2, 0x7f09001a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v10}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 178
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 157
    .end local v8    # "add":Landroid/widget/Button;
    .end local v22    # "qr_vcard_code":Landroid/widget/TextView;
    .end local v23    # "qr_vcard_indicator_container":Landroid/widget/RelativeLayout;
    .end local v25    # "show":Landroid/widget/Button;
    .restart local v6    # "pattern":Ljava/lang/String;
    .restart local v11    # "content":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 182
    .end local v5    # "vcard_container":Landroid/widget/LinearLayout;
    .end local v6    # "pattern":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :pswitch_2
    const v2, 0x7f0b0113

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    const v2, 0x7f0300a4

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "container":Landroid/view/View;
    check-cast v10, Landroid/widget/RelativeLayout;

    .line 184
    .restart local v10    # "container":Landroid/view/View;
    const v2, 0x7f09033c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 185
    .local v28, "url_tv":Landroid/widget/TextView;
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v2, 0x7f090216

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 188
    .local v20, "qr_go_url":Landroid/widget/Button;
    const v2, 0x7f0b010e

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 189
    sget-object v2, Lcom/market2345/qrscan/QRResultActivity$State;->URL:Lcom/market2345/qrscan/QRResultActivity$State;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 190
    const v2, 0x7f09001b

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 191
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mactchVcard(Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "vcard_container"    # Landroid/widget/LinearLayout;
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 230
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 231
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "s_content":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 234
    const v7, 0x7f0300a6

    invoke-virtual {p2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 235
    .local v2, "n_item":Landroid/widget/RelativeLayout;
    const v6, 0x7f0900ae

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    .local v3, "n_title":Landroid/widget/TextView;
    const v6, 0x7f09005e

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 237
    .local v1, "n_content":Landroid/widget/TextView;
    invoke-direct {p0, v3, p4, p5, v5}, Lcom/market2345/qrscan/QRResultActivity;->matchField(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v6, 0x0

    invoke-virtual {p3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 243
    .end local v1    # "n_content":Landroid/widget/TextView;
    .end local v2    # "n_item":Landroid/widget/RelativeLayout;
    .end local v3    # "n_title":Landroid/widget/TextView;
    .end local v5    # "s_content":Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_0
    move-object v5, v6

    goto :goto_0
.end method

.method private matchField(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "n_title"    # Landroid/widget/TextView;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0b011a

    const v3, 0x7f0b0117

    const/16 v2, 0x11

    const/4 v1, 0x2

    .line 247
    const-string v0, "\\nADR:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const v0, 0x7f0b0116

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 249
    const-string v0, "postal"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v0, "postal_type"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v0, "\\nCELL:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 253
    const-string v0, "secondary_phone_type"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v0, "secondary_phone"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "\\nTEL;CELL:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 257
    const-string v0, "tertiary_phone_type"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v0, "tertiary_phone"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :cond_3
    const-string v0, "\\nEMAIL:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    const v0, 0x7f0b0119

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 261
    const-string v0, "email_type"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v0, "email"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 263
    :cond_4
    const-string v0, "\\nN:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 265
    const-string v0, "name"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 266
    :cond_5
    const-string v0, "\\nNAME:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 268
    const-string v0, "name"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 269
    :cond_6
    const-string v0, "\\nORG:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 270
    const v0, 0x7f0b011b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 271
    const-string v0, "company"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 272
    :cond_7
    const-string v0, "\\nTEL:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 274
    const-string v0, "phone_type"

    const/4 v1, 0x3

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v0, "phone"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 276
    :cond_8
    const-string v0, "\\nTITLE:(.+?)\\n"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 278
    const-string v0, "job_title"

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/market2345/qrscan/QRResultActivity;->onBackPressed()V

    .line 415
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/qrscan/QRResultActivity$State;

    .line 312
    .local v7, "state":Lcom/market2345/qrscan/QRResultActivity$State;
    sget-object v11, Lcom/market2345/qrscan/QRResultActivity$5;->$SwitchMap$com$market2345$qrscan$QRResultActivity$State:[I

    invoke-virtual {v7}, Lcom/market2345/qrscan/QRResultActivity$State;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 382
    const-string v11, "clipboard"

    invoke-virtual {p0, v11}, Lcom/market2345/qrscan/QRResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 383
    .local v1, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {p0}, Lcom/market2345/qrscan/QRResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "scan_result"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const v11, 0x7f0b010c

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 387
    .end local v1    # "cm":Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 314
    :pswitch_0
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 315
    const v11, 0x7f09001b

    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 317
    .local v9, "url":Ljava/lang/String;
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 318
    .local v0, "app":Lcom/market2345/model/App;
    iput-object v9, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 319
    iput-object v9, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 320
    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "title":Ljava/lang/String;
    iput-object v8, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 323
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/market2345/model/App;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-virtual {v11, v12}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 324
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "notification"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/market2345/qrscan/QRResultActivity;->alertDialog()V

    goto :goto_0

    .line 330
    :pswitch_1
    const v11, 0x7f090019

    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 331
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/market2345/qrscan/QRResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    .end local v5    # "i":Landroid/content/Intent;
    :pswitch_2
    const v11, 0x7f090019

    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 335
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f09001a

    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 345
    .local v2, "container":Landroid/widget/ScrollView;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 346
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 347
    new-instance v11, Lcom/market2345/qrscan/QRResultActivity$1;

    invoke-direct {v11, p0, v2}, Lcom/market2345/qrscan/QRResultActivity$1;-><init>(Lcom/market2345/qrscan/QRResultActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 355
    :cond_1
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 356
    new-instance v11, Lcom/market2345/qrscan/QRResultActivity$2;

    invoke-direct {v11, p0, v2}, Lcom/market2345/qrscan/QRResultActivity$2;-><init>(Lcom/market2345/qrscan/QRResultActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 365
    .end local v2    # "container":Landroid/widget/ScrollView;
    .end local v10    # "view":Landroid/view/View;
    :pswitch_3
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 366
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const v11, 0x7f09001b

    invoke-virtual {p1, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 369
    .local v3, "content_url":Landroid/net/Uri;
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 371
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/market2345/qrscan/QRResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v4

    .line 374
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "\u60a8\u7684\u624b\u673a\u6ca1\u6709\u6d4f\u89c8\u5668.\u4e0b\u8f7d\u8f6f\u4ef6\u9700\u8981\u6253\u5f00\u6d4f\u89c8\u5668"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 377
    .end local v3    # "content_url":Landroid/net/Uri;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/market2345/qrscan/QRResultActivity;->alertDialog()V

    goto/16 :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/market2345/qrscan/QRResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "scan_result"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 104
    .local v4, "view":Landroid/view/View;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/qrscan/QRResultActivity;->handleResult(Ljava/lang/String;)Lcom/market2345/qrscan/QRResultActivity$State;

    move-result-object v3

    .line 106
    .local v3, "state":Lcom/market2345/qrscan/QRResultActivity$State;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/market2345/qrscan/QRResultActivity;->inflateResultView(Lcom/market2345/qrscan/QRResultActivity$State;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 113
    .end local v3    # "state":Lcom/market2345/qrscan/QRResultActivity$State;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/market2345/qrscan/QRResultActivity;->setContentView(Landroid/view/View;)V

    .line 114
    return-void

    .line 108
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "view":Landroid/view/View;
    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/market2345/qrscan/QRResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 110
    .local v1, "padding":I
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    move-object v5, v4

    .line 111
    check-cast v5, Landroid/widget/TextView;

    const-string v6, "\u4e8c\u7ef4\u7801\u626b\u63cf\u51fa\u9519\uff0c\u8bf7\u91cd\u65b0\u626b\u63cf!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
