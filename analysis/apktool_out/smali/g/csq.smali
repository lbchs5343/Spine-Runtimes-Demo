.class public final Lg/csq;
.super Lg/byn;
.source "SourceFile"


# instance fields
.field public final synthetic p:I

.field public final synthetic q:Lg/esf;


# direct methods
.method public constructor <init>(Lg/esf;Landroid/content/Context;Lg/ftn;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lg/csq;->p:I

    iput-object p1, p0, Lg/csq;->q:Lg/esf;

    const v6, 0x7f040022

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lg/byn;-><init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;ZII)V

    const p2, 0x800005

    iput p2, v1, Lg/byn;->f:I

    iget-object p1, p1, Lg/esf;->ab:Lg/emr;

    iput-object p1, v1, Lg/byn;->a:Lg/caf;

    iget-object p2, v1, Lg/byn;->g:Lg/gox;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lg/us;->b(Lg/caf;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lg/esf;Landroid/content/Context;Lg/gyg;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lg/csq;->p:I

    iput-object p1, p0, Lg/csq;->q:Lg/esf;

    const v6, 0x7f040022

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Lg/byn;-><init>(Landroid/content/Context;Lg/ftn;Landroid/view/View;ZII)V

    iget-object p2, v3, Lg/gyg;->ax:Lg/far;

    iget p2, p2, Lg/far;->ac:I

    const/16 p3, 0x20

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lg/esf;->y:Lg/ena;

    if-nez p2, :cond_1

    iget-object p2, p1, Lg/esf;->i:Lg/eao;

    check-cast p2, Landroid/view/View;

    :cond_1
    iput-object p2, v1, Lg/byn;->d:Landroid/view/View;

    :goto_0
    iget-object p1, p1, Lg/esf;->ab:Lg/emr;

    iput-object p1, v1, Lg/byn;->a:Lg/caf;

    iget-object p2, v1, Lg/byn;->g:Lg/gox;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lg/us;->b(Lg/caf;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final o()V
    .locals 3

    iget v0, p0, Lg/csq;->p:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/csq;->q:Lg/esf;

    iget-object v1, v0, Lg/esf;->p:Lg/ftn;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lg/ftn;->at(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lg/esf;->t:Lg/csq;

    invoke-super {p0}, Lg/byn;->o()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lg/csq;->q:Lg/esf;

    iput-object v0, v1, Lg/esf;->k:Lg/csq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lg/byn;->o()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
