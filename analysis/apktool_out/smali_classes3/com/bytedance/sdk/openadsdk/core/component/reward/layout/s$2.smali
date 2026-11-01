.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p5

    const-string p6, "\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-lez v0, :cond_0

    const-wide/16 p5, 0x64

    mul-long p3, p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 3

    const-string v0, "wyx"

    const-string v1, "RewardFullExpressLayout onIdle"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    return-void
.end method

.method public dq(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p5, "wyx"

    const-string p6, "RewardFullExpressLayout onDownloadActive"

    invoke-static {p5, p6}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-lez v0, :cond_0

    const-wide/16 p5, 0x64

    mul-long p3, p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u5df2\u4e0b\u8f7d"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public dq(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p1

    const-string p2, "\u70b9\u51fb\u6253\u5f00"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 p2, 0x6

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    return-void
.end method

.method public ox(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p5

    const-string p6, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(Ljava/lang/String;)V

    const-wide/16 p5, 0x0

    cmp-long v0, p1, p5

    if-lez v0, :cond_0

    const-wide/16 p5, 0x64

    mul-long p3, p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s$2;->dq:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/jy/dq$dq;->dq(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
