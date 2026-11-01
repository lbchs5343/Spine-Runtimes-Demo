.class public abstract Lcom/bytedance/sdk/component/panglearmor/dq/dq/dq/dq;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Lcom/bytedance/sdk/component/panglearmor/dq/d/d;)Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/dq;
        }
    .end annotation

    invoke-static {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/dq/d;->dq(Lcom/bytedance/sdk/component/panglearmor/dq/d/d;)Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->dq()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->d()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->ox()I

    move-result v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->p()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;->s()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/panglearmor/dq/dq/ox/d;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-object v0
.end method
