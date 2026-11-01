.class public Lcom/bytedance/sdk/openadsdk/core/playable/ox;
.super Ljava/lang/Object;


# instance fields
.field private final d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field dq:Lorg/json/JSONObject;

.field private iw:I

.field private final ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

.field private p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

.field private final s:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->s:J

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->iw:I

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/playable/ox;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->iw:I

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->s()V

    return-void
.end method

.method private s()V
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->iw:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/playable/ox;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->dq()V

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 5

    const-string v0, "event"

    const-string v1, "csj_remove_pl_loading_page"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->s:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "playable_userFeel_loading_duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playable_track"

    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq:Lorg/json/JSONObject;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->dq(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public dq(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x5a

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->setProgress(I)V

    return-void

    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->iw:I

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->s()V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->setBtnPlayOnClickListener(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->setBtnPlayOnTouchListener(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    const-string v2, "csj_playable_loading_show"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playable_track"

    invoke-static {p1, p2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public dq(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "remove_loading_page_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "playable_url"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string p3, "remove_loading_page"

    invoke-static {p2, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->p:Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/playable/loading/PlayableLoadingLayout;->d()V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->ox:Lcom/bytedance/sdk/openadsdk/widget/PlayableLoadingView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
