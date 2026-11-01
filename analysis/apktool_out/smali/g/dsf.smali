.class public final synthetic Lg/dsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/dsf;->b:I

    iput-object p1, p0, Lg/dsf;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/dsf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Lg/aqv;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lg/dsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dsf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/dsf;->c:Ljava/lang/Object;

    return-void
.end method

.method private final d()V
    .locals 3

    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/fjb;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/boa;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg/fjb;->b:Ljava/util/Set;

    if-nez v2, :cond_0

    iget-object v2, v0, Lg/fjb;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lg/fjb;->b:Ljava/util/Set;

    invoke-interface {v1}, Lg/boa;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/egu;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/gxm;

    iget-object v2, v0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lg/egu;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/eiv;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lg/eiv;->h(Lg/gxm;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/dsf;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v1, Lg/aqv;

    const-string v2, "$command"

    invoke-static {v0, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lg/aqv;->f()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lg/aqv;->f()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/dkh;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/aci;

    iget-object v0, v0, Lg/dkh;->e:Ljava/lang/Object;

    check-cast v0, Lg/flz;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lg/flz;->b(Lg/aci;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/fuo;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lg/fuo;->j(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/fsr;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, v0, Lg/fsr;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    iget-object v4, v0, Lg/fsr;->b:Landroid/content/ComponentName;

    invoke-interface {v3, v4, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/aco;

    iget-object v3, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v4, Lg/ark;

    iget-boolean v4, v4, Lg/ark;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v4, Lg/ark;

    invoke-virtual {v4}, Lg/ark;->w()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v4, Lg/ark;

    iget-object v5, v4, Lg/ark;->m:Landroid/os/Handler;

    iget-object v4, v4, Lg/ark;->e:Lg/hdk;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v4, Lg/ark;

    iput-boolean v2, v4, Lg/ark;->c:Z

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    sget v4, Lg/ejv;->o:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "b.e.f"

    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v4, v1, Lg/anf;

    if-eqz v4, :cond_3

    check-cast v1, Lg/anf;

    goto :goto_1

    :cond_3
    new-instance v1, Lg/sj;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lg/sj;->a:Landroid/os/IBinder;

    :goto_1
    iput-object v1, v2, Lg/ark;->n:Lg/anf;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    iget-object v2, v2, Lg/ark;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v2, Lg/ark;

    iget-object v2, v2, Lg/ark;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gnl;

    iget-object v3, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v3, Lg/ark;

    iget-object v4, v3, Lg/ark;->n:Lg/anf;

    invoke-virtual {v3, v2, v4}, Lg/ark;->v(Lg/gnl;Lg/anf;)V

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lg/aco;->b:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    invoke-virtual {v0}, Lg/ark;->s()V

    :cond_5
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/hbl;

    iget-object v4, v0, Lg/ark;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/ark;->r()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1, v2}, Lg/hbl;->b(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v3}, Lg/hbl;->b(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lg/ark;->s()V

    :try_start_1
    invoke-static {}, Lg/gwn;->s()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Lg/ark;->t(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_9
    :try_start_2
    invoke-static {}, Lg/gwn;->w()Lg/gyu;

    move-result-object v1

    check-cast v1, Lg/bvh;

    invoke-virtual {v1}, Lg/bvh;->b()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    invoke-virtual {v0, v2}, Lg/ark;->t(Z)V

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    iget-object v2, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v2, Lg/deg;

    iget-object v4, v0, Lg/ark;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lg/ark;->w()Z

    move-result v5

    if-nez v5, :cond_a

    const-string v0, "permission_required"

    invoke-interface {v2, v0, v1}, Lg/deg;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lg/ark;->ab()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lg/deg;->onSuccess(Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    goto :goto_5

    :cond_c
    new-instance v1, Lg/gnl;

    new-instance v2, Lg/bco;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lg/bco;-><init>(I)V

    new-instance v4, Lg/csg;

    invoke-direct {v4, v3, v0}, Lg/csg;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2, v4}, Lg/gnl;-><init>(Lg/cbr;Lg/deg;)V

    iget-object v2, v0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v4, Lg/euq;

    invoke-direct {v4, v0, v1, v3}, Lg/euq;-><init>(Lg/ark;Lg/gnl;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/dzm;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lg/dzm;->d(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lg/dsf;->e()V

    return-void

    :pswitch_8
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/fpl;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lg/cro;->s(Lg/fpl;Landroid/view/View;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    sget v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/cmh;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/edv;

    iget-object v3, v1, Lg/cmh;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lg/edv;->c(Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    return-void

    :pswitch_b
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/chf;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    invoke-static {v0, v1}, Lg/dxg;->e(Lg/chf;Lg/hed;)V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lg/dsf;->d()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/brw;

    iget-object v2, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v2, Lg/boa;

    iget-object v3, v0, Lg/brw;->d:Lg/boa;

    sget-object v4, Lg/brw;->a:Lg/fdt;

    if-ne v3, v4, :cond_e

    monitor-enter v0

    :try_start_4
    iget-object v3, v0, Lg/brw;->c:Lg/kf;

    iput-object v1, v0, Lg/brw;->c:Lg/kf;

    iput-object v2, v0, Lg/brw;->d:Lg/boa;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/fxb;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id.toString()"

    invoke-static {v1, v2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lg/eyt;->be(Lg/fxb;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lg/dsf;->c:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    iget-object v1, p0, Lg/dsf;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v0}, Lg/aqv;->f()V

    return-void

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lg/aqv;->f()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
