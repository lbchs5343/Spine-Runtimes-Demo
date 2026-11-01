.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mp;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bl()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mp;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    return v0
.end method

.method public cv()V
    .locals 15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox()Z

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->ox()Z

    move-result v5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ox(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->nh()I

    move-result v3

    const-string v4, "\u8df3\u8fc7"

    const-string v6, ""

    if-gt v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->f:Z

    if-eqz v1, :cond_1

    goto :goto_6

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw(Z)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw(Z)I

    move-result v7

    sput v3, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->e()I

    move-result v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->op:Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->s()I

    move-result v9

    if-gt v8, v9, :cond_3

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->by()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v14, 0x1

    :goto_1
    if-nez v0, :cond_4

    if-eqz v14, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v14, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    if-eqz v2, :cond_6

    const-string v2, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    goto :goto_4

    :cond_6
    move-object v2, v6

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_7

    move-object v12, v4

    goto :goto_5

    :cond_7
    move-object v12, v6

    :goto_5
    invoke-virtual/range {v9 .. v14}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d(I)V

    return-void

    :cond_8
    :goto_6
    sput v2, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    if-eqz v2, :cond_9

    const-string v3, "\u9886\u53d6\u6210\u529f"

    goto :goto_7

    :cond_9
    move-object v3, v6

    :goto_7
    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v4, v6

    :goto_8
    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx()V

    return-void
.end method

.method public dc()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qc()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->t()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->f()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qc()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->t()V

    return-void
.end method

.method public ha()Z
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dr()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public le()V
    .locals 0

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->le()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->vf()V

    return-void
.end method

.method public uh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mp;->xz()Z

    move-result v0

    return v0
.end method

.method public vw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public xz()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public yy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
