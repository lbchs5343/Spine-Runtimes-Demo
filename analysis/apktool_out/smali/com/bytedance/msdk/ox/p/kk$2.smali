.class Lcom/bytedance/msdk/ox/p/kk$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/ig/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/kk;->dq(Ljava/util/List;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/msdk/ox/p/d;->ig:Z

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    iget-object v2, v1, Lcom/bytedance/msdk/ox/p/d;->s:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/d;->iw:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/core/s/d/p;->ox(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/ox/p/kk;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/ox/p/kk;Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/api/p/dq/mn/dq;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/kk$2;->dq:Lcom/bytedance/msdk/ox/p/kk;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/ox/p/kk;->dq(Lcom/bytedance/msdk/ox/p/kk;Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    return-void
.end method
