.class public final Lg/lm;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lg/lm;->a:I

    iput-object p1, p0, Lg/lm;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/lm;->a:I

    iput-object p2, p0, Lg/lm;->b:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private final d()J
    .locals 13

    iget-object v0, p0, Lg/lm;->b:Ljava/lang/Object;

    check-cast v0, Lg/dhh;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    move-wide v7, v6

    move-object v6, v5

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gba;

    const-string v10, "connection"

    invoke-static {v9, v10}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v9

    :try_start_0
    invoke-virtual {v0, v9, v1, v2}, Lg/dhh;->i(Lg/gba;J)I

    move-result v10

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v9, Lg/gba;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v10, v1, v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_1

    move-object v6, v9

    move-wide v7, v10

    :cond_1
    :goto_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_2
    iget-wide v9, v0, Lg/dhh;->d:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    const/4 v3, 0x5

    if-le v4, v3, :cond_3

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    sub-long/2addr v9, v7

    return-wide v9

    :cond_4
    if-lez v5, :cond_5

    return-wide v9

    :cond_5
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_6
    :goto_2
    invoke-static {v6}, Lg/bff;->d(Ljava/lang/Object;)V

    monitor-enter v6

    :try_start_1
    iget-object v3, v6, Lg/gba;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v4, 0x0

    if-nez v3, :cond_7

    monitor-exit v6

    return-wide v4

    :cond_7
    :try_start_2
    iget-wide v9, v6, Lg/gba;->q:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v9, v7

    cmp-long v3, v9, v1

    if-eqz v3, :cond_8

    monitor-exit v6

    return-wide v4

    :cond_8
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, v6, Lg/gba;->p:Z

    iget-object v1, v0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    iget-object v1, v6, Lg/gba;->h:Ljava/net/Socket;

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v1}, Lg/erq;->o(Ljava/net/Socket;)V

    iget-object v1, v0, Lg/dhh;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lg/dhh;->e:Ljava/lang/Object;

    check-cast v0, Lg/gfw;

    invoke-virtual {v0}, Lg/gfw;->i()V

    :cond_9
    return-wide v4

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public final c()J
    .locals 4

    iget v0, p0, Lg/lm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/lm;->b:Ljava/lang/Object;

    check-cast v0, Lg/cvw;

    invoke-interface {v0}, Lg/cvw;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    invoke-direct {p0}, Lg/lm;->d()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    iget-object v0, p0, Lg/lm;->b:Ljava/lang/Object;

    check-cast v0, Lg/ug;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lg/ug;->w:Lg/djf;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v2}, Lg/djf;->o(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Lg/ug;->ah(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_2
    iget-object v0, p0, Lg/lm;->b:Ljava/lang/Object;

    check-cast v0, Lg/fxy;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, v0, Lg/fxy;->l:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lg/fxy;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0}, Lg/fxy;->ac()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    :try_start_3
    iput-boolean v1, v0, Lg/fxy;->t:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lg/fxy;->ak()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lg/fxy;->ad()V

    const/4 v2, 0x0

    iput v2, v0, Lg/fxy;->r:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_5
    iput-boolean v1, v0, Lg/fxy;->i:Z

    new-instance v1, Lg/goh;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lg/baf;->w(Lg/evq;)Lg/ago;

    move-result-object v1

    iput-object v1, v0, Lg/fxy;->h:Lg/ago;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_2
    monitor-exit v0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v0

    :goto_4
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_5
    monitor-exit v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
