.class public Lcom/bytedance/sdk/openadsdk/core/le/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/iw/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

.field private dq:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d()Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->dq(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc9

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;)V
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/iw/no<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    const/16 v0, 0xca

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->d(I)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    move-result-object p1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->mn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ox(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    :goto_0
    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d:Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;->ia(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/gh/dq/ox;

    :cond_1
    :goto_0
    return-void
.end method
