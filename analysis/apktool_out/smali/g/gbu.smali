.class public final Lg/gbu;
.super Lg/bdo;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gbu;->a:I

    iput-object p1, p0, Lg/gbu;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lg/bdo;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lg/ena;Lg/ena;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gbu;->a:I

    iput-object p1, p0, Lg/gbu;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lg/bdo;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final c()Lg/erj;
    .locals 1

    iget v0, p0, Lg/gbu;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gbu;->b:Landroid/view/View;

    check-cast v0, Lg/ena;

    iget-object v0, v0, Lg/ena;->d:Lg/esf;

    iget-object v0, v0, Lg/esf;->t:Lg/csq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/byn;->m()Lg/gox;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/gbu;->b:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Lg/pb;

    if-eqz v0, :cond_1

    check-cast v0, Lg/fhk;

    iget-object v0, v0, Lg/fhk;->a:Lg/esf;

    iget-object v0, v0, Lg/esf;->k:Lg/csq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/byn;->m()Lg/gox;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lg/gbu;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gbu;->b:Landroid/view/View;

    check-cast v0, Lg/ena;

    iget-object v0, v0, Lg/ena;->d:Lg/esf;

    invoke-virtual {v0}, Lg/esf;->ag()Z

    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/gbu;->b:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->f:Lg/dhl;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Lg/far;

    invoke-interface {v1, v0}, Lg/dhl;->d(Lg/far;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/gbu;->c()Lg/erj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/erj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lg/gbu;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lg/bdo;->n()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lg/gbu;->b:Landroid/view/View;

    check-cast v0, Lg/ena;

    iget-object v0, v0, Lg/ena;->d:Lg/esf;

    iget-object v1, v0, Lg/esf;->s:Lg/gfh;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lg/esf;->ah()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
