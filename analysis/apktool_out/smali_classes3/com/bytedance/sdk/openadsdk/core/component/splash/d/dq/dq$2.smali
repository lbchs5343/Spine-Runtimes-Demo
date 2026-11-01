.class Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ZJJ)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZJJ)V

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    const-string p2, "check server cache unavailable"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/d/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;->dq(Ljava/lang/Object;)V

    return-void
.end method
