.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/ox<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field final synthetic ox:J

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

.field private s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->ox:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;->s(Z)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->ox:J

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;JZ)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V
    .locals 6

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->s:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->p:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->ox:J

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;J)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method

.method public synthetic ox(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$8;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/ia;)V

    return-void
.end method
