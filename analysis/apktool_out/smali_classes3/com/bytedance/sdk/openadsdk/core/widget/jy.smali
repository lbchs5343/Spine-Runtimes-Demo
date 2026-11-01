.class public Lcom/bytedance/sdk/openadsdk/core/widget/jy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;
    }
.end annotation


# instance fields
.field private d:Z

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;

.field private ia:Z

.field private iw:I

.field private kk:Z

.field private mn:I

.field private no:Z

.field private final o:Landroid/view/View$OnTouchListener;

.field private ox:Z

.field private p:F

.field private s:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->d:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ox:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ia:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->kk:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/jy$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/jy$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->o:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/jy;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->s:F

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/jy;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->mn:I

    return p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->d:Z

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/jy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ia:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/jy;F)F
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->p:F

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/jy;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->iw:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/jy$dq;

    return-object p0
.end method

.method private dq(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float v0, v0

    const v4, 0x3c23d70a    # 0.01f

    mul-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-lez v5, :cond_1

    const v5, 0x3f7d70a4    # 0.99f

    mul-float v0, v0, v5

    cmpl-float v0, v3, v0

    if-gez v0, :cond_1

    int-to-float v0, v2

    mul-float v4, v4, v0

    cmpg-float v2, p1, v4

    if-lez v2, :cond_1

    mul-float v0, v0, v5

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/jy;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->dq(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/widget/jy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->no:Z

    return p1
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->iw:I

    return p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->s:F

    return p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->mn:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->kk:Z

    return p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ia:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ox:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/widget/jy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->kk:Z

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->no:Z

    return p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/widget/jy;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->p:F

    return p0
.end method


# virtual methods
.method public dq(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->o:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/jy;->ox:Z

    return-void
.end method
