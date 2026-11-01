.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:J

.field final synthetic ox:I

.field final synthetic p:J

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;JJIJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->s:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->dq:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->d:J

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->ox:I

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "starttime"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->dq:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "endtime"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "start_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->ox:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    const-string v2, "general_label"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$20;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method
