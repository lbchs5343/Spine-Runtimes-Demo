.class public final Lcom/bytedance/sdk/component/ox/d/dq/d/mn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/d/mn$dq;
    }
.end annotation


# static fields
.field static final synthetic p:Z = true


# instance fields
.field public final d:Lcom/bytedance/sdk/component/ox/d/s;

.field public final dq:Lcom/bytedance/sdk/component/ox/d/dq;

.field private final ia:Ljava/lang/Object;

.field private ig:Z

.field private iw:Lcom/bytedance/sdk/component/ox/d/op;

.field private jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

.field private final kk:Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

.field private final mn:Lcom/bytedance/sdk/component/ox/d/o;

.field private mp:Z

.field private no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

.field private o:I

.field public final ox:Lcom/bytedance/sdk/component/ox/d/f;

.field private q:Z

.field private s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d:Lcom/bytedance/sdk/component/ox/d/s;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ox:Lcom/bytedance/sdk/component/ox/d/f;

    new-instance p1, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ia()Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;-><init>(Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/p;Lcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ia:Ljava/lang/Object;

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)V
    .locals 3

    iget-object v0, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private dq(IIIZ)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mp:Z

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    if-nez v0, :cond_e

    iget-boolean v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->q:Z

    if-nez v0, :cond_d

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn()Ljava/net/Socket;

    move-result-object v0

    iget-object v3, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    sget-object v7, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v8, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iget-object v9, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v7, v8, v9, v1, v4}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/op;)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object v7, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-eqz v7, :cond_1

    move-object v3, v7

    const/4 v8, 0x1

    move-object v7, v4

    goto :goto_2

    :cond_1
    iget-object v7, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    move-object v7, v4

    goto :goto_1

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    if-nez v7, :cond_5

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;->dq()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v9, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v9

    :try_start_1
    iget-boolean v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->q:Z

    if-nez v2, :cond_c

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;->ox()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/component/ox/d/op;

    sget-object v12, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v13, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iget-object v14, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v12, v13, v14, v1, v11}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/op;)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object v12, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-eqz v12, :cond_6

    iput-object v11, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    move-object v3, v12

    const/4 v8, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    if-nez v8, :cond_9

    if-nez v7, :cond_8

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;->d()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v7

    :cond_8
    iput-object v7, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    iput v6, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->o:I

    new-instance v3, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-direct {v3, v0, v7}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;-><init>(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/op;)V

    invoke-virtual {v1, v3, v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;Z)V

    :cond_9
    move-object v10, v3

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_a

    return-object v10

    :cond_a
    iget-object v15, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d:Lcom/bytedance/sdk/component/ox/d/s;

    iget-object v0, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ox:Lcom/bytedance/sdk/component/ox/d/f;

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(IIIZLcom/bytedance/sdk/component/ox/d/s;Lcom/bytedance/sdk/component/ox/d/f;)V

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ia()Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    move-result-object v0

    invoke-virtual {v10}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq()Lcom/bytedance/sdk/component/ox/d/op;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/p;->d(Lcom/bytedance/sdk/component/ox/d/op;)V

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v2

    :try_start_2
    iput-boolean v5, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ig:Z

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-virtual {v0, v3, v10}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->d(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)V

    invoke-virtual {v10}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iget-object v4, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0, v3, v4, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;)Ljava/net/Socket;

    move-result-object v4

    iget-object v10, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v4}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-object v10

    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_c
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private dq(IIIZZ)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(IIIZ)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d:I

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p()V

    goto :goto_0

    :cond_1
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dq(ZZZ)Ljava/net/Socket;
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    :cond_2
    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iput-boolean p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mp:Z

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    iput-boolean p3, p2, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mp:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    if-eqz p1, :cond_7

    :cond_5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s:J

    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/o;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->ox()Ljava/net/Socket;

    move-result-object p1

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    return-object p1

    :cond_7
    return-object v0
.end method

.method private ia()Lcom/bytedance/sdk/component/ox/d/dq/d/p;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/o;)Lcom/bytedance/sdk/component/ox/d/dq/d/p;

    move-result-object v0

    return-object v0
.end method

.method private mn()Ljava/net/Socket;
    .locals 2

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Z)Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;
    .locals 7

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->d()I

    move-result v2

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->ox()I

    move-result v3

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/d/r$dq;->p()I

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/k;->cd()Z

    move-result v5

    move-object v1, p0

    move v6, p3

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(IIIZZ)Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;)Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    move-result-object p1

    iget-object p2, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/d/s;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/s;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Ljava/net/Socket;
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v1, v2, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/d/dq/d/ox;Z)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ig:Z

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->p:Ljava/util/List;

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/d/mn$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->ia:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn$dq;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dq(Ljava/io/IOException;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-ne p1, v1, :cond_0

    iget v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->o:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->o:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->o:I

    if-le p1, v3, :cond_6

    :cond_1
    iput-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/dq;

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

    invoke-virtual {v5, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq(Lcom/bytedance/sdk/component/ox/d/op;Ljava/io/IOException;)V

    :cond_4
    iput-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    :cond_5
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1, v4, v3}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(ZLcom/bytedance/sdk/component/ox/d/dq/ox/ox;JLjava/io/IOException;)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter p3

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    if-ne p2, p4, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    iget p5, p4, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d:I

    add-int/2addr p5, p2

    iput p5, p4, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p4, 0x0

    invoke-direct {p0, p1, p4, p2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "expected "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->iw:Lcom/bytedance/sdk/component/ox/d/op;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->s:Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw$dq;->dq()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->kk:Lcom/bytedance/sdk/component/ox/d/dq/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/iw;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(ZZZ)Ljava/net/Socket;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public s()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->mn:Lcom/bytedance/sdk/component/ox/d/o;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->q:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->jy:Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->no:Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;->ox()V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/d/ox;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq:Lcom/bytedance/sdk/component/ox/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
