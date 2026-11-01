.class public Lcom/bytedance/sdk/openadsdk/core/r/jy;
.super Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private dq:I

.field private iw:D

.field private mn:D

.field private ox:I

.field private p:D

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->iw:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->ox:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->s:Ljava/lang/String;

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->dq:I

    return v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->p:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->dq:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->d:Ljava/lang/String;

    return-void
.end method

.method public ia()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->iw:D

    return-wide v0
.end method

.method public mn()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->mn:D

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->ox:I

    return v0
.end method

.method public ox(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->mn:D

    return-void
.end method

.method public p()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->p:D

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/jy;->s:Ljava/lang/String;

    return-object v0
.end method
