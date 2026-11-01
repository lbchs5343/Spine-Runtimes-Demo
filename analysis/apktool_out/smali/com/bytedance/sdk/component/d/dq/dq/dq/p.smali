.class public Lcom/bytedance/sdk/component/d/dq/dq/dq/p;
.super Lcom/bytedance/sdk/component/d/dq/p;


# instance fields
.field dq:Lcom/bytedance/sdk/component/ox/d/k;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/dq/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ox/d/q;->d(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/q;->d(I)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/dq/p;->dq:Lcom/bytedance/sdk/component/ox/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/k;->gh()Lcom/bytedance/sdk/component/ox/d/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/q;->dq(I)V

    return-void
.end method
