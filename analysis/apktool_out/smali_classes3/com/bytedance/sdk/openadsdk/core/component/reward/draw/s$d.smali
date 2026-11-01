.class Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

.field private ox:Z

.field private final p:I

.field private final s:Lcom/bytedance/sdk/component/utils/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;ILcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;Lcom/bytedance/sdk/component/utils/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->ox:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->p:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->s:Lcom/bytedance/sdk/component/utils/e;

    return-void
.end method

.method private dq(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->ox:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;->dq(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d$dq;->dq()V

    :cond_1
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->s:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x4e20

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    long-to-float v0, p1

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->p:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->ox:Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(JJ)V

    :cond_1
    return-void
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$d;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->ox()V

    :cond_0
    return-void
.end method
