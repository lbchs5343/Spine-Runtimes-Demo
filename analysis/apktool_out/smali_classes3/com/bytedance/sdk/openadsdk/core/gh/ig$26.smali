.class Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/no/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lorg/json/JSONObject;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/gh/ig;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->p:Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->ox:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/gh/dq/dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ia(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/ig$26;->ox:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    return-object v0
.end method
