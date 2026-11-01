.class public Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:I

.field private dq:Ljava/lang/String;

.field private iw:D

.field private ox:D

.field private p:I

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->s:J

    return-wide v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->ox:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->d:I

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->p:I

    return v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->iw:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->p:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->s:J

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq:Ljava/lang/String;

    return-void
.end method

.method public iw()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->ox:D

    return-wide v0
.end method

.method public ox()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->iw:D

    return-wide v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->d:I

    return v0
.end method
