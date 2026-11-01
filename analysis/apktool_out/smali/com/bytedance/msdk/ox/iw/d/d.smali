.class public Lcom/bytedance/msdk/ox/iw/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private d:Ljava/lang/Runnable;

.field private dq:Lcom/bytedance/msdk/core/no/d;

.field private ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/no/d;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->ox:Z

    iput-object p1, p0, Lcom/bytedance/msdk/ox/iw/d/d;->dq:Lcom/bytedance/msdk/core/no/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/iw/d/d;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->ox:Z

    return v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->dq:Lcom/bytedance/msdk/core/no/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->dq:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v0

    const-string v1, "serverBidding_timeout"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->ox:Z

    iget-object v0, p0, Lcom/bytedance/msdk/ox/iw/d/d;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
