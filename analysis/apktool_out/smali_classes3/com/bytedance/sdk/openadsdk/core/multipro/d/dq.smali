.class public Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;
    }
.end annotation


# instance fields
.field public d:Z

.field public dq:Z

.field public ia:Z

.field public iw:J

.field public mn:J

.field public ox:Z

.field public p:Z

.field public s:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    const-string v1, "isCompleted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ox(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "isFromVideoDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "isFromDetailPage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->s(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "totalPlayDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "currentPlayPosition"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ox(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "isAutoPlay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->d(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    const-string v1, "isMute"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq(Z)V

    return-object v0
.end method


# virtual methods
.method public d(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->iw:J

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->s:J

    return-object p0
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isCompleted"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromVideoDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromDetailPage"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ox:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "totalPlayDuration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->iw:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentPlayPosition"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isAutoPlay"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->p:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isMute"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ia:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ia:Z

    return-void
.end method

.method public ox(J)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->mn:J

    return-object p0
.end method

.method public ox(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->dq:Z

    return-object p0
.end method

.method public p(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->d:Z

    return-object p0
.end method

.method public s(Z)Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;->ox:Z

    return-object p0
.end method
