.class public final Lg/fag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static a:Lg/fag;

.field public static final b:Lg/ecp;

.field public static c:Landroid/util/Printer;


# instance fields
.field public d:Z

.field public final e:Z

.field public f:J

.field public final g:Landroid/util/SparseArray;

.field public final h:Ljava/util/LinkedList;

.field public final i:Landroid/os/Handler;

.field public j:I

.field public final k:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/ecp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fag;->b:Lg/ecp;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/fag;->j:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lg/fag;->g:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lg/fag;->h:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lg/fag;->k:Ljava/util/LinkedList;

    iput-boolean v0, p0, Lg/fag;->e:Z

    invoke-static {}, Lg/gs;->f()Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lg/fag;->i:Landroid/os/Handler;

    iget-boolean v0, p0, Lg/fag;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fag;->e:Z

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.Looper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLogging"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lg/eca;->c:Landroid/content/Context;

    move-object v0, v1

    :goto_0
    sput-object v0, Lg/fag;->c:Landroid/util/Printer;

    sget-object v2, Lg/fag;->b:Lg/ecp;

    if-ne v0, v2, :cond_1

    sput-object v1, Lg/fag;->c:Landroid/util/Printer;

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public static l()Lg/fag;
    .locals 2

    sget-object v0, Lg/fag;->a:Lg/fag;

    if-nez v0, :cond_1

    const-class v0, Lg/fag;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/fag;->a:Lg/fag;

    if-nez v1, :cond_0

    new-instance v1, Lg/fag;

    invoke-direct {v1}, Lg/fag;-><init>()V

    sput-object v1, Lg/fag;->a:Lg/fag;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lg/fag;->a:Lg/fag;

    return-object v0
.end method

.method public static m(Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lg/eca;->c:Landroid/content/Context;

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget-object v0, p0, Lg/fag;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    iget-object v4, p0, Lg/fag;->g:Landroid/util/SparseArray;

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget p1, p0, Lg/fag;->j:I

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lg/fag;->m(Ljava/util/List;)V

    iget p1, p0, Lg/fag;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/fag;->j:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7fffffff

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lg/fag;->m(Ljava/util/List;)V

    :cond_3
    return v2

    :cond_4
    iput v1, p0, Lg/fag;->j:I

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lg/fag;->m(Ljava/util/List;)V

    iget p1, p0, Lg/fag;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lg/fag;->j:I

    :cond_5
    :goto_0
    iget p1, p0, Lg/fag;->j:I

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_6

    return v2

    :cond_6
    iget p1, p0, Lg/fag;->j:I

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    int-to-long v4, p1

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-eqz p1, :cond_7

    iget-wide v6, p0, Lg/fag;->f:J

    add-long/2addr v6, v4

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    return v2
.end method

.method public final declared-synchronized n(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Printer;

    invoke-interface {v0, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catch_0
    :try_start_2
    sget-object p1, Lg/eca;->c:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public final o(JLjava/lang/Runnable;IJ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    iget-object v1, p0, Lg/fag;->g:Landroid/util/SparseArray;

    long-to-int v2, p1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v3, p0, Lg/fag;->g:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lg/fag;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lg/fag;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_3
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_4
    return-void
.end method
