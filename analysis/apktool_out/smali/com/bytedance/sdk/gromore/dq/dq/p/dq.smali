.class public Lcom/bytedance/sdk/gromore/dq/dq/p/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/gromore/dq/dq/p;


# instance fields
.field private dq:Lcom/bytedance/msdk/api/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->s()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/dq;->dq:Lcom/bytedance/msdk/api/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/d;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
