.class Lcom/bytedance/sdk/openadsdk/core/o/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/d;->d(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/o/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/d;->l(Lcom/bytedance/sdk/openadsdk/core/o/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o/d;->t(Lcom/bytedance/sdk/openadsdk/core/o/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/o/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/o/d;->gx(Lcom/bytedance/sdk/openadsdk/core/o/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d;->d(Lcom/bytedance/sdk/openadsdk/core/o/d;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
