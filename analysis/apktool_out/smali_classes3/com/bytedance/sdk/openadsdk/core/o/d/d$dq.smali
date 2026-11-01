.class Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/o/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:J

.field private dq:Ljava/lang/String;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private ox:J

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox:J

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->p:Ljava/lang/String;

    return-object p0
.end method

.method public dq(J)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d:J

    return-object p0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    return-object p0
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq:Ljava/lang/String;

    return-object p0
.end method

.method public dq()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/d/d;

    const-string v1, "tt_csj_download_thread"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->ox:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;J)J

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->d:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/o/d/d;J)J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->iw:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/d;Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/d;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/d/d$dq;->s:Ljava/lang/String;

    return-object p0
.end method
