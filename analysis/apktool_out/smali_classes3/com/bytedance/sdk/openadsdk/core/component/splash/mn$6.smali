.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/jw;

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/r/jw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->dq:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->d:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->dq:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z

    move-result v0

    const-string v1, "lqmt"

    if-eqz v0, :cond_0

    const-string v0, "saveNetAd start"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->k(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V

    goto :goto_0

    :cond_0
    const-string v0, "preLoadSplashAd start"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mp(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->d:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->d:Lcom/bytedance/sdk/openadsdk/core/r/jw;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/jw;->ir()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->dq:Z

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$6;->ox:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->jy(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v4

    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ia;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZZ)V

    return-void
.end method
