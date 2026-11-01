.class Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/p/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/p;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    invoke-virtual {p3, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/s;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/p;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->p:Lcom/bytedance/sdk/openadsdk/core/p/dq/d;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->p:Lcom/bytedance/sdk/openadsdk/core/r/nh;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->ox:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->dq()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/p/p$4;->d:Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/dq/d;->ox()V

    :cond_3
    return-void
.end method
