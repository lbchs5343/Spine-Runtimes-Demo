.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

.field private ia:Z

.field private ig:Ljava/lang/String;

.field private iw:I

.field private kk:Z

.field private mn:I

.field private mp:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Ljava/lang/String;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ig:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mp:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    return-object p0
.end method

.method private dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xf0

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v2, "#77000000"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v1, p1, v3}, Lg/tn;->v(Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable;Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const-string v1, "tt_video_loading_progress_bar"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private dq(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "play_again_allow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "play_again_reward_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    const-string v1, "play_again_reward_amount"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    const-string v1, "extra_info"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->q:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    if-eqz v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia:Z

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw:I

    return p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private kk()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;)V

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/component/reward/dq/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u5f53\u524d\u65e0\u65b0\u89c6\u9891\uff0c\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    return p0
.end method

.method private no()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$6;

    const-string v1, "executeMultiProcessCallback"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk()V

    return-void
.end method

.method private o()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/d;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->p()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;->ox()Z

    move-result v0

    return v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    return-object p0
.end method


# virtual methods
.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mp:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ig:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public ia()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isPlayAgain"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mSourceRitId"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mNowPlayAgainCount"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "isCustomPlayAgain"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isCanPlayAgain"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "mPlayAgainRewardName"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mPlayAgainRewardAmount"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLastRewardName"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLastRewardAmount"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ig:Ljava/lang/String;

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mp:Ljava/lang/String;

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox()V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no()V

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mPlayAgainRewardAmount"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "isPlayAgain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "mSourceRitId"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw:I

    const-string p1, "mNowPlayAgainCount"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    const-string p1, "isCustomPlayAgain"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia:Z

    const-string p1, "isCanPlayAgain"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    const-string p1, "mPlayAgainRewardName"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    const-string p1, "mLastRewardName"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ig:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ox(I)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "reward_again"

    const-string v2, "reward_endcard"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ILcom/bytedance/sdk/openadsdk/widget/TTProgressBar;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    const-string v1, "videoplaying"

    invoke-static {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o()Z

    move-result p1

    return p1

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/widget/TTProgressBar;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ILcom/bytedance/sdk/openadsdk/widget/TTProgressBar;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    const-string v1, "endcard"

    invoke-static {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ZLjava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->no:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ZLjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn:I

    add-int/2addr v0, v1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;

    const-string v2, "executeMultiProcessCallback"

    invoke-direct {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d()Z

    move-result v0

    return v0
.end method
