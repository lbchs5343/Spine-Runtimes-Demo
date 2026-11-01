.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:J

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->dq:J

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->ox:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->p:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->dq:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$5;->ox:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
