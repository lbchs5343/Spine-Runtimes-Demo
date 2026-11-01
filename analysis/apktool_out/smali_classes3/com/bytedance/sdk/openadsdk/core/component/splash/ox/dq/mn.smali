.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# instance fields
.field private ia:Z

.field private iw:Z

.field private kk:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

.field private mn:I

.field private no:I

.field private o:J

.field private p:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p:I

    const-string v1, "unknown"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ia:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->no:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->no:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ia:Z

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ia:Z

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->o:J

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->kk:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw:Z

    return-void
.end method

.method public ia()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->mn:I

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->s:Ljava/lang/String;

    return-object v0
.end method

.method public kk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->ia:Z

    return v0
.end method

.method public mn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw:Z

    return v0
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/f/d/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->kk:Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    return-object v0
.end method

.method public ox()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->o:J

    return-wide v0
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->no:I

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p:I

    return v0
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->mn:I

    return-void
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->no:I

    return v0
.end method
