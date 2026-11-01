.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/p/s;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public bl()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/s;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    return v0
.end method

.method public cv()V
    .locals 14

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/d;->cv()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ox(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->nh()I

    move-result v2

    const/4 v3, 0x7

    const-string v4, ""

    if-gt v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->f:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw(Z)I

    move-result v5

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw(Z)I

    move-result v6

    sput v5, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->op:Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->s()I

    move-result v7

    if-gt v0, v7, :cond_3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->by()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v12, 0x1

    :goto_1
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "s"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    if-eqz v7, :cond_4

    const-string v4, "\u540e\u53ef\u9886\u53d6\u5956\u52b1"

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move v13, v12

    invoke-virtual/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->k()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Ljava/lang/CharSequence;IIZ)V

    return-void

    :cond_5
    :goto_2
    sput v1, Lcom/bytedance/sdk/openadsdk/core/mn/p;->dq:I

    move-object v2, v4

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->q:Z

    if-eqz v5, :cond_6

    const-string v2, "\u9886\u53d6\u6210\u529f"

    :cond_6
    move-object v6, v2

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->k()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    const-string v3, "0"

    invoke-virtual {v2, v3, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Ljava/lang/CharSequence;IIZ)V

    :cond_7
    :goto_3
    return-void
.end method

.method public dc()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qc()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    return-void
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    return-object v0
.end method

.method public ha()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public kk()Landroid/view/View;
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ox:I

    const/4 v1, 0x2

    const/16 v2, 0x21

    const/4 v3, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->gh(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->cd(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->fw(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->le(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->i(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/res/s;->r(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public uh()Z
    .locals 1

    const/4 v0, 0x1

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->no()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
