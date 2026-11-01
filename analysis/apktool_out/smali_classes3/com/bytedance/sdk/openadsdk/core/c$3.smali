.class Lcom/bytedance/sdk/openadsdk/core/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c;->le(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/c;

.field final synthetic dq:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c$3;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/c$3;->dq:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c$3;->d:Lcom/bytedance/sdk/openadsdk/core/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/c$3;->dq:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->d(Lcom/bytedance/sdk/openadsdk/core/c;Lorg/json/JSONObject;)V

    return-void
.end method
