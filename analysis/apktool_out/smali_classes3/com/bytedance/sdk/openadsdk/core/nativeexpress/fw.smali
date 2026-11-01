.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;
.super Lcom/bytedance/sdk/component/adexpress/d/dq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/d/dq<",
        "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

.field private iw:Lcom/bytedance/sdk/component/adexpress/d/mp;

.field private ox:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private p:Lcom/bytedance/sdk/component/adexpress/d/ox;

.field private s:Lcom/bytedance/sdk/component/adexpress/d/mn;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/d/mp;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/d/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->ox:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->iw:Lcom/bytedance/sdk/component/adexpress/d/mp;

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->p:Lcom/bytedance/sdk/component/adexpress/d/ox;

    const/4 v1, 0x0

    const/16 v2, 0x6b

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->d:Landroid/view/View;

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/d/ox;->dq(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->iw:Lcom/bytedance/sdk/component/adexpress/d/mp;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->s()Lcom/bytedance/sdk/component/adexpress/d/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/d/kk;->o()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->d:Landroid/view/View;

    const-string v3, "tt_express_backup_fl_tag_26"

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->ox:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setThemeChangeReceiver(Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/d/q;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/d/q;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->getRealWidth()F

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->getRealHeight()F

    move-result v2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(Z)V

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/component/adexpress/d/q;->dq(D)V

    float-to-double v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/d/q;->d(D)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->s:Lcom/bytedance/sdk/component/adexpress/d/mn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/d/q;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->s:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->s:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->d()V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/mn;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->s:Lcom/bytedance/sdk/component/adexpress/d/mn;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->d()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->p:Lcom/bytedance/sdk/component/adexpress/d/ox;

    return-void
.end method

.method public synthetic mn()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fw;->dq()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    move-result-object v0

    return-object v0
.end method
