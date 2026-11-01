.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;->mp()Lcom/bytedance/sdk/openadsdk/core/d/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/d/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no$9;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no$9;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no$9;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_extra_map"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no$9;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/no;->dq(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/r/k;)V

    return-void
.end method
