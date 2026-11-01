.class public Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/iw/ox/fw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field private d:J

.field private dq:J

.field private ia:I

.field private ig:Z

.field private iw:I

.field private kk:I

.field private mn:I

.field private no:I

.field private o:I

.field private ox:J

.field private p:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->p:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig:Z

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d:J

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->p:Z

    return-void
.end method

.method public dq()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq:J

    return-wide v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq:J

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig:Z

    return-void
.end method

.method public ia()I
    .locals 6

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq:J

    const-wide/16 v4, 0x64

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    long-to-int v0, v2

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public ig()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig:Z

    return v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->mn:I

    return v0
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->no:I

    return-void
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->kk:I

    return v0
.end method

.method public mn()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia:I

    return v0
.end method

.method public mp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->p:Z

    return v0
.end method

.method public no()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->no:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->o:I

    return v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox:J

    return-wide v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->mn:I

    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox:J

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia:I

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw:I

    return v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->kk:I

    return-void
.end method
