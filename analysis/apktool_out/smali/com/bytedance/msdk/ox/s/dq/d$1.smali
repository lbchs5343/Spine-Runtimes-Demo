.class Lcom/bytedance/msdk/ox/s/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/s/dq/d;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/s/dq/d$1;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/s/dq/d$1;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$1;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/s/dq/d$1;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Lcom/bytedance/msdk/ox/s/dq/d;)Lcom/bytedance/msdk/ox/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/s/dq/d$1;->dq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/ox/d/dq/dq;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
