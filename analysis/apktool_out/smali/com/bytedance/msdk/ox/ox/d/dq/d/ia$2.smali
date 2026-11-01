.class Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;
.super Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;->dq(Ljava/util/List;Lcom/bytedance/msdk/ox/ox/d/dq/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic dq:J

.field final synthetic ia:Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;

.field final synthetic iw:I

.field final synthetic mn:Lcom/bytedance/msdk/ox/ox/d/dq/d;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

.field final synthetic p:Z

.field final synthetic s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;Lcom/bykv/vk/openvk/api/proto/Bridge;JLjava/util/List;Lcom/bytedance/sdk/openadsdk/f/d/d/no;ZLjava/util/concurrent/atomic/AtomicInteger;ILcom/bytedance/msdk/ox/ox/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->ia:Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;

    iput-wide p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->dq:J

    iput-object p5, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iput-boolean p7, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->p:Z

    iput-object p8, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p9, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->iw:I

    iput-object p10, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->mn:Lcom/bytedance/msdk/ox/ox/d/dq/d;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;FFZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PangleNativeAd_nativeSupportRenderControl_onRenderSuccess:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " duration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->dq:J

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTMediationSDK"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->d:Ljava/util/List;

    new-instance p3, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iget-boolean v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->p:Z

    invoke-direct {p3, v0, v1, p4}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;ZZ)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget p3, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->iw:I

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->mn:Lcom/bytedance/msdk/ox/ox/d/dq/d;

    if-eqz p1, :cond_0

    const-string p1, "PangleNativeAd_nativeSupportRenderControl_notifyAdSuccess!!!!!"

    invoke-static {p2, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->mn:Lcom/bytedance/msdk/ox/ox/d/dq/d;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$2;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/ox/ox/d/dq/d;->dq(Ljava/util/List;)V

    :cond_0
    return-void
.end method
