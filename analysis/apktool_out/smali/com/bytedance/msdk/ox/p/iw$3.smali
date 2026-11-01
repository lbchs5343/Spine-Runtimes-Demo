.class Lcom/bytedance/msdk/ox/p/iw$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/iw;->ox(Lcom/bytedance/msdk/d/s;)Lcom/bytedance/msdk/api/p/dq/dq/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/p/iw;

.field final synthetic dq:Lcom/bytedance/msdk/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/iw;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->d:Lcom/bytedance/msdk/ox/p/iw;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->rp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/msdk/api/p/d;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/msdk/ox/p/iw$3;->dq(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/p/d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/msdk/api/p/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/msdk/api/p/d;"
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    new-instance p2, Lcom/bytedance/msdk/ox/p/iw$3$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/ox/p/iw$3$1;-><init>(Lcom/bytedance/msdk/ox/p/iw$3;Lcom/bytedance/sdk/openadsdk/f/d/d/ia;)V

    return-object p2
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->lk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public ia()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v0

    return v0
.end method

.method public ig()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->fp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->jo()I

    move-result v0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->tu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public no()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0
.end method

.method public o()Lcom/bytedance/msdk/api/p/dq/mn/d;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->tl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/api/p/dq/mn/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/p/dq/mn/d;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->xj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(J)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->bx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->nt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->iw(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->tv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->mn(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->ny()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->fd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Lcom/bytedance/msdk/d/s;->jw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/d;->dq(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->fq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->ux()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/iw$3;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->gl()D

    move-result-wide v0

    return-wide v0
.end method
