.class Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(JJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:J

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->s:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->dq:J

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->d:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->ox:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->s:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->s:Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->dq:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->d:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->ox:Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/multipro/aidl/d/iw$2;->p:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o/d/dq;->dq(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
