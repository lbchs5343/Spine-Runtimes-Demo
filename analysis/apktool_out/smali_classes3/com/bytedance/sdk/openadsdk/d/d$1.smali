.class Lcom/bytedance/sdk/openadsdk/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/d/d;

.field final synthetic dq:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/d/d;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/d$1;->dq:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/d$1;->dq:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/d$1;->d:Lcom/bytedance/sdk/openadsdk/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/d$1;->dq:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lcom/bytedance/sdk/openadsdk/d/d;Lorg/json/JSONArray;)V

    return-void
.end method
