.class public Lcom/bytedance/sdk/component/d/dq/no;
.super Ljava/lang/Object;


# instance fields
.field public d:J

.field public dq:J

.field public iw:J

.field public mn:J

.field public ox:J

.field public p:J

.field public s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/ji;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->dq:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->d:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->ox:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->iw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->p:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->mn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->s:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->ia()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->iw:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/ji;->kk()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/d/dq/no;->mn:J

    :cond_0
    return-void
.end method
