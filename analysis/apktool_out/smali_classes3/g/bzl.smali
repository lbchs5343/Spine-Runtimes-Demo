.class public final Lg/bzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/gyy;

.field public final synthetic b:I

.field public final synthetic c:Lg/ake;


# direct methods
.method public synthetic constructor <init>(Lg/gyy;Lg/ake;I)V
    .locals 0

    iput p3, p0, Lg/bzl;->b:I

    iput-object p1, p0, Lg/bzl;->a:Lg/gyy;

    iput-object p2, p0, Lg/bzl;->c:Lg/ake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lg/bzl;->a:Lg/gyy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/gyy;->b:Z

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    invoke-virtual {v1}, Lg/dbb;->v()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->c:Lg/dvb;

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    iget-object v2, p0, Lg/bzl;->c:Lg/ake;

    invoke-virtual {v1}, Lg/acn;->_e()V

    iput-object v2, v1, Lg/dbb;->l:Lg/ake;

    invoke-virtual {v1}, Lg/dbb;->x()V

    invoke-virtual {v1}, Lg/dbb;->p()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/bzl;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bzl;->a:Lg/gyy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/gyy;->b:Z

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    invoke-virtual {v1}, Lg/dbb;->v()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    iget-object v1, v1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v1}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v1, v1, Lg/bgm;->o:Lg/dvb;

    const-string v2, "Connected to remote service"

    invoke-virtual {v1, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bzl;->a:Lg/gyy;

    iget-object v1, v1, Lg/gyy;->a:Lg/dbb;

    iget-object v2, p0, Lg/bzl;->c:Lg/ake;

    invoke-virtual {v1}, Lg/acn;->_e()V

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    iput-object v2, v1, Lg/dbb;->l:Lg/ake;

    invoke-virtual {v1}, Lg/dbb;->x()V

    invoke-virtual {v1}, Lg/dbb;->p()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lg/bzl;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
