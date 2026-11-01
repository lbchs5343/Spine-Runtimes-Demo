.class public final Lg/bix;
.super Lg/eyh;


# instance fields
.field public a:Lg/acb;


# virtual methods
.method public final dq()Lg/ewk;
    .locals 1

    new-instance v0, Lg/eoe;

    invoke-direct {v0, p0}, Lg/eoe;-><init>(Lg/eyh;)V

    return-object v0
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lg/acb;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/bix;->a:Lg/acb;

    iput-object p0, v0, Lg/acb;->a:Lg/eyh;

    return-object v0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lg/bix;->a:Lg/acb;

    iget-object v1, p0, Lg/dlv;->bf:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lg/acb;->setEventMap(Ljava/util/Map;)V

    invoke-super {p0}, Lg/dlv;->p()V

    return-void
.end method
