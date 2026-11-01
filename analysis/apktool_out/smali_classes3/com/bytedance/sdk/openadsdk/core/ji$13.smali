.class Lcom/bytedance/sdk/openadsdk/core/ji$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/h$ox;

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ji;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->ox:Lcom/bytedance/sdk/openadsdk/core/ji;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->dq:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->d:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->ox:Lcom/bytedance/sdk/openadsdk/core/ji;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->dq:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji$13;->d:Lcom/bytedance/sdk/openadsdk/core/h$ox;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    return-void
.end method
