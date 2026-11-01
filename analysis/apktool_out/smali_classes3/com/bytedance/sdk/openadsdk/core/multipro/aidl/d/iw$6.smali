.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->ox:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->dq:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$6;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
