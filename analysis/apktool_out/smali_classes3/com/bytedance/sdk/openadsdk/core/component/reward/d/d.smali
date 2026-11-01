.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;,
        Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;
    }
.end annotation


# instance fields
.field private final cd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

.field private f:I

.field private fw:Z

.field private final gh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I

.field private ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

.field private ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

.field private iw:I

.field private jy:Z

.field private kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

.field private le:Z

.field private mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;

.field private final mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

.field private no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

.field private o:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private ox:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->fw:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->i:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->r:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->aa()I

    move-result p1

    return p1

    :cond_1
    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    return-object p0
.end method

.method private dq(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    div-int/lit16 v3, v3, 0x3e8

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-nez v4, :cond_1

    if-lez v3, :cond_0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "s"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    if-lez v3, :cond_2

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    int-to-long v3, v3

    sub-long/2addr v3, v1

    long-to-int v4, v3

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(J)V

    :cond_2
    return-void
.end method

.method private gx()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->le:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/d;->dq(Landroid/content/Context;FI)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    float-to-int v1, v2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->es()F

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/r/j;->pn()F

    move-result v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ho()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/d;->dq(Landroid/content/Context;FFI)[I

    move-result-object v4

    aget v1, v4, v1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    int-to-float v1, v1

    sub-float/2addr v2, v1

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    int-to-float v2, v3

    sub-float/2addr v0, v2

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    return-object p0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    return p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->t()V

    return-void
.end method

.method private t()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v3, "#CC161823"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-static {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "\u8bf7\u6c42\u5f02\u5e38\u65e0\u6cd5\u53d1\u653e\u5956\u52b1\uff0c\u8bf7\u5173\u95ed\u91cd\u8bd5"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er()Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public bl()Lcom/bytedance/sdk/openadsdk/core/c;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ir()Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(J)V

    return-void
.end method

.method public cd()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ce()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->u()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ig()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->d(II)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->f()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->p(Z)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->k(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->ji()V

    :cond_2
    return-void
.end method

.method public dq(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(II)V

    :cond_0
    return-void
.end method

.method public dq(JJI)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(JJI)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Lcom/bytedance/sdk/component/adexpress/d/q;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;ZLjava/lang/String;II)V
    .locals 0

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V
    .locals 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->cd()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZLcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZLcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ob()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(ZLjava/util/Map;Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mn()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(ZLjava/util/Map;Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mn()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->dq(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 8

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-nez p2, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox:Ljava/lang/String;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->iw:I

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;IIZLcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->p:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ob()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->p()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZLjava/util/Map;Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq;->mn()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/dq$ox;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Landroid/webkit/DownloadListener;Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/d/d;Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->r:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->o:Lcom/bytedance/sdk/openadsdk/core/d/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mn:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/layout/AbstractEndCardFrameLayout;)V

    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/mp/s;->dq(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->le:Z

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er()Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d(Z)V

    :cond_0
    return-void
.end method

.method public dq(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->n()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public er()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->o(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->fw()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->cd()Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->gh()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public fw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gh()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->p()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->i()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->s(Z)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    :cond_4
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ce()V

    :cond_0
    return-void
.end method

.method public ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kx()V

    :cond_0
    return-void
.end method

.method public ig()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->gh()V

    :cond_0
    return-void
.end method

.method public ir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->jy:Z

    return v0
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;->jy()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->jy()V

    :cond_1
    return-void
.end method

.method public iw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->iw(Z)V

    :cond_0
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->wp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "endcard"

    return-object v0
.end method

.method public ji()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->er()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->iw()V

    :cond_0
    return-void
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->vf()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(J)V

    return-void
.end method

.method public le()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->f()V

    :cond_0
    return-void
.end method

.method public mp()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->kx()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->iw(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qc()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->mn(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->gx()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq(I)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ox(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->er()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->iw()V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->fw:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->wn()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    :cond_2
    return-void
.end method

.method public nh()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->yy()Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ce()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->i:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->i(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/mn/p;->ox:Z

    return-void
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->fw()V

    :cond_0
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->no()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ob()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->i:I

    return v0
.end method

.method public op()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    return v0
.end method

.method public ox()V
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->vf()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->f:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->d(I)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq(J)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public ox(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->jy:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->mn(Z)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mp()V

    :cond_0
    return-void
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->fw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->op()Z

    move-result v0

    return v0

    :cond_1
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    return v0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->cd()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->q()V

    :cond_1
    return-void
.end method

.method public s(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->er()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ir()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->fw:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->r()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->q:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->iw()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->k()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->s(Z)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->mn()V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->iw(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->dq()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->mp(I)V

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->mn(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er()Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->s(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->qc()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d(Z)V

    :cond_6
    return-void
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->i()Z

    move-result v0

    return v0
.end method

.method public vf()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->er()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->gh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->mp:Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/view/dq;->ox()V

    return-void
.end method

.method public wp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->no:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d;->ig:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->kk()V

    :cond_1
    return-void
.end method
