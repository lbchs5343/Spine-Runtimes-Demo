.class public Lcom/bytedance/sdk/component/iw/p/ox;
.super Lcom/bytedance/sdk/component/iw/p/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/p/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "generate_key"

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->r()Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->s()Lcom/bytedance/sdk/component/iw/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/ig;->dq(Lcom/bytedance/sdk/component/iw/kk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->d(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/ig;->d(Lcom/bytedance/sdk/component/iw/kk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/iw/p/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/mn;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z

    return-void
.end method
