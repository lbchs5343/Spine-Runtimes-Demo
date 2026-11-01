.class public abstract Lg/ji;
.super Lg/dms;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lg/cgm;


# instance fields
.field public d:Lg/ji;

.field public e:Lg/fei;


# virtual methods
.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lg/ji;->e:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    iput-object p0, p0, Lg/ji;->d:Lg/ji;

    const p1, 0x7f090196

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p1, 0x7f090215

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p1, 0x7f090122

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/ScrollViewWithMaxHeight;

    iget-object v1, p0, Lg/ji;->d:Lg/ji;

    invoke-static {v1}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v1, v1, v0

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    if-le v2, v1, :cond_0

    int-to-double v1, v1

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    :goto_0
    mul-double v1, v1, v5

    div-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_1

    :cond_0
    int-to-double v1, v1

    const-wide/high16 v5, 0x4016000000000000L    # 5.5

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v1}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "donation_package_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lg/fei;

    invoke-direct {p1}, Lg/fei;-><init>()V

    iput-object p1, p0, Lg/ji;->e:Lg/fei;

    :cond_2
    :goto_2
    return-void
.end method
