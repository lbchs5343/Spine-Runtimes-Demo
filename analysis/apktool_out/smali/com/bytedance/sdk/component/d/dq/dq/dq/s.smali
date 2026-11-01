.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/s;
.super Lcom/bytedance/sdk/component/d/dq/q;


# instance fields
.field d:Lcom/bytedance/sdk/component/ox/d/kx;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/kx;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/q;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/d/dq/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->dq()Lcom/bytedance/sdk/component/ox/d/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/gh;->dq()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/mn;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    return-object v0
.end method

.method public dq()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->s()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/d/dq/q$dq;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/d/dq/q;->mn()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->ox()Lcom/bytedance/sdk/component/ox/d/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/cd;->ox()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/d/dq/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/dq$dq;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq$dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/dq$dq;->d()Lcom/bytedance/sdk/component/d/dq/dq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/s;->d:Lcom/bytedance/sdk/component/ox/d/kx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/kx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
