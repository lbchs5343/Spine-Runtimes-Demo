.class Lcom/bytedance/msdk/core/admanager/reward/dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/dq;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    const-string v1, "GROMORE_SS_REWARD_VERIFY"

    if-eqz v0, :cond_0

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5df2\u7ecfdestroy, \u76f4\u63a5return"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5df2\u7ecf\u6709\u7ed3\u679c\uff0c\u76f4\u63a5\u7ed9\u5f00\u53d1\u8005\u56de\u8c03"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0, v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->p(Lcom/bytedance/msdk/core/admanager/reward/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->ox(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/core/admanager/reward/dq$d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/dq;->d(Lcom/bytedance/msdk/core/admanager/reward/dq;)Lcom/bytedance/msdk/api/ox/dq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/dq$d;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s(Lcom/bytedance/msdk/core/admanager/reward/dq;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const-string v0, "--==-- verify\u56de\u8c03\u8fdb\u6765\u51c6\u5907\u8bf7\u6c42\uff0c\u4f46\u662f\u4e0d\u80fd\u91cd\u8bd5"

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    const-string v2, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u5148\u8fdb\u6765\u53d1\u8d77\u8bf7\u6c42"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->dq(Lcom/bytedance/msdk/core/admanager/reward/dq;J)J

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/core/admanager/reward/dq;->s(Lcom/bytedance/msdk/core/admanager/reward/dq;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    const-string v2, "--==-- verify\u56de\u8c03\u8fdb\u6765\uff0c\u540e\u8fdb\u6765\u4f46\u5927\u4e8e2s\uff0c\u53d1\u8d77\u8bf7\u6c42"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/reward/dq;->iw(Lcom/bytedance/msdk/core/admanager/reward/dq;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/dq$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/dq;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/dq;->mn(Lcom/bytedance/msdk/core/admanager/reward/dq;)V

    goto :goto_0

    :cond_5
    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    new-instance v0, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/admanager/reward/dq$3$1;-><init>(Lcom/bytedance/msdk/core/admanager/reward/dq$3;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;J)V

    return-void
.end method
