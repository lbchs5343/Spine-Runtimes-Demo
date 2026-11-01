.class public abstract Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;
.super Lcom/bytedance/sdk/openadsdk/f/d/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;
    }
.end annotation


# instance fields
.field private dq:[I

.field protected ia:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$dq;

.field protected kk:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Dialog;[I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->dq:[I

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->dq(Landroid/app/Dialog;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->kk:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->dq:[I

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Landroid/app/Dialog;[I)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->o()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->o()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public ia()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract o()Lcom/bytedance/sdk/openadsdk/core/r/j;
.end method

.method public ox()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->o()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->o()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
