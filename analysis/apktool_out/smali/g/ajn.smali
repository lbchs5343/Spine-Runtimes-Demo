.class public abstract Lg/ajn;
.super Lg/fde;


# instance fields
.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fde;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    iput p1, p0, Lg/ajn;->p:I

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lg/fde;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, -0x1000000

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/ajn;->p:I

    return-void
.end method

.method public abstract mn(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/ajn;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "local://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg/fde;->dq:Ljava/lang/String;

    invoke-super {p0}, Lg/fde;->p()V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    iget v1, p0, Lg/ajn;->p:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/cdf;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lg/cdf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
