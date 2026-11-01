.class public final Lg/fyc;
.super Lg/fyg;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lg/fyc;->a:I

    iput-object p2, p0, Lg/fyc;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/fyc;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p4, p1}, Lg/fyg;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 15

    iget v0, p0, Lg/fyc;->a:I

    const-wide/16 v1, -0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fyc;->b:Ljava/lang/Object;

    check-cast v0, Lg/dvj;

    iget-object v3, p0, Lg/fyc;->d:Ljava/lang/Object;

    check-cast v3, Lg/che;

    new-instance v4, Lg/aye;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-object v0, v0, Lg/dvj;->b:Lg/ug;

    iget-object v5, v0, Lg/ug;->w:Lg/djf;

    monitor-enter v5

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v0, Lg/ug;->x:Lg/che;

    new-instance v7, Lg/che;

    invoke-direct {v7}, Lg/che;-><init>()V

    invoke-virtual {v7, v6}, Lg/che;->d(Lg/che;)V

    invoke-virtual {v7, v3}, Lg/che;->d(Lg/che;)V

    iput-object v7, v4, Lg/aye;->element:Ljava/lang/Object;

    invoke-virtual {v7}, Lg/che;->c()I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v6}, Lg/che;->c()I

    move-result v3

    int-to-long v9, v3

    sub-long/2addr v7, v9

    const/4 v3, 0x0

    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    if-eqz v6, :cond_1

    iget-object v11, v0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lg/ug;->u:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v11

    new-array v12, v3, [Lg/btb;

    invoke-interface {v11, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lg/btb;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v11, 0x0

    :goto_1
    iget-object v12, v4, Lg/aye;->element:Ljava/lang/Object;

    check-cast v12, Lg/che;

    const-string v13, "<set-?>"

    invoke-static {v12, v13}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v0, Lg/ug;->x:Lg/che;

    iget-object v12, v0, Lg/ug;->i:Lg/gfw;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " onSettings"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lg/fyc;

    invoke-direct {v14, v3, v0, v4, v13}, Lg/fyc;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v14, v9, v10}, Lg/gfw;->l(Lg/fyg;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v9, v0, Lg/ug;->w:Lg/djf;

    iget-object v4, v4, Lg/aye;->element:Ljava/lang/Object;

    check-cast v4, Lg/che;

    invoke-virtual {v9, v4}, Lg/djf;->k(Lg/che;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v0, v4}, Lg/ug;->ah(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v5

    if-eqz v11, :cond_3

    array-length v0, v11

    :goto_3
    if-ge v3, v0, :cond_3

    aget-object v4, v11, v3

    monitor-enter v4

    :try_start_5
    iget-wide v9, v4, Lg/btb;->h:J

    add-long/2addr v9, v7

    iput-wide v9, v4, Lg/btb;->h:J

    if-lez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    return-wide v1

    :goto_4
    :try_start_6
    monitor-exit v0

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    monitor-exit v5

    throw v0

    :pswitch_0
    :try_start_7
    iget-object v0, p0, Lg/fyc;->b:Ljava/lang/Object;

    check-cast v0, Lg/ug;

    iget-object v0, v0, Lg/ug;->r:Lg/ayg;

    iget-object v3, p0, Lg/fyc;->d:Ljava/lang/Object;

    check-cast v3, Lg/btb;

    invoke-virtual {v0, v3}, Lg/ayg;->a(Lg/btb;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    sget-object v3, Lg/bop;->h:Lg/bop;

    sget-object v3, Lg/bop;->h:Lg/bop;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http2Connection.Listener failure for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lg/fyc;->b:Ljava/lang/Object;

    check-cast v5, Lg/ug;

    iget-object v5, v5, Lg/ug;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    invoke-static {v3, v4, v0}, Lg/bop;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_8
    iget-object v3, p0, Lg/fyc;->d:Ljava/lang/Object;

    check-cast v3, Lg/btb;

    sget-object v4, Lg/amc;->PROTOCOL_ERROR:Lg/amc;

    invoke-virtual {v3, v4, v0}, Lg/btb;->x(Lg/amc;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :goto_6
    return-wide v1

    :pswitch_1
    iget-object v0, p0, Lg/fyc;->b:Ljava/lang/Object;

    check-cast v0, Lg/ug;

    iget-object v3, v0, Lg/ug;->r:Lg/ayg;

    iget-object v4, p0, Lg/fyc;->d:Ljava/lang/Object;

    check-cast v4, Lg/aye;

    iget-object v4, v4, Lg/aye;->element:Ljava/lang/Object;

    check-cast v4, Lg/che;

    invoke-virtual {v3, v0, v4}, Lg/ayg;->c(Lg/ug;Lg/che;)V

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
