.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/d/dq;
.super Lg/efb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/efb;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public p()V
    .locals 2

    invoke-super {p0}, Lg/efb;->p()V

    iget-object v0, p0, Lg/efb;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lg/dlv;->d(I)V

    invoke-virtual {p0}, Lg/dlv;->kx()V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lg/dlv;->p(I)V

    invoke-virtual {p0, v0}, Lg/dlv;->s(I)V

    return-void
.end method
