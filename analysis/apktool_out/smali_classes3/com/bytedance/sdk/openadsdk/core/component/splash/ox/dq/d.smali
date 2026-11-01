.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# instance fields
.field private ia:Ljava/lang/String;

.field private ig:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field private iw:I

.field private kk:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

.field private mn:I

.field private mp:Z

.field private no:Z

.field private o:I

.field private p:I

.field private q:Z

.field private s:Lcom/bytedance/sdk/openadsdk/mp/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->q:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mp:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dc()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ny()Lcom/bytedance/sdk/openadsdk/core/r/ws;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j$dq;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ws;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/j$dq;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/r/ws;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kk(I)V

    :cond_3
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    goto :goto_1

    :cond_4
    :goto_0
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    goto :goto_1

    :cond_6
    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    :goto_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j$dq;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->ia()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/ws;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ws;->mn()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    return v1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j$dq;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->ia()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->dq(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/ws;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ws;->mn()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->kk:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->o:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jc()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->no:Z

    return-void
.end method

.method private ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method private s(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->oh()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/ji;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ia:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->iw:I

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mn:I

    new-instance p1, Lcom/bytedance/sdk/openadsdk/mp/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/mp/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->s:Lcom/bytedance/sdk/openadsdk/mp/d;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ig:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->q:Z

    return-void
.end method

.method public ia()Lcom/bykv/vk/openvk/component/video/api/ox/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->kk:Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->iw:I

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->q:Z

    return v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->o:I

    return v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mn:I

    return v0
.end method

.method public mp()Lcom/bytedance/sdk/openadsdk/core/r/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->ig:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    return-object v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->no:Z

    return v0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->mp:Z

    return v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/mp/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->s:Lcom/bytedance/sdk/openadsdk/mp/d;

    return-object v0
.end method
