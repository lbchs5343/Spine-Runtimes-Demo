.class Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:J

.field dq:Z

.field ox:J

.field p:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->dq:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->ox:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->p:J

    return-void
.end method
