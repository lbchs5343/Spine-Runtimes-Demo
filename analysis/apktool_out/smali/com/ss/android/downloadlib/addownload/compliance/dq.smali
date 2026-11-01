.class public Lcom/ss/android/downloadlib/addownload/compliance/dq;
.super Landroid/app/Dialog;


# instance fields
.field private d:Landroid/widget/TextView;

.field private dq:Landroid/widget/TextView;

.field private ia:Landroid/widget/LinearLayout;

.field private final ig:Lcom/ss/android/downloadlib/addownload/d/d;

.field private iw:Landroid/widget/TextView;

.field private kk:Landroid/app/Activity;

.field private mn:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

.field private no:J

.field private final o:J

.field private ox:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->kk:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->o:J

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/ox;->dq()Lcom/ss/android/downloadlib/addownload/compliance/ox;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/d/d;

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/addownload/compliance/dq;)Lcom/ss/android/downloadlib/guide/install/ClipImageView;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->mn:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    return-object p0
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/compliance/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->no:J

    return-wide v0
.end method

.method private dq()V
    .locals 4

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_app_name:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_app_version:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->d:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_app_developer:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ox:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_app_detail:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->p:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_app_privacy:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->s:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tv_give_up:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->iw:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->iv_app_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->mn:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->ll_download:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ia:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    iget-object v1, v1, Lcom/ss/android/downloadlib/addownload/d/d;->s:Ljava/lang/String;

    const-string v2, "--"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/downloadlib/mn/mp;->dq([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7248\u672c\u53f7\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/d/d;->iw:Ljava/lang/String;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/mn/mp;->dq([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u53d1\u8005\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/d/d;->mn:Ljava/lang/String;

    const-string v3, "\u5e94\u7528\u4fe1\u606f\u6b63\u5728\u5b8c\u5584\u4e2d"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/downloadlib/mn/mp;->dq([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->mn:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/no;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/mn/mp;->dq(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setRoundRadius(I)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->mn:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    const-string v1, "#EBEBEB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq()Lcom/ss/android/downloadlib/addownload/compliance/p;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->o:J

    new-instance v3, Lcom/ss/android/downloadlib/addownload/compliance/dq$2;

    invoke-direct {v3, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/compliance/p;->dq(JLcom/ss/android/downloadlib/addownload/compliance/p$dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/dq$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$3;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/dq$4;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$4;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->iw:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/dq$5;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$5;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ia:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/dq$6;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$6;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic ox(Lcom/ss/android/downloadlib/addownload/compliance/dq;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->kk:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic p(Lcom/ss/android/downloadlib/addownload/compliance/dq;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->o:J

    return-wide v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->kk:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_dialog_appinfo:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/bytedance/sdk/openadsdk/adhost/R$drawable;->ttdownloader_bg_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->ig:Lcom/ss/android/downloadlib/addownload/d/d;

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/d/d;->d:J

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->no:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq;->dq()V

    const-string p1, "lp_app_dialog_show"

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/dq;->no:J

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/mn;->d(Ljava/lang/String;J)V

    new-instance p1, Lcom/ss/android/downloadlib/addownload/compliance/dq$1;

    invoke-direct {p1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/dq$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/dq;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
