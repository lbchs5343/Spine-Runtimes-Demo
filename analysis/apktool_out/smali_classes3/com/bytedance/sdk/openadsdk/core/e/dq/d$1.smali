.class Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lorg/json/JSONArray;

.field final synthetic dq:Landroid/content/Context;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->ox:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->dq:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->d:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->ox:Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/dq/d$1;->d:Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/e/dq/d;Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
