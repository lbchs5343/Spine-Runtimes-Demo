.class public Lcom/bytedance/sdk/openadsdk/core/r/kx$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;
    }
.end annotation


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

.field dq:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    const-string v1, "vertical"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    const-string v1, "horizontal"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->d:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->d:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->dq:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->dq:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->d:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/kx$d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx$d$dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
