.class public final Lg/chx;
.super Lg/eyh;


# virtual methods
.method public final dq()Lg/ewk;
    .locals 1

    new-instance v0, Lg/eoe;

    invoke-direct {v0, p0}, Lg/eoe;-><init>(Lg/eyh;)V

    return-object v0
.end method

.method public final ox()Landroid/view/View;
    .locals 2

    new-instance v0, Lg/crr;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lg/crr;->a:Lg/chx;

    return-object v0
.end method
