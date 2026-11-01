.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/d/mn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/component/adexpress/d/o$dq;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

.field final synthetic dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;Lcom/bytedance/sdk/component/adexpress/d/o$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;)V
    .locals 1

    new-instance p2, Lg/tr;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput p1, p2, Lg/tr;->a:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v0

    invoke-interface {v0, p2}, Lg/dbw;->dq(Lg/tr;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d(Lcom/bytedance/sdk/component/adexpress/d/o;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Lcom/bytedance/sdk/component/adexpress/d/o;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/d/jy;->a_(I)V

    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->ox()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/tr;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lg/tr;->a:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/dbw;->dq(Lg/tr;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/component/adexpress/d/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/kk;->mp()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->d()Lcom/bytedance/sdk/component/adexpress/d/jy;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->d:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;->d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/d/jy;->dq(Lcom/bytedance/sdk/component/adexpress/d/p;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/p$1;->dq:Lcom/bytedance/sdk/component/adexpress/d/o$dq;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/d/o$dq;->dq(Z)V

    return-void
.end method
