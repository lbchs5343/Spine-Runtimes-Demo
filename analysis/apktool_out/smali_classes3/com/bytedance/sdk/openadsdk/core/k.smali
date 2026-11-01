.class public Lcom/bytedance/sdk/openadsdk/core/k;
.super Ljava/lang/Object;


# instance fields
.field private bl:Landroid/app/Activity;

.field private cd:Lcom/bytedance/sdk/component/utils/i;

.field private volatile d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

.field private final dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private volatile e:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private f:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field private fw:I

.field private gh:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

.field private h:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private volatile i:Z

.field private ia:J

.field private ig:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

.field private iw:Ljava/lang/String;

.field private ji:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private jy:Landroid/view/View;

.field private k:Landroid/view/View;

.field private kk:Ljava/lang/Double;

.field private volatile kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

.field private le:Landroid/view/View;

.field private mn:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field private mp:Landroid/view/ViewGroup;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile op:Z

.field private final ox:Landroid/content/Context;

.field private p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private volatile r:J

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private volatile wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/d/q;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->s:Ljava/util/List;

    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kk:Ljava/lang/Double;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->no:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->fw:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->r:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->op:Z

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    return-void
.end method

.method public static synthetic cd(Lcom/bytedance/sdk/openadsdk/core/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Z

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/k;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->r:J

    return-wide p1
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    const-string v4, ""

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/Map;

    const-string v3, "tag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    const-string v2, "shake_compat"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/k;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ia:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object p1
.end method

.method private dq(Landroid/view/ViewGroup;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "onPause error:"

    const-string v2, "ShakeUtils"

    const-string v3, "click_listener"

    const-string v4, "shake_compat"

    const-string v5, "tag"

    if-eqz v0, :cond_1

    invoke-static {v5, v4}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ji:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget v3, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {v0, v3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(ILjava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Landroid/view/View;

    return-void

    :cond_1
    new-instance v0, Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/k$5;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/k$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ji:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    sget v3, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {v0, v3, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(ILjava/lang/String;)V

    :goto_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Landroid/view/View;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;)V

    const/4 v0, 0x3

    if-eq p6, v0, :cond_0

    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "click_type"

    invoke-virtual {p6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/d;->d(Landroid/view/View;)V

    const-class p2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    invoke-virtual {p3, p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/k$4;

    invoke-direct {p2, p0, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/k$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->i:Z

    return p1
.end method

.method public static synthetic f(Lcom/bytedance/sdk/openadsdk/core/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->iw()V

    return-void
.end method

.method public static synthetic fw(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/sdk/openadsdk/core/k;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/sdk/openadsdk/core/k;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->r:J

    return-wide v0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/openadsdk/core/k;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ia:J

    return-wide v0
.end method

.method public static synthetic ig(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->mn()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private iw()V
    .locals 6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->s()Lcom/bytedance/sdk/openadsdk/core/r/no;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/no;->d()F

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/no;->ox()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bytedance/sdk/component/utils/i;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->s()Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/bytedance/sdk/component/utils/i;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hm()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/i;->ox(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->us()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(F)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/i;->dq(I)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/k$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/k$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;FF)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/utils/i;->dq(Lcom/bytedance/sdk/component/utils/i$dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/openadsdk/core/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->p()V

    return-void
.end method

.method public static synthetic jy(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/f/d/d/q;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/openadsdk/core/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->ox()V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    return-object p0
.end method

.method private mn()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->s:Ljava/util/List;

    const-string v2, "alpha"

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v5, "image_view"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const-string v5, "root_view"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v1, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v1, "video_view"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static synthetic mp(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kk:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->no:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private ox(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-object p0
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->op:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->p()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->op:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k$1;

    const-string v1, "feed_register_download"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    return-object p0
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ji:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->gh:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public static synthetic q(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ig:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->q:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/k;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->bl:Landroid/app/Activity;

    return-object p0
.end method

.method private s()Lcom/bytedance/sdk/openadsdk/core/r/no;
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->fw:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->pq()Lcom/bytedance/sdk/openadsdk/core/r/no;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/no;->dq()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->le:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/k$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/k$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->cd:Lcom/bytedance/sdk/component/utils/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V

    :cond_4
    return-void
.end method

.method public d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_0
    return-void
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    return-object v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->fw:I

    return-void
.end method

.method public dq(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->bl:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->d:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mn:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->d(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v7, p7

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mn:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->q:Ljava/lang/ref/WeakReference;

    move-object/from16 v10, p6

    iput-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/k;->jy:Landroid/view/View;

    move-object/from16 v11, p8

    iput-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v4, v3, v5, v6, v8}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ji:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->mp:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->jy:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/k;->f:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    const/4 v9, 0x3

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/ViewGroup;)V

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->vb()I

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0x3e8

    :goto_0
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/k$2;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    invoke-direct {v5, p0, v6, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/k$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Landroid/content/Context;Landroid/view/View;I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v12, v5

    goto :goto_1

    :cond_1
    move-object v12, v4

    :goto_1
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq()V

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefClickViews(Ljava/util/List;)V

    invoke-virtual {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    invoke-virtual {v12, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefDirectDownloadViews(Ljava/util/List;)V

    iput-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/k;->le:Landroid/view/View;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->s:Ljava/util/List;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p2, v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v7, p7

    move-object v6, v10

    move-object v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p2, v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const/4 v9, 0x1

    move-object v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/o;->dq(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ox:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/k;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/k;->iw:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p2, v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(I)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    const/4 v9, 0x2

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/d/d;Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;I)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p7

    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {v12, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v12, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->h:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {v12, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/k$3;

    invoke-direct {p1, p0, v7}, Lcom/bytedance/sdk/openadsdk/core/k$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    invoke-virtual {v12, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V

    const/4 p1, 0x1

    invoke-virtual {v12, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/k;->ox()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/k$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/k$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox$dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kx:Lcom/bytedance/sdk/openadsdk/core/d/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/d/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->wp:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k;->e:Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/d/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->gh:Lcom/bytedance/sdk/openadsdk/core/o/d/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->ir:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->kk:Ljava/lang/Double;

    return-void
.end method

.method public dq(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method
