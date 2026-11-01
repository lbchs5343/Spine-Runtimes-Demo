.class public final synthetic Lg/gsz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cyc;


# direct methods
.method public synthetic constructor <init>(Lg/cyc;I)V
    .locals 0

    iput p2, p0, Lg/gsz;->a:I

    iput-object p1, p0, Lg/gsz;->b:Lg/cyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lg/gsz;->b:Lg/cyc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/cyc;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v2}, Lg/rm;->p()V

    iget-object v2, v2, Lg/rm;->g:Landroid/content/Context;

    invoke-static {v2}, Lg/clx;->f(Landroid/content/Context;)Lg/clx;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v0, Lg/cyc;->m:Lg/gtb;

    invoke-virtual {v3}, Lg/gtb;->n()Lg/fsy;

    move-result-object v3

    iget-object v4, v3, Lg/fsy;->f:Lg/gyk;

    sget-object v5, Lg/gyk;->NOT_GENERATED:Lg/gyk;

    if-eq v4, v5, :cond_1

    sget-object v5, Lg/gyk;->ATTEMPT_MIGRATION:Lg/gyk;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lg/cyc;->t(Lg/fsy;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lg/cyc;->m:Lg/gtb;

    invoke-virtual {v3}, Lg/fsy;->i()Lg/ph;

    move-result-object v3

    iput-object v4, v3, Lg/ph;->c:Ljava/lang/Object;

    sget-object v4, Lg/gyk;->UNREGISTERED:Lg/gyk;

    invoke-virtual {v3, v4}, Lg/ph;->j(Lg/gyk;)V

    invoke-virtual {v3}, Lg/ph;->i()Lg/fsy;

    move-result-object v3

    invoke-virtual {v5, v3}, Lg/gtb;->u(Lg/fsy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Lg/clx;->r()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v3}, Lg/cyc;->u(Lg/fsy;)V

    iget-object v1, v0, Lg/cyc;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lg/gsz;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lg/gsz;-><init>(Lg/cyc;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Lg/clx;->r()V

    :cond_4
    throw v0

    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lg/gsz;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gsz;->b:Lg/cyc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/cyc;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/cyc;->h:Lg/rm;

    invoke-virtual {v2}, Lg/rm;->p()V

    iget-object v2, v2, Lg/rm;->g:Landroid/content/Context;

    invoke-static {v2}, Lg/clx;->f(Landroid/content/Context;)Lg/clx;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lg/cyc;->m:Lg/gtb;

    invoke-virtual {v3}, Lg/gtb;->n()Lg/fsy;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lg/clx;->r()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, v3, Lg/fsy;->f:Lg/gyk;

    sget-object v2, Lg/gyk;->REGISTER_ERROR:Lg/gyk;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_5

    sget-object v6, Lg/gyk;->UNREGISTERED:Lg/gyk;

    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lg/cyc;->e:Lg/ff;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lg/fsy;->g:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v4, v3, Lg/fsy;->e:J

    iget-wide v6, v3, Lg/fsy;->c:J

    add-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v1, Lg/ff;->d:Lg/cfg;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-wide v8, Lg/ff;->b:J

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-gez v1, :cond_a

    :goto_2
    invoke-virtual {v0, v3}, Lg/cyc;->v(Lg/fsy;)Lg/fsy;

    move-result-object v1

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v0, v3}, Lg/cyc;->y(Lg/fsy;)Lg/fsy;

    move-result-object v1
    :try_end_3
    .catch Lg/drg; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    invoke-virtual {v0, v1}, Lg/cyc;->r(Lg/fsy;)V

    invoke-virtual {v0, v3, v1}, Lg/cyc;->q(Lg/fsy;Lg/fsy;)V

    iget-object v3, v1, Lg/fsy;->f:Lg/gyk;

    sget-object v4, Lg/gyk;->REGISTERED:Lg/gyk;

    if-ne v3, v4, :cond_6

    iget-object v3, v1, Lg/fsy;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lg/cyc;->w(Ljava/lang/String;)V

    :cond_6
    iget-object v3, v1, Lg/fsy;->f:Lg/gyk;

    if-ne v3, v2, :cond_7

    new-instance v1, Lg/drg;

    sget-object v2, Lg/ety;->BAD_CONFIG:Lg/ety;

    invoke-direct {v1, v2}, Lg/drg;-><init>(Lg/ety;)V

    invoke-virtual {v0}, Lg/cyc;->p()V

    goto :goto_6

    :cond_7
    sget-object v2, Lg/gyk;->NOT_GENERATED:Lg/gyk;

    if-eq v3, v2, :cond_9

    sget-object v2, Lg/gyk;->ATTEMPT_MIGRATION:Lg/gyk;

    if-ne v3, v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Lg/cyc;->u(Lg/fsy;)V

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/cyc;->p()V

    goto :goto_6

    :catch_0
    invoke-virtual {v0}, Lg/cyc;->p()V

    :cond_a
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v2}, Lg/clx;->r()V

    :cond_b
    throw v0

    :goto_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lg/gsz;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
