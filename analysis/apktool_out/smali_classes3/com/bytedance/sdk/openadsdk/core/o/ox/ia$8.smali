.class Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->mn(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Lorg/json/JSONObject;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lorg/json/JSONObject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->dq:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 0

    return-void
.end method

.method public dq(I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->dq:Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia$8;->d:Z

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->d(Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;Lorg/json/JSONObject;Z)V

    return-void
.end method
