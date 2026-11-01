.class public Lcom/ss/android/downloadlib/addownload/dq/s;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/dq/s$dq;
    }
.end annotation


# instance fields
.field private d:Landroid/widget/TextView;

.field private dq:Landroid/widget/TextView;

.field private ia:Z

.field private ig:Ljava/lang/String;

.field private iw:Lcom/ss/android/downloadlib/addownload/dq/ox;

.field private kk:Landroid/app/Activity;

.field private mn:Z

.field private mp:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private ox:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private s:Lcom/ss/android/downloadlib/addownload/dq/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/downloadlib/addownload/dq/p;Lcom/ss/android/downloadlib/addownload/dq/ox;)V
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$style;->ttdownloader_translucent_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->kk:Landroid/app/Activity;

    iput-object p7, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->s:Lcom/ss/android/downloadlib/addownload/dq/p;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->no:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ig:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->mp:Ljava/lang/String;

    iput-object p8, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->iw:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-virtual {p0, p6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->p()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/downloadlib/addownload/dq/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->iw()V

    return-void
.end method

.method private delete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ia:Z

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->dismiss()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/downloadlib/addownload/dq/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->s()V

    return-void
.end method

.method private iw()V
    .locals 0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->dismiss()V

    return-void
.end method

.method public static synthetic ox(Lcom/ss/android/downloadlib/addownload/dq/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->delete()V

    return-void
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->kk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->dq()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->dq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->ox()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->d:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->message_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ox:Landroid/widget/TextView;

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->delete_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->dq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->mp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->mp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ox:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->dq:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/dq/s$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/dq/s$1;-><init>(Lcom/ss/android/downloadlib/addownload/dq/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/dq/s$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/dq/s$2;-><init>(Lcom/ss/android/downloadlib/addownload/dq/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/dq/s$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/dq/s$3;-><init>(Lcom/ss/android/downloadlib/addownload/dq/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->mn:Z

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/dq/s;->dismiss()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->confirm_tv:I

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->kk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->kk:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->mn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->s:Lcom/ss/android/downloadlib/addownload/dq/p;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/p;->dq()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->ia:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->iw:Lcom/ss/android/downloadlib/addownload/dq/ox;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/ox;->delete()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/dq/s;->s:Lcom/ss/android/downloadlib/addownload/dq/p;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/dq/p;->d()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dq()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$layout;->ttdownloader_dialog_select_operation:I

    return v0
.end method

.method public ox()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->cancel_tv:I

    return v0
.end method
