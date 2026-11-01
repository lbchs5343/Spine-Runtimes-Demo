.class public Lcom/bytedance/sdk/openadsdk/core/r/nh;
.super Ljava/lang/Object;


# instance fields
.field public d:I

.field public final dq:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public ia:J

.field public ig:J

.field public iw:Lorg/json/JSONArray;

.field public jy:Lcom/bytedance/sdk/openadsdk/core/kx;

.field public kk:J

.field public mn:I

.field public mp:Lorg/json/JSONObject;

.field public no:J

.field public o:J

.field public ox:Ljava/lang/String;

.field public p:I

.field public q:I

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->iw:Lorg/json/JSONArray;

    const/4 v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mp:Lorg/json/JSONObject;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->q:I

    const-string v0, ""

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kx;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/r/nh;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->iw:Lorg/json/JSONArray;

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->iw:Lorg/json/JSONArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->o:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->o:J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->no:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->no:J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ig:J

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ig:J

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->q:I

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->q:I

    return-object v0
.end method

.method public dq(Ljava/lang/String;JZ)V
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "cst_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "cst_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    :cond_0
    return-void
.end method
