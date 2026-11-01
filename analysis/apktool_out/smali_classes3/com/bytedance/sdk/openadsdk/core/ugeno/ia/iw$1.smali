.class Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->p:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->dq:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw$1;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method
