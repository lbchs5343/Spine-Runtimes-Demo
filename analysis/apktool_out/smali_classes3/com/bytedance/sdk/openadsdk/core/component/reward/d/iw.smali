.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;
.super Ljava/lang/Object;


# instance fields
.field protected d:Z

.field dq:Z

.field private f:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private fw:Z

.field ia:J

.field private ig:Landroid/widget/FrameLayout;

.field iw:Z

.field private jy:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private final kk:I

.field mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

.field private mp:Ljava/lang/String;

.field private no:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

.field protected ox:Z

.field protected p:J

.field private q:J

.field protected s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->kk:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-void
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->no()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ia:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->kk()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->iw()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->kk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bl()D
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->jw()Z

    move-result v0

    return v0
.end method

.method public cd()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->ig()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ce()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->ox()Z

    move-result v0

    return v0
.end method

.method public d(J)V
    .locals 6

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mp()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ig()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->bl()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    long-to-double v4, v4

    add-double/2addr v4, p1

    div-double/2addr v4, v0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s:I

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->by()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->bl()D

    move-result-wide v4

    div-long/2addr v2, v0

    long-to-double v0, v2

    sub-double/2addr v4, v0

    double-to-int p1, v4

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->bl()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    div-long/2addr v4, v0

    long-to-double v0, v4

    sub-double/2addr v2, v0

    double-to-int p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s:I

    return-void
.end method

.method public d(Z)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->wn()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->wn()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->cd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->wn()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(I)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->p(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->cd()Lcom/bykv/vk/openvk/component/video/api/p/d;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->p(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->mp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq;->dq(F)V

    :cond_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ia:J

    return-void
.end method

.method public dq(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->dq(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {p1, p3}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->d(Z)V

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->ia()V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Landroid/widget/FrameLayout;Ljava/lang/String;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ig:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mp:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->iw:Z

    if-eqz p3, :cond_1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/iw/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->jy:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/iw/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/iw/dq;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->jy:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/iw/dq;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->bl()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->iw()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->d(JZ)Z

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->jy:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/p/ox;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->f:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/dq$dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->dq(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d:Z

    return-void
.end method

.method public dq(ZLcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Z)V
    .locals 2

    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ds()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p()Z

    move-result p3

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->iw()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->t()V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq(JZ)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->t()V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->kk()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(JZI)Z
    .locals 6

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->f:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz p4, :cond_1

    goto :goto_2

    :cond_1
    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-lez p4, :cond_2

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq:Z

    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, p4}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object p4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ig:Landroid/widget/FrameLayout;

    const/16 v2, 0x64

    if-nez v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p4, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ig:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_1
    invoke-virtual {p4, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ox(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(J)V

    invoke-virtual {p4, p3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p4, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Z)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {p1, p4}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result p1

    return p1

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public er()Lcom/bykv/vk/openvk/component/video/api/p/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->cd()Lcom/bykv/vk/openvk/component/video/api/p/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->jy()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fw()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->no()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ia:J

    return-wide v0
.end method

.method public gh()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->mp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->q(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTBaseVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->q()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->ig()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ir()J
    .locals 9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ig()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->no:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->f(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/dq;->iw()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->xz()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    long-to-double v4, v2

    sub-double v4, v0, v4

    const-wide v6, 0x406a400000000000L    # 210.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    long-to-double v2, v2

    add-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->q:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->q:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public iw()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ia:J

    return-wide v0
.end method

.method public j()Lcom/bykv/vk/openvk/component/video/api/p/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    return-object v0
.end method

.method public ji()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->jy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onContinue throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTBaseVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jy()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->jy()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->v()V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->v()V

    return v2

    :cond_2
    return v1
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->o()V

    :cond_0
    return-void
.end method

.method public kx()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn()V

    return-void
.end method

.method public l()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->bu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public le()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->q()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->kk()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    return-void
.end method

.method public mp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->s()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->s:I

    return v0
.end method

.method public nh()V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->i()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->fw()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(JJ)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq(J)V

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->cd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->gh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->er()Lcom/bykv/vk/openvk/component/video/api/p/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ia()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/util/Map;)V

    return-void
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->d()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->iw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ob()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox:Z

    return-void
.end method

.method public op()J
    .locals 5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ir()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->le()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->dq(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->d(Z)V

    :cond_0
    return-void
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->le()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->gh()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->p()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d:Z

    return v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->j()Lcom/bykv/vk/openvk/component/video/api/p/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    return-object v0
.end method

.method public vf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox:Z

    return v0
.end method

.method public wn()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/p/ox;->fw()Lcom/bykv/vk/openvk/component/video/api/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq;->iw()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wp()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn:Lcom/bykv/vk/openvk/component/video/api/p/ox;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
