.class Lcom/bytedance/sdk/component/iw/ox/ox$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/iw/ox/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/component/iw/f;

.field final synthetic dq:Lcom/bytedance/sdk/component/iw/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/ox;Lcom/bytedance/sdk/component/iw/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->d:Lcom/bytedance/sdk/component/iw/f;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/iw/ox/ox$dq;)Lcom/bytedance/sdk/component/iw/f;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->d:Lcom/bytedance/sdk/component/iw/f;

    return-object p0
.end method

.method private dq(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x413c0901

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->o(Lcom/bytedance/sdk/component/iw/ox/ox;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->kk(Lcom/bytedance/sdk/component/iw/ox/ox;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/ox/ox$dq$3;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox$dq;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->d:Lcom/bytedance/sdk/component/iw/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/f;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/no;)V
    .locals 4
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->s(Lcom/bytedance/sdk/component/iw/ox/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw(Lcom/bytedance/sdk/component/iw/ox/ox;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/iw/ox/ox$dq$1;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox$dq;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->ia(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ia;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->ia(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ia;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/no;->ox()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/iw/ia;->dq(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/iw/no;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->kk(Lcom/bytedance/sdk/component/iw/ox/ox;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->dq:Lcom/bytedance/sdk/component/iw/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->mn(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/iw/ox/ox$dq$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/iw/ox/ox$dq$2;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox$dq;Lcom/bytedance/sdk/component/iw/no;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;->d:Lcom/bytedance/sdk/component/iw/f;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/iw/f;->dq(Lcom/bytedance/sdk/component/iw/no;)V

    :cond_3
    return-void
.end method
