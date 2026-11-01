.class public final Lg/bqs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/dbb;

.field public final synthetic b:I

.field public final synthetic c:Lg/afh;


# direct methods
.method public synthetic constructor <init>(Lg/dbb;Lg/afh;I)V
    .locals 0

    iput p3, p0, Lg/bqs;->b:I

    iput-object p1, p0, Lg/bqs;->a:Lg/dbb;

    iput-object p2, p0, Lg/bqs;->c:Lg/afh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lg/bqs;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bqs;->c:Lg/afh;

    iget-object v1, p0, Lg/bqs;->a:Lg/dbb;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v1, Lg/dbb;->l:Lg/ake;

    if-nez v3, :cond_0

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to send consent settings to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v3, v0}, Lg/ake;->m(Lg/afh;)V

    invoke-virtual {v1}, Lg/dbb;->x()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to send consent settings to the service"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/bqs;->c:Lg/afh;

    iget-object v1, p0, Lg/bqs;->a:Lg/dbb;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v1, Lg/dbb;->l:Lg/ake;

    if-nez v3, :cond_1

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-interface {v3, v0}, Lg/ake;->r(Lg/afh;)V

    invoke-virtual {v1}, Lg/dbb;->x()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/bqs;->c:Lg/afh;

    iget-object v1, p0, Lg/bqs;->a:Lg/dbb;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v1, Lg/dbb;->l:Lg/ake;

    if-nez v3, :cond_2

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Discarding data. Failed to send app launch"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v3, v0}, Lg/ake;->o(Lg/afh;)V

    invoke-virtual {v2}, Lg/cyg;->an()Lg/efm;

    move-result-object v4

    invoke-virtual {v4}, Lg/efm;->k()V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Lg/dbb;->al(Lg/ake;Lg/exk;Lg/afh;)V

    invoke-virtual {v1}, Lg/dbb;->x()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->b:Lg/dvb;

    const-string v2, "Failed to send app launch to the service"

    invoke-virtual {v1, v0, v2}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/bqs;->c:Lg/afh;

    iget-object v1, p0, Lg/bqs;->a:Lg/dbb;

    iget-object v2, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v3, v1, Lg/dbb;->l:Lg/ake;

    if-nez v3, :cond_3

    iget-object v0, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->b:Lg/dvb;

    const-string v1, "Failed to reset data on the service: not connected to service"

    invoke-virtual {v0, v1}, Lg/dvb;->h(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-interface {v3, v0}, Lg/ake;->k(Lg/afh;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v2, v2, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v3, "Failed to reset data on the service: remote exception"

    invoke-virtual {v2, v0, v3}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lg/dbb;->x()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
