.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ox(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "load ad error"

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Z)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->kk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->d(J)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->ox(J)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->no()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p(J)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->ig()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const-string p2, "no ad or material"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method
