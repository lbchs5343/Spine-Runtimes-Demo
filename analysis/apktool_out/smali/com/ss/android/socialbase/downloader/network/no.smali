.class public Lcom/ss/android/socialbase/downloader/network/no;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/no$dq;
    }
.end annotation


# static fields
.field private static final dq:Ljava/lang/String; = "no"


# instance fields
.field private final d:Lcom/ss/android/socialbase/downloader/network/p;

.field private final iw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mn:I

.field private volatile ox:Z

.field private final p:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/ig;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/ig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/socialbase/downloader/network/p;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/p;-><init>(D)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->d:Lcom/ss/android/socialbase/downloader/network/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->ox:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/ss/android/socialbase/downloader/network/ig;->s:Lcom/ss/android/socialbase/downloader/network/ig;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->p:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->iw:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/no$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/no;-><init>()V

    return-void
.end method

.method private dq(D)Lcom/ss/android/socialbase/downloader/network/ig;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    sget-object p1, Lcom/ss/android/socialbase/downloader/network/ig;->s:Lcom/ss/android/socialbase/downloader/network/ig;

    return-object p1

    :cond_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    sget-object p1, Lcom/ss/android/socialbase/downloader/network/ig;->dq:Lcom/ss/android/socialbase/downloader/network/ig;

    return-object p1

    :cond_1
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    sget-object p1, Lcom/ss/android/socialbase/downloader/network/ig;->d:Lcom/ss/android/socialbase/downloader/network/ig;

    return-object p1

    :cond_2
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_3

    sget-object p1, Lcom/ss/android/socialbase/downloader/network/ig;->ox:Lcom/ss/android/socialbase/downloader/network/ig;

    return-object p1

    :cond_3
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/ig;->p:Lcom/ss/android/socialbase/downloader/network/ig;

    return-object p1
.end method

.method public static dq()Lcom/ss/android/socialbase/downloader/network/no;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/no$dq;->dq:Lcom/ss/android/socialbase/downloader/network/no;

    return-object v0
.end method

.method private ox()Z
    .locals 12

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->d:Lcom/ss/android/socialbase/downloader/network/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/ig;

    sget-object v2, Lcom/ss/android/socialbase/downloader/network/no$1;->dq:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide v2, 0x4062c00000000000L    # 150.0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    const-wide v6, 0x4081300000000000L    # 550.0

    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    const-wide v8, 0x409f400000000000L    # 2000.0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v4

    :cond_1
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    move-wide v5, v8

    goto :goto_0

    :cond_2
    move-wide v5, v6

    move-wide v2, v8

    goto :goto_0

    :cond_3
    move-wide v10, v6

    move-wide v5, v2

    move-wide v2, v10

    goto :goto_0

    :cond_4
    const-wide/16 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->d:Lcom/ss/android/socialbase/downloader/network/p;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/p;->dq()D

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v0, v7, v2

    if-lez v0, :cond_5

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v5

    cmpl-double v0, v7, v2

    if-lez v0, :cond_6

    return v4

    :cond_5
    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v5, v5, v2

    cmpg-double v0, v7, v5

    if-gez v0, :cond_6

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return v1
.end method

.method private p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->iw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/no;->iw:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/no;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public declared-synchronized d()Lcom/ss/android/socialbase/downloader/network/ig;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/no;->d:Lcom/ss/android/socialbase/downloader/network/p;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/ig;->s:Lcom/ss/android/socialbase/downloader/network/ig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/p;->dq()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/network/no;->dq(D)Lcom/ss/android/socialbase/downloader/network/ig;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/ss/android/socialbase/downloader/network/ig;->s:Lcom/ss/android/socialbase/downloader/network/ig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized dq(JJ)V
    .locals 3

    monitor-enter p0

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v0

    long-to-double v0, p3

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double p1, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_5

    const-wide/high16 p3, 0x4008000000000000L    # 3.0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/network/no;->d:Lcom/ss/android/socialbase/downloader/network/p;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/network/p;->dq(D)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/no;->d()Lcom/ss/android/socialbase/downloader/network/ig;

    move-result-object p1

    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->ox:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->mn:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->mn:I

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/no;->ox:Z

    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/no;->mn:I

    :cond_1
    iget p1, p0, Lcom/ss/android/socialbase/downloader/network/no;->mn:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/no;->ox()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/no;->ox:Z

    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/no;->mn:I

    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/network/no;->p:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/no;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->p:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_4

    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/network/no;->ox:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/no;->s:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    monitor-exit p0

    return-void
.end method
