.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/fw$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->ox:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    const-string v1, "load image fail"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/component/iw/no;)V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;->jy()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/le/dq/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->ox()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(J)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->mn()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->dq(Ljava/util/Map;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->kk()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d(Z)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->mn()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/f;->dq(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->o()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->o()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/mn;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->d(J)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->o()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/mn;->dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->ox(J)V

    invoke-interface {p2}, Lcom/bytedance/sdk/component/iw/no;->o()Lcom/bytedance/sdk/component/iw/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/mn;->ox()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->p(J)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->ox:Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d$1;->p:I

    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method
