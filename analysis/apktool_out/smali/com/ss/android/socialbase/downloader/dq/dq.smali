.class public Lcom/ss/android/socialbase/downloader/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/dq/dq$dq;,
        Lcom/ss/android/socialbase/downloader/dq/dq$ox;,
        Lcom/ss/android/socialbase/downloader/dq/dq$d;
    }
.end annotation


# instance fields
.field private d:Lcom/ss/android/socialbase/downloader/dq/dq$ox;

.field private dq:Landroid/app/Application;

.field private final ia:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private volatile iw:I

.field private volatile mn:Z

.field private final ox:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/dq/dq$dq;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->iw:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->mn:Z

    new-instance v0, Lcom/ss/android/socialbase/downloader/dq/dq$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/dq/dq$1;-><init>(Lcom/ss/android/socialbase/downloader/dq/dq;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ia:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/dq/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/ss/android/socialbase/downloader/dq/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->s()V

    return-void
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/dq/dq;)I
    .locals 0

    iget p0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->p:I

    return p0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/dq/dq;I)I
    .locals 0

    iput p1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->p:I

    return p1
.end method

.method public static dq()Lcom/ss/android/socialbase/downloader/dq/dq;
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/dq/dq$d;->dq()Lcom/ss/android/socialbase/downloader/dq/dq;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/dq/dq;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->s:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic dq(Lcom/ss/android/socialbase/downloader/dq/dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->mn:Z

    return p1
.end method

.method private iw()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->iw:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->p()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    check-cast v3, Lcom/ss/android/socialbase/downloader/dq/dq$dq;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/dq/dq$dq;->ox()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mn()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->dq:Landroid/app/Application;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/kk/iw;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static synthetic ox(Lcom/ss/android/socialbase/downloader/dq/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->iw()V

    return-void
.end method

.method private p()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private s()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->iw:I

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->p()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lcom/ss/android/socialbase/downloader/dq/dq$dq;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/dq/dq$dq;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->iw:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->mn()Z

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->iw:I

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->dq:Landroid/app/Application;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->dq:Landroid/app/Application;

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->dq:Landroid/app/Application;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ia:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/dq/dq$dq;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->ox:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dq(Lcom/ss/android/socialbase/downloader/dq/dq$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->d:Lcom/ss/android/socialbase/downloader/dq/dq$ox;

    return-void
.end method

.method public ox()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/dq/dq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/dq/dq;->mn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
