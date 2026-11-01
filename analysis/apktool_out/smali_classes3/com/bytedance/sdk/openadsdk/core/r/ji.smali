.class public Lcom/bytedance/sdk/openadsdk/core/r/ji;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;
    }
.end annotation


# instance fields
.field private d:I

.field private dq:Ljava/lang/String;

.field private iw:Ljava/lang/String;

.field private ox:I

.field private p:D

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dq(IILjava/lang/String;D)Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;-><init>(IILjava/lang/String;D)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/ji;)Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->p()D

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/r/ji$dq;-><init>(IILjava/lang/String;D)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->iw:Ljava/lang/String;

    return-void
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public dq(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->p:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->s:Z

    return-void
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->s:Z

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->iw:Ljava/lang/String;

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox:I

    return v0
.end method

.method public p()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->p:D

    return-wide v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/r/ji;->ox:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
