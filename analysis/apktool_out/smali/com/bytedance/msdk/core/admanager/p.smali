.class public abstract Lcom/bytedance/msdk/core/admanager/p;
.super Lcom/bytedance/msdk/core/mn/dq/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/msdk/core/mn/dq/dq;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/kk/mp;->ia(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TTMediationSDK"

    if-nez v0, :cond_0

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u9891\u6b21"

    invoke-static {v1, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd169

    return p0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/kk/mp;->dq()Lcom/bytedance/msdk/core/kk/mp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/kk/mp;->ox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "--==--: \u547d\u4e2d\u5c55\u793a\u95f4\u9694"

    invoke-static {v1, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xcd16a

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/admanager/p;Lcom/bytedance/msdk/api/dq;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method private mp()Lcom/bytedance/msdk/api/dq;
    .locals 10

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/s;->by:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/dq/d;->dq(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/d/dq;

    const v2, 0x9c6f

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->wn()Ljava/lang/String;

    move-result-object v7

    const v8, 0x9c6f

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->ir:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->wn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private no()Lcom/bytedance/msdk/api/dq;
    .locals 10

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/mn/s;->uh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/api/dq/d;->dq(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/d/dq;

    const v2, 0x9c70

    invoke-static {v2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->wn()Ljava/lang/String;

    move-result-object v7

    const v8, 0x9c70

    iget-object v9, p0, Lcom/bytedance/msdk/core/mn/ox;->ir:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, p0, Lcom/bytedance/msdk/core/mn/ox;->mn:Lcom/bytedance/msdk/core/no/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/mn/ox;->wn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public ig()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/mn/ox;->no:Lcom/bytedance/msdk/api/dq/d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/p;->no()Lcom/bytedance/msdk/api/dq;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/admanager/p;->mp()Lcom/bytedance/msdk/api/dq;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v1, Lcom/bytedance/msdk/core/admanager/p$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/msdk/core/admanager/p$1;-><init>(Lcom/bytedance/msdk/core/admanager/p;Lcom/bytedance/msdk/api/dq;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
