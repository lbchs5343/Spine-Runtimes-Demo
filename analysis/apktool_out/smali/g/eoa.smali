.class public final Lg/eoa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/eoa;->a:I

    iput-object p2, p0, Lg/eoa;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/cyg;

    :try_start_0
    iget-object v0, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v0, v0, Lg/bgm;->c:Lg/dvb;

    const-string v2, "onActivityCreated"

    invoke-virtual {v0, v2}, Lg/dvb;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, v1, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v0, p1, p2}, Lg/bcm;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    move-object v3, p0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v3, p0

    goto :goto_4

    :cond_2
    iget-object v2, v1, Lg/cyg;->m:Lg/dkq;

    invoke-static {v2}, Lg/cyg;->ai(Lg/bgf;)V

    const-string v2, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://www.google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android-app://com.google.appcrawler"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "auto"

    :goto_0
    move-object v6, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, p0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v3, p0

    goto :goto_5

    :cond_4
    :goto_1
    const-string v0, "gs"

    goto :goto_0

    :goto_2
    :try_start_2
    const-string v0, "referrer"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_5

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_3
    iget-object v0, v1, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v2, Lg/gf;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    :try_start_3
    invoke-direct/range {v2 .. v7}, Lg/gf;-><init>(Lg/eoa;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lg/fth;->p(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    iget-object v0, v1, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v0, p1, p2}, Lg/bcm;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_5
    :try_start_4
    iget-object v2, v1, Lg/cyg;->z:Lg/bgm;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    iget-object v2, v2, Lg/bgm;->b:Lg/dvb;

    const-string v4, "Throwable caught in onActivityCreated"

    invoke-virtual {v2, v0, v4}, Lg/dvb;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    iget-object v1, v1, Lg/cyg;->h:Lg/bcm;

    invoke-static {v1}, Lg/cyg;->aj(Lg/os;)V

    invoke-virtual {v1, p1, p2}, Lg/bcm;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    throw v0

    :pswitch_0
    move-object v3, p0

    iget-object v0, v3, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/dhn;

    invoke-direct {v1, p0, p2, p1}, Lg/dhn;-><init>(Lg/eoa;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    move-object v3, p0

    iget-object p2, v3, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p2, Lg/epy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lg/epy;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lg/epy;->a:J

    iget-object p1, p2, Lg/epy;->p:Ljava/util/ArrayList;

    iget-object v0, p2, Lg/epy;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lg/epy;->e:Ljava/util/ArrayList;

    iget-wide v0, p2, Lg/epy;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v0, Lg/bcm;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/bcm;->g:Landroid/app/Activity;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lg/bcm;->g:Landroid/app/Activity;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v1}, Lg/dsd;->j()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/aba;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lg/aba;-><init>(Lg/eoa;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/epy;

    iget-object v1, v0, Lg/epy;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, v0, Lg/epy;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lg/epy;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, v0, Lg/epy;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v1, v0, Lg/epy;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lg/epy;->i:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 7

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v2, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v2}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v2, Lg/bcm;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v2, Lg/bcm;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lg/bcm;->o:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v0}, Lg/dsd;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, v2, Lg/bcm;->m:Lg/ein;

    iget-object p1, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v0, Lg/axi;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v4, v5, v1}, Lg/axi;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p1, v0}, Lg/fth;->p(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lg/bcm;->s(Landroid/app/Activity;)Lg/ein;

    move-result-object v3

    iget-object p1, v2, Lg/bcm;->m:Lg/ein;

    iput-object p1, v2, Lg/bcm;->n:Lg/ein;

    iput-object v1, v2, Lg/bcm;->m:Lg/ein;

    iget-object p1, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/did;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lg/did;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {p1, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast p1, Lg/csp;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->n:Lg/cjv;

    invoke-static {p1}, Lg/cyg;->aj(Lg/os;)V

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v3, Lg/ffk;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v0, v1, v4}, Lg/ffk;-><init>(Lg/cjv;JI)V

    invoke-virtual {v2, v3}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/aba;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lg/aba;-><init>(Lg/eoa;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/epy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/epy;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/epy;->d:J

    iget p1, v0, Lg/epy;->o:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lg/epy;->o:I

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, Lg/epy;->r:Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->n:Lg/cjv;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v3, Lg/cyg;

    iget-object v3, v3, Lg/cyg;->j:Lg/fth;

    invoke-static {v3}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v4, Lg/ffk;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v2, v5}, Lg/ffk;-><init>(Lg/cjv;JI)V

    invoke-virtual {v3, v4}, Lg/fth;->p(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v0, Lg/bcm;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lg/bcm;->k:Z

    iget-object v2, v0, Lg/bcm;->g:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    iget-object v2, v0, Lg/bcm;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, v0, Lg/bcm;->g:Landroid/app/Activity;

    iput-boolean v3, v0, Lg/bcm;->o:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v2}, Lg/dsd;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lg/bcm;->j:Lg/ein;

    iget-object v2, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v4, Lg/ehg;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lg/ehg;-><init>(Lg/bcm;I)V

    invoke-virtual {v2, v4}, Lg/fth;->p(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v1}, Lg/dsd;->j()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, v0, Lg/bcm;->j:Lg/ein;

    iput-object p1, v0, Lg/bcm;->m:Lg/ein;

    iget-object p1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    iget-object p1, p1, Lg/cyg;->j:Lg/fth;

    invoke-static {p1}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/ehg;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg/ehg;-><init>(Lg/bcm;I)V

    invoke-virtual {p1, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lg/bcm;->s(Landroid/app/Activity;)Lg/ein;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lg/bcm;->r(Landroid/app/Activity;Lg/ein;Z)V

    iget-object p1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Lg/cyg;

    invoke-virtual {p1}, Lg/cyg;->am()Lg/fqm;

    move-result-object p1

    iget-object v0, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->ab:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lg/cyg;

    iget-object v2, v2, Lg/cyg;->j:Lg/fth;

    invoke-static {v2}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v3, Lg/axi;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v0, v1, v4}, Lg/axi;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v2, v3}, Lg/fth;->p(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :pswitch_0
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/aba;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lg/aba;-><init>(Lg/eoa;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/epy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/epy;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/epy;->f:J

    const/4 p1, 0x1

    iput-boolean p1, v0, Lg/epy;->r:Z

    iget v1, v0, Lg/epy;->o:I

    add-int/2addr v1, p1

    iput v1, v0, Lg/epy;->o:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/csp;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->h:Lg/bcm;

    invoke-static {v0}, Lg/cyg;->aj(Lg/os;)V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->e:Lg/dsd;

    invoke-virtual {v1}, Lg/dsd;->j()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/bcm;->h:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ein;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lg/ein;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lg/ein;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lg/ein;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lg/bay;

    invoke-direct {v0}, Lg/bay;-><init>()V

    iget-object v1, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v1, Lg/bhz;

    new-instance v2, Lg/dhn;

    invoke-direct {v2, p0, p1, v0}, Lg/dhn;-><init>(Lg/eoa;Landroid/app/Activity;Lg/bay;)V

    invoke-virtual {v1, v2}, Lg/bhz;->l(Lg/bvf;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lg/bay;->d(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/aba;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lg/aba;-><init>(Lg/eoa;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/epy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/epy;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/epy;->n:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lg/eoa;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhz;

    new-instance v1, Lg/aba;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lg/aba;-><init>(Lg/eoa;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lg/bhz;->l(Lg/bvf;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/eoa;->b:Ljava/lang/Object;

    check-cast v0, Lg/epy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/epy;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lg/epy;->j:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
