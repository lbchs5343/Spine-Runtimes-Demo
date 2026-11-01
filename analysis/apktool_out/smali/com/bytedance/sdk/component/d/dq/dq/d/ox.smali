.class public Lcom/bytedance/sdk/component/d/dq/dq/d/ox;
.super Lcom/bytedance/sdk/component/d/dq/ig;


# instance fields
.field public mp:Lcom/bytedance/sdk/component/d/dq/dq/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/dq/ig;-><init>(Lcom/bytedance/sdk/component/d/dq/ig$dq;)V

    new-instance p1, Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/d/dq/dq/d/p;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/ox;->mp:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;
    .locals 2

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/d/dq/q;->dq(Lcom/bytedance/sdk/component/d/dq/ig;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/mn;->dq()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q;->d()Lcom/bytedance/sdk/component/d/dq/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/mn;->dq()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/ox;->mp:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/d/dq/dq/d/dq;-><init>(Lcom/bytedance/sdk/component/d/dq/q;Lcom/bytedance/sdk/component/d/dq/dq/d/p;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Lcom/bytedance/sdk/component/d/dq/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/dq/dq/d/ox;->mp:Lcom/bytedance/sdk/component/d/dq/dq/d/p;

    return-object v0
.end method
