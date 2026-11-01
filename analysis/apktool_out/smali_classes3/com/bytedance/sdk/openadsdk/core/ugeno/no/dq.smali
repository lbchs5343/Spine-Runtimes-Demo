.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# instance fields
.field private d:Lg/dlv;

.field protected final dq:Lcom/bytedance/sdk/component/utils/e;

.field private ia:I

.field private iw:I

.field private kk:I

.field private mn:I

.field private o:Z

.field private ox:Lg/dlv;

.field private p:Lg/dlv;

.field private s:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/utils/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_4

    const-string v0, "xCreative"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "xSetting"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "dynamic_configs"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "video"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "video_duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->iw:I

    :cond_0
    const-string v3, "reward_full_time_type"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "reward_full_play_time"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->mn:I

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->o:Z

    :cond_1
    if-eqz v1, :cond_3

    const-string v0, "ad_slot_type"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    const-string v0, "iv_skip_time"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->s:I

    goto :goto_0

    :cond_2
    const-string v0, "rv_skip_time"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->s:I

    :cond_3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "is_show_video_duration"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->o:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private ox()V
    .locals 7

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->mn:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->kk:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->iw:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ia:I

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->s:I

    if-ge v1, v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->d:Lg/dlv;

    instance-of v6, v5, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/dq;

    if-eqz v6, :cond_3

    invoke-virtual {v5, v3}, Lg/dlv;->d(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->d:Lg/dlv;

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/dq;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/dq;->mn(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ox:Lg/dlv;

    instance-of v5, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/d/dq;

    if-eqz v5, :cond_4

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/d/dq;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/d/dq;->p(Z)V

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->p:Lg/dlv;

    instance-of v5, v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;

    if-eqz v5, :cond_5

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/countdown/d;->dq(IIIZ)V

    :cond_5
    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->d:Lg/dlv;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ox:Lg/dlv;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->p:Lg/dlv;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public dq()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public dq(II)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ia:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->kk:I

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->dq:Lcom/bytedance/sdk/component/utils/e;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ox()V

    return-void
.end method

.method public dq(Lg/dlv;Lg/dlv;Lg/dlv;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->d:Lg/dlv;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->ox:Lg/dlv;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->p:Lg/dlv;

    return-void
.end method
