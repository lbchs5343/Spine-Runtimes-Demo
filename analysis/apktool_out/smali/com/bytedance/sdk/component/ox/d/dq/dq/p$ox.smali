.class public final Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ox"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

.field private final ox:J

.field private final p:[Lcom/bytedance/sdk/component/ox/dq/gh;


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;->p:[Lcom/bytedance/sdk/component/ox/dq/gh;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$ox;->ox:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq(Ljava/lang/String;J)Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    move-result-object v0

    return-object v0
.end method
