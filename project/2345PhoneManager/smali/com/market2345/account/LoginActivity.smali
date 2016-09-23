.class public Lcom/market2345/account/LoginActivity;
.super Lcom/market2345/account/AccountBaseActivity;
.source "LoginActivity.java"


# instance fields
.field private checkCodeEditText:Landroid/widget/EditText;

.field private checkCodeImageView:Landroid/widget/ImageView;

.field private checkCodeLinearLayout:Landroid/widget/LinearLayout;

.field private forgetPasswordTextView:Landroid/widget/TextView;

.field private isPasswordNotNull:Z

.field private isUsernameNotNUll:Z

.field private loginButton:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCookie:Lorg/apache/http/cookie/Cookie;

.field private mPasswordTextWatcher:Landroid/text/TextWatcher;

.field private mUsernameTextWatcher:Landroid/text/TextWatcher;

.field private passwordEditText:Landroid/widget/EditText;

.field private qqButton:Landroid/widget/ImageButton;

.field private registerTextView:Landroid/widget/TextView;

.field private signInController:Lcom/market2345/account/SignInController;

.field private usernameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/market2345/account/AccountBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->mCookie:Lorg/apache/http/cookie/Cookie;

    .line 47
    iput-boolean v1, p0, Lcom/market2345/account/LoginActivity;->isUsernameNotNUll:Z

    .line 48
    iput-boolean v1, p0, Lcom/market2345/account/LoginActivity;->isPasswordNotNull:Z

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/LoginActivity;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/account/LoginActivity;->handlerCallBack(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/account/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->signInWithQQ()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/account/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->signIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/account/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->getCheckCode()V

    return-void
.end method

.method static synthetic access$402(Lcom/market2345/account/LoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/market2345/account/LoginActivity;->isUsernameNotNUll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/account/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->changeButtonStatus()V

    return-void
.end method

.method static synthetic access$602(Lcom/market2345/account/LoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/market2345/account/LoginActivity;->isPasswordNotNull:Z

    return p1
.end method

.method static synthetic access$700(Lcom/market2345/account/LoginActivity;)Lcom/market2345/account/SignInController;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/market2345/account/LoginActivity;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/LoginActivity;
    .param p1, "x1"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/market2345/account/LoginActivity;->mCookie:Lorg/apache/http/cookie/Cookie;

    return-object p1
.end method

.method private changeButtonStatus()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/market2345/account/LoginActivity;->isPasswordNotNull:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/market2345/account/LoginActivity;->isUsernameNotNUll:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private checkHasCheckCode()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initController()V

    .line 71
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/market2345/account/LoginActivity$1;-><init>(Lcom/market2345/account/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/account/SignInController;->checkHasCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$HasCheckCodeCallBack;)V

    .line 80
    return-void
.end method

.method private getCheckCode()V
    .locals 2

    .prologue
    .line 257
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    new-instance v1, Lcom/market2345/account/LoginActivity$9;

    invoke-direct {v1, p0}, Lcom/market2345/account/LoginActivity$9;-><init>(Lcom/market2345/account/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/market2345/account/SignInController;->callCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V

    goto :goto_0
.end method

.method private handlerCallBack(ZLjava/lang/String;Z)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "needCheckCode"    # Z

    .prologue
    .line 272
    invoke-virtual {p0, p2}, Lcom/market2345/account/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 273
    if-eqz p1, :cond_1

    .line 274
    new-instance v0, Lcom/market2345/account/model/event/SignInResultEvent;

    invoke-direct {v0}, Lcom/market2345/account/model/event/SignInResultEvent;-><init>()V

    .line 275
    .local v0, "event":Lcom/market2345/account/model/event/SignInResultEvent;
    iput-boolean p1, v0, Lcom/market2345/account/model/event/SignInResultEvent;->success:Z

    .line 276
    iput-object p2, v0, Lcom/market2345/account/model/event/SignInResultEvent;->msg:Ljava/lang/String;

    .line 277
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->finish()V

    .line 289
    .end local v0    # "event":Lcom/market2345/account/model/event/SignInResultEvent;
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-eqz p3, :cond_0

    .line 280
    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->checkCodeLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    new-instance v2, Lcom/market2345/account/LoginActivity$10;

    invoke-direct {v2, p0}, Lcom/market2345/account/LoginActivity$10;-><init>(Lcom/market2345/account/LoginActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/market2345/account/SignInController;->callCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$CheckCodeCallBack;)V

    goto :goto_0
.end method

.method private initController()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/market2345/account/SignInController;

    invoke-direct {v0}, Lcom/market2345/account/SignInController;-><init>()V

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    .line 294
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/market2345/account/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/account/LoginActivity$2;-><init>(Lcom/market2345/account/LoginActivity;)V

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/market2345/account/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/account/LoginActivity$3;-><init>(Lcom/market2345/account/LoginActivity;)V

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->mUsernameTextWatcher:Landroid/text/TextWatcher;

    .line 126
    new-instance v0, Lcom/market2345/account/LoginActivity$4;

    invoke-direct {v0, p0}, Lcom/market2345/account/LoginActivity$4;-><init>(Lcom/market2345/account/LoginActivity;)V

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->mPasswordTextWatcher:Landroid/text/TextWatcher;

    .line 144
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->qqButton:Landroid/widget/ImageButton;

    .line 145
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    .line 146
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->usernameEditText:Landroid/widget/EditText;

    .line 147
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->passwordEditText:Landroid/widget/EditText;

    .line 148
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeLinearLayout:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeImageView:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeEditText:Landroid/widget/EditText;

    .line 151
    const v0, 0x7f0900b5

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->forgetPasswordTextView:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/LoginActivity;->registerTextView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->usernameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mUsernameTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->passwordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mPasswordTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->qqButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->loginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->forgetPasswordTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->registerTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/account/LoginActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method private signIn()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v5, 0x7f0b00ee

    .line 212
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->usernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "username":Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 215
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0, v5}, Lcom/market2345/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initController()V

    .line 221
    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->showProgressDialog()V

    .line 222
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    new-instance v3, Lcom/market2345/account/LoginActivity$7;

    invoke-direct {v3, p0}, Lcom/market2345/account/LoginActivity$7;-><init>(Lcom/market2345/account/LoginActivity;)V

    move-object v5, v4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/market2345/account/SignInController;->signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->checkCodeEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "checkCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    invoke-virtual {p0, v5}, Lcom/market2345/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initController()V

    .line 242
    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->showProgressDialog()V

    .line 243
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    new-instance v3, Lcom/market2345/account/LoginActivity$8;

    invoke-direct {v3, p0}, Lcom/market2345/account/LoginActivity$8;-><init>(Lcom/market2345/account/LoginActivity;)V

    iget-object v5, p0, Lcom/market2345/account/LoginActivity;->mCookie:Lorg/apache/http/cookie/Cookie;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/market2345/account/SignInController;->signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private signInWithQQ()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initController()V

    .line 199
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    new-instance v1, Lcom/market2345/account/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/market2345/account/LoginActivity$6;-><init>(Lcom/market2345/account/LoginActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/market2345/account/SignInController;->signInWithQQ(Landroid/app/Activity;Lcom/market2345/account/SignInController$SignInCallBack;)V

    .line 206
    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->showProgressDialog()V

    .line 207
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/market2345/account/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initView()V

    .line 58
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/LoginActivity;->setTitleText(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->checkHasCheckCode()V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/market2345/account/AccountBaseActivity;->onDestroy()V

    .line 66
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/model/event/RegisterResultEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/model/event/RegisterResultEvent;

    .prologue
    .line 170
    iget-boolean v0, p1, Lcom/market2345/account/model/event/RegisterResultEvent;->success:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->showProgressDialog()V

    .line 172
    invoke-direct {p0}, Lcom/market2345/account/LoginActivity;->initController()V

    .line 173
    iget-object v0, p0, Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;

    invoke-virtual {p0}, Lcom/market2345/account/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/LoginActivity$5;

    invoke-direct {v2, p0}, Lcom/market2345/account/LoginActivity$5;-><init>(Lcom/market2345/account/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/account/SignInController;->signInAuto(Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;)V

    .line 181
    :cond_0
    return-void
.end method
