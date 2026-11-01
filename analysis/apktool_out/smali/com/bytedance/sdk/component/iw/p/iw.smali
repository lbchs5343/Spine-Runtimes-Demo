.class public Lcom/bytedance/sdk/component/iw/p/iw;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->ox()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/iw/ox;

    invoke-interface {v1, p2}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "disk_cache"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->le()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/iw/d;->iw()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/iw/p/iw;->d(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/iw/p/iw;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/no;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/no;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void

    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/iw/p/d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/bytedance/sdk/component/iw/p/d;-><init>([BLcom/bytedance/sdk/component/iw/iw;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->i()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/iw/ox/iw;->d(Lcom/bytedance/sdk/component/iw/d;)Lcom/bytedance/sdk/component/iw/gh;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/iw/dq;->dq(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
