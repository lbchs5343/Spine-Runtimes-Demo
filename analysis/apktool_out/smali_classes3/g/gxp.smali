.class public final Lg/gxp;
.super Lg/bhb;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Landroid/widget/EditText;

.field public final c:Lg/ld;


# direct methods
.method public constructor <init>(Lg/zq;I)V
    .locals 1

    invoke-direct {p0, p1}, Lg/bhb;-><init>(Lg/zq;)V

    const p1, 0x7f0800d2

    iput p1, p0, Lg/gxp;->a:I

    new-instance p1, Lg/ld;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lg/ld;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/gxp;->c:Lg/ld;

    if-eqz p2, :cond_0

    iput p2, p0, Lg/gxp;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final aa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ad()Z
    .locals 2

    iget-object v0, p0, Lg/gxp;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final af()V
    .locals 0

    invoke-virtual {p0}, Lg/bhb;->ah()V

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lg/gxp;->a:I

    return v0
.end method

.method public final n()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lg/gxp;->c:Lg/ld;

    return-object v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lg/gxp;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method public final q(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lg/gxp;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lg/bhb;->ah()V

    return-void
.end method

.method public final s()I
    .locals 1

    const v0, 0x7f1203b1

    return v0
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Lg/gxp;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lg/gxp;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    return-void
.end method
