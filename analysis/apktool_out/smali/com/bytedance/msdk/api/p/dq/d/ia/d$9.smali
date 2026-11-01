.class Lcom/bytedance/msdk/api/p/dq/d/ia/d$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/d/d/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/p/dq/d/ia/d;->gh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/api/p/dq/d/ia/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/d/ia/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/d$9;->dq:Lcom/bytedance/msdk/api/p/dq/d/ia/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/d$9;->dq:Lcom/bytedance/msdk/api/p/dq/d/ia/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/d;->ia(Lcom/bytedance/msdk/api/p/dq/d/ia/d;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/d$9;->dq:Lcom/bytedance/msdk/api/p/dq/d/ia/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/d;->kk(Lcom/bytedance/msdk/api/p/dq/d/ia/d;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ia/d$9;->dq:Lcom/bytedance/msdk/api/p/dq/d/ia/d;

    invoke-static {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/d;->o(Lcom/bytedance/msdk/api/p/dq/d/ia/d;)Lcom/bytedance/msdk/api/p/dq/d/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox;->n()Lcom/bytedance/msdk/api/p/dq/mn/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/ox;->dq()V

    :cond_0
    return-void
.end method
