.class Lcom/bytedance/msdk/ox/s/dq/d$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/dq/d;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/s/dq/d;

.field final synthetic dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-boolean p2, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->dq:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/core/s/d/p$ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->ia(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/msdk/ox/s/dq/d$8;->dq:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/core/s/d/p$ox;->dq(Ljava/lang/String;ZILjava/util/List;)V

    :cond_0
    return-void
.end method
