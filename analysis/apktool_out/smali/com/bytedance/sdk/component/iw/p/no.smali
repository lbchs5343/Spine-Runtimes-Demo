.class public Lcom/bytedance/sdk/component/iw/p/no;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method

.method private dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/ia;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/p/ia;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p4, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "net_request"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/iw/ox/iw;->p()Lcom/bytedance/sdk/component/iw/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Z)V

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/component/iw/d/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->q()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->jy()Z

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->k()Lcom/bytedance/sdk/component/iw/q;

    move-result-object v6

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/bytedance/sdk/component/iw/d/ox;-><init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/iw/q;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/p;->call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/iw;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->d()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->dq()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/mn;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->d()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->ox()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [B

    new-instance v1, Lcom/bytedance/sdk/component/iw/p/d;

    invoke-direct {v1, v6, v0}, Lcom/bytedance/sdk/component/iw/p/d;-><init>([BLcom/bytedance/sdk/component/iw/iw;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/component/iw/d;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->d(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, p1

    move-object p1, p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/iw/ox/iw;->iw()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/no$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move-object v4, p1

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/iw/p/no$1;-><init>(Lcom/bytedance/sdk/component/iw/p/no;Lcom/bytedance/sdk/component/iw/d;Lcom/bytedance/sdk/component/iw/ox/iw;Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p1, v1

    :try_start_2
    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v1

    goto :goto_2

    :cond_1
    move-object v4, p1

    move-object p1, p0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/iw/ox/iw;->ia()Lcom/bytedance/sdk/component/iw/fw;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->ox()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/iw/iw;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/bytedance/sdk/component/iw/p/no;->dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :goto_2
    const/16 v1, 0x3ec

    const-string v2, "net request failed!"

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/bytedance/sdk/component/iw/p/no;->dq(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/component/iw/ox/ox;)V

    return-void
.end method
