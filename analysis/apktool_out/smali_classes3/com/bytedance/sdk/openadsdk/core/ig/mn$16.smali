.class Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Ljava/lang/String;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:J

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ig/mn;Ljava/lang/String;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->dq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->d:J

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->ox:J

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->d:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->ox:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->ox:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "start_ts"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "end_ts"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "intercept_type"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    const-string v2, "type"

    const-string v3, "intercept_html"

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    const-string v2, "url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->dq:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->d:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->ox:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/mn$16;->s:Lcom/bytedance/sdk/openadsdk/core/ig/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->mn(Lcom/bytedance/sdk/openadsdk/core/ig/mn;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/ig/mn;Lorg/json/JSONArray;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
