.class final Lcom/bytedance/msdk/iw/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ia/no$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/iw/ox;->jy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--==-- AppStateListener on background"

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->kk()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Lcom/bytedance/msdk/s/iw;->d(J)V

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/msdk/core/d;->d(J)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/msdk/s/d/d;->dq:Z

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->o()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/s/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2, v3}, Lcom/bytedance/msdk/iw/ox;->d(J)J

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/h;->dq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/s/ox;->ox()V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->no()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "badkground too frequently ms: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->o()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TTMediationSDK"

    const-string v1, "--==-- AppStateListener on foreground"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/bytedance/msdk/iw/ox;->dq(J)J

    invoke-static {}, Lcom/bytedance/msdk/core/d/dq;->ox()V

    return-void
.end method
