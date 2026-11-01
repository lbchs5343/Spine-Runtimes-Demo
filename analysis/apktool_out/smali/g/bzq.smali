.class public final synthetic Lg/bzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/ctt;


# direct methods
.method public synthetic constructor <init>(Lg/ctt;I)V
    .locals 0

    iput p2, p0, Lg/bzq;->a:I

    iput-object p1, p0, Lg/bzq;->b:Lg/ctt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/bzq;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bzq;->b:Lg/ctt;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lg/ctt;->m(J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bzq;->b:Lg/ctt;

    iget-object v1, v0, Lg/ctt;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/IdentityHashMap;

    iget-boolean v2, v0, Lg/ctt;->d:Z

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/bes;

    iget-object v3, v3, Lg/bes;->c:Lg/gpv;

    invoke-interface {v3}, Lg/gpv;->ac()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x3e8

    if-nez v2, :cond_2

    invoke-virtual {v0, v3, v4}, Lg/ctt;->m(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lg/ctt;->l()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lg/ctt;->k()V

    invoke-virtual {v0, v3, v4}, Lg/ctt;->m(J)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/ctt;->d:Z

    iget v1, v0, Lg/ctt;->h:I

    iget-object v2, v0, Lg/ctt;->c:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    new-instance v3, Lg/cxu;

    invoke-direct {v3, v0, v1}, Lg/cxu;-><init>(Lg/ctt;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg/gnl;

    new-instance v1, Lg/bco;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lg/bco;-><init>(I)V

    invoke-direct {v0, v1, v3}, Lg/gnl;-><init>(Lg/cbr;Lg/deg;)V

    iget-object v1, v2, Lg/ark;->m:Landroid/os/Handler;

    new-instance v3, Lg/euq;

    invoke-direct {v3, v2, v0, v4}, Lg/euq;-><init>(Lg/ark;Lg/gnl;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
