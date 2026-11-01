.class public abstract Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/top/d;


# instance fields
.field protected d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field protected dq:Z

.field protected iw:I

.field protected ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

.field protected p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

.field protected s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->iw:I

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq:Z

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    return-void
.end method

.method public dq(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ha()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "topImpl"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "topType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v2, "stats_reward_full_top_handle"

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    return-void
.end method

.method public dq()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->iw:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->iw:I

    int-to-long v2, v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->xz()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "stats_reward_full_close_force"

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public iw(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    return-void
.end method

.method public ox(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    return-void
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    return-void
.end method

.method public s(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/top/ox;->s:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->kk(I)V

    return-void
.end method
