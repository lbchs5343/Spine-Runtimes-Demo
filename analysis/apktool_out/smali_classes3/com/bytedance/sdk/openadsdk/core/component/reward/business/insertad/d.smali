.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

.field protected final dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

.field private iw:I

.field private mn:I

.field private ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

.field private p:Z

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->p:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_1
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->ia()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->d()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->ox()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public dq(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->kx(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-eq v2, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->ox()I

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(ZI)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-eq v2, v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->ox()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->iw()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-eq v2, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->mn()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->ox()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d(ILcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return p1

    :cond_8
    return v1
.end method

.method public dq(Landroid/widget/FrameLayout;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->fw(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->iw()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->iw:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->mn()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;ILcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/d;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    if-eqz v1, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    iget-boolean p2, p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;->dq:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->ia()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object p2

    const-string p3, ""

    invoke-static {v1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->p:Z

    return-void
.end method

.method public ia()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->mn:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->p()I

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->mn:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->mn:I

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;-><init>()V

    iput-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;->dq:Z

    iput-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;->d:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(ILcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/p;)V

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->s()I

    move-result v0

    const-string v1, "\u7ee7\u7eed\u770b"

    const-string v2, "\u79d2\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-static {v0, v1, v2}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->ox()I

    move-result v2

    if-lez v2, :cond_1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6210\u529f\u52a0\u901f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;->ox()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2\uff0c\u5956\u52b1\u5df2\u4e0b\u53d1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "\u52a0\u901f\u6210\u529f\uff01"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ia()V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->iw:I

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ia()V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->iw:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public ox()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->p()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->mn()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->mn:I

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v4, "#242424"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-interface {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;->dq(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v4

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ia:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/SmallSlideView;

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0a\u6ed1\u7ee7\u7eed\u89c2\u770b\n\u63d0\u524d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ia()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u79d2\u9886\u5956"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "\u4e0a\u6ed1\u7ee7\u7eed\u89c2\u770b\n\u624d\u80fd\u9886\u5956\u54e6"

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x2

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v6

    const/high16 v7, 0x43200000    # 160.0f

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v4

    const-string v6, "ic_back_light"

    invoke-static {v4, v6}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->getActivity()Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/ox;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/insertad/d;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
