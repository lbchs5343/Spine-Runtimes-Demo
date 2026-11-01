.class public final Lcom/bytedance/sdk/openadsdk/core/ir/ir;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final dq:I

.field private static final ox:Ljava/lang/Object;

.field private static volatile p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_shake_tag_key"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/r;->iw(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->ox:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p()V

    return-void
.end method

.method public static synthetic dq()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->ox()V

    return-void
.end method

.method public static dq(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/ir$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir$2;-><init>(ILjava/lang/String;)V

    const-string p0, "stats_shake_tag_key"

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method private static dq(Landroid/view/ViewGroup;Z)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_shake_efficient"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "TTShakeChecker"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static dq(Ljava/lang/ref/WeakReference;FFJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;FFJ)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(FFJ)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->ox:Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    if-eqz p0, :cond_3

    :goto_0
    return-void

    :cond_3
    const-class p0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;

    monitor-enter p0

    :try_start_0
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    if-eqz p1, :cond_4

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ir/ir$3;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ir$3;-><init>()V

    const-wide/16 p3, 0x32

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static dq(Ljava/lang/ref/WeakReference;Lcom/bytedance/sdk/openadsdk/core/d/ox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/ox;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/ViewGroup;Z)V

    return-void

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    if-eqz p1, :cond_2

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/ViewGroup;Z)V

    return-void

    :cond_2
    const-class p1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/ViewGroup;Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->iw()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ir$1;-><init>()V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method private static dq(FFJ)Z
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpg-float v3, p0, v0

    if-gez v3, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    const/high16 v0, 0x4f000000

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_3

    return v2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    long-to-float p2, v3

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_5

    cmpl-float p0, p2, p1

    if-lez p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public static dq(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/util/Map;

    const-string v1, "is_shake_efficient"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static ox()V
    .locals 13

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    const v4, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    div-int/lit8 v9, v1, 0x2

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v9, :cond_4

    sub-int v11, v9, v10

    goto :goto_1

    :cond_4
    const v11, 0x7fffffff

    :goto_1
    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v8, v9, :cond_5

    sub-int v12, v8, v9

    goto :goto_2

    :cond_5
    const v12, 0x7fffffff

    :goto_2
    if-le v10, v9, :cond_6

    if-ge v8, v9, :cond_6

    move-object v5, v7

    goto :goto_3

    :cond_6
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v8, v4, :cond_7

    move-object v5, v7

    move v4, v8

    goto :goto_0

    :cond_7
    if-ne v8, v4, :cond_1

    move-object v6, v7

    goto :goto_0

    :cond_8
    :goto_3
    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v6, v5

    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/openadsdk/core/d/ox;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/ox;

    :cond_b
    const/4 v1, 0x1

    invoke-static {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/d/ox;->dq()V

    :cond_c
    :goto_5
    return-void
.end method

.method private static p()V
    .locals 14

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move-object v5, v3

    move-object v6, v5

    const v4, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v8, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    div-int/lit8 v10, v1, 0x2

    iget v11, v9, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v10, :cond_4

    sub-int v12, v10, v11

    goto :goto_1

    :cond_4
    const v12, 0x7fffffff

    :goto_1
    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_5

    sub-int v13, v9, v10

    goto :goto_2

    :cond_5
    const v13, 0x7fffffff

    :goto_2
    if-le v11, v10, :cond_6

    if-ge v9, v10, :cond_6

    move-object v5, v7

    goto :goto_3

    :cond_6
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v8, v4, :cond_7

    move-object v5, v7

    move v4, v8

    goto :goto_0

    :cond_7
    if-ne v8, v4, :cond_1

    move-object v6, v7

    goto :goto_0

    :cond_8
    :goto_3
    if-nez v5, :cond_9

    :goto_4
    return-void

    :cond_9
    if-eqz v6, :cond_a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v6, v5

    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_b

    check-cast v2, Ljava/util/Map;

    const-string v4, "click_listener"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    if-eqz v4, :cond_b

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    goto :goto_7

    :cond_b
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "click_type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq()V

    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;->onClick(Landroid/view/View;)V

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->d:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->p:Z

    return-void
.end method
