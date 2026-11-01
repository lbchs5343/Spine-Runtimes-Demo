.class final Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/dq/kk;

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

.field private ox:Z

.field private p:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;J)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/cd;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/kk;-><init>(Lcom/bytedance/sdk/component/ox/dq/r;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->ox:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(JJJ)V

    iget-wide p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    cmp-long v0, v5, p2

    if-gtz v0, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object p2, p2, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p2, p1, v5, v6}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    iget-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    sub-long/2addr p1, v5

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "expected "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes but received "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->ox:Z

    iget-wide v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/kk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I

    return-void

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->ox:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$p;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V

    return-void
.end method
