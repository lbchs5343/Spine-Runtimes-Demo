.class public final Lcom/bytedance/sdk/component/ox/d/dq/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/r;


# instance fields
.field public final dq:Lcom/bytedance/sdk/component/ox/d/k;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/ox/d/r$dq;)Lcom/bytedance/sdk/component/ox/d/bl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq()Lcom/bytedance/sdk/component/ox/d/kx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/ji;->d()V

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->iw()Lcom/bytedance/sdk/component/ox/d/dq/d/mn;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/d/dq;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v2, v4, p1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->dq(Lcom/bytedance/sdk/component/ox/d/k;Lcom/bytedance/sdk/component/ox/d/r$dq;Z)Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;

    move-result-object p1

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq/d/mn;->d()Lcom/bytedance/sdk/component/ox/d/dq/d/ox;

    move-result-object v3

    iget-object v4, v1, Lcom/bytedance/sdk/component/ox/d/kx;->iw:Lcom/bytedance/sdk/component/ox/d/ji;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/d/ji;->ox()V

    :cond_1
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox/mn;->dq(Lcom/bytedance/sdk/component/ox/d/kx;Lcom/bytedance/sdk/component/ox/d/dq/d/mn;Lcom/bytedance/sdk/component/ox/d/dq/ox/ox;Lcom/bytedance/sdk/component/ox/d/dq/d/ox;)Lcom/bytedance/sdk/component/ox/d/bl;

    move-result-object p1

    return-object p1
.end method
