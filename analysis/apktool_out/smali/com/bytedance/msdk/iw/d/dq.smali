.class public Lcom/bytedance/msdk/iw/d/dq;
.super Ljava/lang/Object;


# static fields
.field private static iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/iw/dq/ox;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Lcom/bytedance/msdk/core/iw/dq;

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final dq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ia:Z

.field private mn:Z

.field protected ox:Lcom/bytedance/msdk/core/iw/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/iw/dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/iw/dq;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/iw/d/dq;->p:Lcom/bytedance/msdk/core/iw/dq;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/iw/d/dq;->s:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/iw/d/dq;->iw:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/iw/d/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/msdk/iw/d/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private cd()V
    .locals 1

    const-string v0, "gdt"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public static d()Lcom/bytedance/msdk/iw/d/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq/dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/iw/d/dq/dq;-><init>()V

    return-object v0
.end method

.method public static d(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->p:Lcom/bytedance/msdk/core/iw/dq;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/msdk/core/iw/dq;->d(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pangle"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "mintegral"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "klevin"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/dq/s/iw;->s()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->s()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/bytedance/msdk/iw/d/dq$7;

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/iw/d/dq$7;-><init>(Lcom/bytedance/msdk/iw/dq/ox;)V

    invoke-static {p0}, Lcom/bytedance/msdk/dq/s/iw;->d(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->ia()V

    return-void
.end method

.method public static dq()I
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->p:Lcom/bytedance/msdk/core/iw/dq;

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/iw/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->p:Lcom/bytedance/msdk/core/iw/dq;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/msdk/core/iw/dq;->dq(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/iw/d/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/iw/d/dq;->cd()V

    return-void
.end method

.method public static dq(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->s:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic fw()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->s:Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;
    .locals 4

    const-class v0, Lcom/bytedance/msdk/iw/d/dq;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    sget-object v1, Lcom/bytedance/msdk/iw/d/dq;->iw:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/iw/dq/ox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "pangle_custom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "mintegral"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v2, "unity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_3
    const-string v2, "baidu"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "admob"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "gdt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "ks"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v2, "sigmob"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_8
    const-string v2, "pangle"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_9
    const-string v2, "klevin"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-instance v1, Lcom/bytedance/msdk/iw/dq/mp;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/mp;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance v1, Lcom/bytedance/msdk/iw/dq/ig;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/ig;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v1, Lcom/bytedance/msdk/iw/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/dq;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v1, Lcom/bytedance/msdk/iw/dq/ia;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/ia;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v1, Lcom/bytedance/msdk/iw/dq/iw;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/iw;-><init>()V

    goto :goto_2

    :pswitch_5
    new-instance v1, Lcom/bytedance/msdk/iw/dq/mn;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/mn;-><init>()V

    goto :goto_2

    :pswitch_6
    new-instance v1, Lcom/bytedance/msdk/iw/dq/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/d;-><init>()V

    goto :goto_2

    :pswitch_7
    new-instance v1, Lcom/bytedance/msdk/iw/dq/s;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/dq/s;-><init>()V

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/bytedance/msdk/iw/dq/o;->kk()Lcom/bytedance/msdk/iw/dq/o;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    sget-object v2, Lcom/bytedance/msdk/iw/d/dq;->iw:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x4347d989 -> :sswitch_9
        -0x3b56c19d -> :sswitch_8
        -0x35ca9371 -> :sswitch_7
        0xd68 -> :sswitch_6
        0x18f37 -> :sswitch_5
        0x58603fd -> :sswitch_4
        0x592ae1b -> :sswitch_3
        0x6a45775 -> :sswitch_2
        0x431e1919 -> :sswitch_1
        0x612fe4cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized ox()V
    .locals 2

    const-class v0, Lcom/bytedance/msdk/iw/d/dq;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/bytedance/msdk/iw/d/dq$1;

    invoke-direct {v1}, Lcom/bytedance/msdk/iw/d/dq$1;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static p()Lcom/bytedance/msdk/core/iw/dq;
    .locals 1

    sget-object v0, Lcom/bytedance/msdk/iw/d/dq;->p:Lcom/bytedance/msdk/core/iw/dq;

    return-object v0
.end method

.method public static q()V
    .locals 1

    const-string v0, "unity"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ig()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->no()V

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/iw/d/dq$3;-><init>(Lcom/bytedance/msdk/iw/d/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/bytedance/msdk/iw/d/dq$2;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/iw/d/dq$2;-><init>(Lcom/bytedance/msdk/iw/d/dq;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/content/Context;ZZLcom/bytedance/msdk/core/iw/d;)V
    .locals 1

    iput-object p4, p0, Lcom/bytedance/msdk/iw/d/dq;->ox:Lcom/bytedance/msdk/core/iw/d;

    iget-object p4, p0, Lcom/bytedance/msdk/iw/d/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p4, p0, Lcom/bytedance/msdk/iw/d/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean p2, p0, Lcom/bytedance/msdk/iw/d/dq;->mn:Z

    iput-boolean p3, p0, Lcom/bytedance/msdk/iw/d/dq;->ia:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/iw/d/dq;->ox(Landroid/content/Context;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/iw/d/dq;->mn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/msdk/iw/d/dq;->ia:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/iw/d/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/iw/dq;->dq()V

    invoke-static {}, Lcom/bytedance/msdk/iw/d/dq;->ox()V

    :cond_0
    return-void
.end method

.method public ia()V
    .locals 1

    const-string v0, "baidu"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public ig()V
    .locals 1

    const-string v0, "sigmob"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 1

    const-string v0, "klevin"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public jy()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/d/dq$6;-><init>(Lcom/bytedance/msdk/iw/d/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public kk()V
    .locals 1

    const-string v0, "pangle"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public mn()V
    .locals 1

    const-string v0, "mintegral"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public mp()V
    .locals 1

    const-string v0, "ks"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public no()V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq$4;

    const-string v1, "load dex plugin"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/iw/d/dq$4;-><init>(Lcom/bytedance/msdk/iw/d/dq;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/iw/d/dq;->cd()V

    return-void
.end method

.method public o()V
    .locals 1

    const-string v0, "admob"

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/iw/dq/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/iw/dq/ox;->iw()V

    :cond_0
    return-void
.end method

.method public ox(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/iw/d/dq$5;-><init>(Lcom/bytedance/msdk/iw/d/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method
