.class public final Lg/flf;
.super Lg/bvf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bhz;

.field public final synthetic b:I

.field public final synthetic c:Lg/bay;


# direct methods
.method public synthetic constructor <init>(Lg/bhz;Lg/bay;I)V
    .locals 0

    iput p3, p0, Lg/flf;->b:I

    iput-object p1, p0, Lg/flf;->a:Lg/bhz;

    iput-object p2, p0, Lg/flf;->c:Lg/bay;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/bvf;-><init>(Lg/bhz;Z)V

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget v0, p0, Lg/flf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/flf;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/flf;->c:Lg/bay;

    invoke-interface {v0, v1}, Lg/ees;->getCurrentScreenClass(Lg/brv;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/flf;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/flf;->c:Lg/bay;

    invoke-interface {v0, v1}, Lg/ees;->getCurrentScreenName(Lg/brv;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/flf;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/flf;->c:Lg/bay;

    invoke-interface {v0, v1}, Lg/ees;->generateEventId(Lg/brv;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/flf;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/flf;->c:Lg/bay;

    invoke-interface {v0, v1}, Lg/ees;->getCachedAppInstanceId(Lg/brv;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/flf;->a:Lg/bhz;

    iget-object v0, v0, Lg/bhz;->e:Lg/ees;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    iget-object v1, p0, Lg/flf;->c:Lg/bay;

    invoke-interface {v0, v1}, Lg/ees;->getGmpAppId(Lg/brv;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 2

    iget v0, p0, Lg/flf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/flf;->c:Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/flf;->c:Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/flf;->c:Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/flf;->c:Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lg/flf;->c:Lg/bay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/bay;->zzd(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
