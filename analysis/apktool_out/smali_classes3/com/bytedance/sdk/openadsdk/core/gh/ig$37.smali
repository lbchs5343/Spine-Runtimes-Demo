.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:I

.field final synthetic ox:J

.field final synthetic p:Lorg/json/JSONObject;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;ILjava/lang/String;JLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->s:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->dq:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->ox:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->p:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    const-string v1, "plugin_download"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->ox:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$37;->p:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    return-object v0
.end method
