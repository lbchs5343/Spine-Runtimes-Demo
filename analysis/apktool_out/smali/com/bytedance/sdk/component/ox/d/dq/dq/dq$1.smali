.class Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/gh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/d;Lcom/bytedance/sdk/component/ox/d/bl;)Lcom/bytedance/sdk/component/ox/d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ox/dq/s;

.field dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/d;

.field final synthetic p:Lcom/bytedance/sdk/component/ox/dq/p;

.field final synthetic s:Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;Lcom/bytedance/sdk/component/ox/dq/s;Lcom/bytedance/sdk/component/ox/d/dq/dq/d;Lcom/bytedance/sdk/component/ox/dq/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->s:Lcom/bytedance/sdk/component/ox/d/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/d;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->close()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p2, -0x1

    cmp-long v0, v6, p2

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V

    :cond_0
    return-wide p2

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ox/dq/p;->ox()Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide p2

    sub-long v4, p2, v6

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;JJ)Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/p;->i()Lcom/bytedance/sdk/component/ox/dq/p;

    return-wide v6

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    if-nez p2, :cond_2

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->dq:Z

    :cond_2
    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object v0

    return-object v0
.end method
