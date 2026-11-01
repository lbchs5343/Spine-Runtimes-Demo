.class Lcom/bytedance/msdk/dq/dq$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/dq$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/dq$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/dq$d;->dq(Lcom/bytedance/msdk/dq/dq$d;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->kk(Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    iget-object v1, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/dq$d;->dq(Lcom/bytedance/msdk/dq/dq$d;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/dq;->d(Lcom/bytedance/msdk/dq/dq;Lcom/bytedance/msdk/d/s;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/dq;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/dq$d;->dq(Lcom/bytedance/msdk/dq/dq$d;)Lcom/bytedance/msdk/d/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    iget-object v1, v1, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    iget-object v2, v1, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v1, v1, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-static {v0, v2, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq$d$1;->dq:Lcom/bytedance/msdk/dq/dq$d;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/dq$d;->dq:Lcom/bytedance/msdk/dq/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/dq;->dq(Lcom/bytedance/msdk/dq/dq;)Lcom/bytedance/msdk/dq/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/dq$dq;->m_()V

    :cond_1
    return-void
.end method
