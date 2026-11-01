.class Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;
    }
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

.field private ox:Z

.field private final p:I

.field private final s:Lcom/bytedance/sdk/component/utils/e;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;ILcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;Lcom/bytedance/sdk/component/utils/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->ox:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->p:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->s:Lcom/bytedance/sdk/component/utils/e;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;->dq()V

    :cond_1
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->s:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->dq(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox$dq;->dq(JJ)V

    :cond_1
    return-void
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/swiper/FullSwiperItemView$ox;->dq:Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;->ox()V

    :cond_0
    return-void
.end method
