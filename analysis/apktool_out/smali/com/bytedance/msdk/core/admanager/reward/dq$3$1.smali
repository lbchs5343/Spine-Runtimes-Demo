.class Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-eqz v0, :cond_0

    const-string v0, "--==-- verify\u56de\u8c03\u515c\u5e95\u8fdb\u6765\uff0c\u5df2\u7ecfdestroy\u4e86, \u76f4\u63a5return"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "--==-- verify\u56de\u8c03\u515c\u5e95\u8fdb\u6765\uff0c\u7ed9\u5f00\u53d1\u8005verify\u56de\u8c03"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z

    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1$1;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v1, v1, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v2, v2, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq$3;

    iget-object v0, v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object v0

    :cond_1
    invoke-interface {v1, v0}, Lcom/bytedance/msdk/core/admanager/reward/dq$d;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_2
    return-void
.end method
