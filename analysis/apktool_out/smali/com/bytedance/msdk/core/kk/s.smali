.class public Lcom/bytedance/msdk/core/kk/s;
.super Ljava/lang/Object;


# instance fields
.field private d:J

.field private dq:I

.field private ox:Ljava/lang/String;

.field private p:J

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/kk/s;->d:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/kk/s;->s:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/kk/s;->p:J

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/kk/s;->dq:I

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/kk/s;->dq:I

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/kk/s;->d:J

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/s;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->dq()I

    move-result v0

    iput v0, p0, Lcom/bytedance/msdk/core/kk/s;->dq:I

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/kk/s;->d:J

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->ox()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/core/kk/s;->ox:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/kk/s;->p:J

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/kk/s;->s()I

    move-result p1

    iput p1, p0, Lcom/bytedance/msdk/core/kk/s;->s:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/kk/s;->ox:Ljava/lang/String;

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/kk/s;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/kk/s;->p:J

    return-wide v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/kk/s;->s:I

    return v0
.end method
