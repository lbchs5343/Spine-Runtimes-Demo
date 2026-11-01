.class Lcom/bytedance/msdk/ox/ox/d/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/ox/ox/d/ox;

.field final synthetic dq:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/ox;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->dq:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->dq:Ljava/util/List;

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->dq:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->d(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox$1;->d:Lcom/bytedance/msdk/ox/ox/d/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->ox(Lcom/bytedance/msdk/ox/ox/d/ox;)V

    return-void
.end method
