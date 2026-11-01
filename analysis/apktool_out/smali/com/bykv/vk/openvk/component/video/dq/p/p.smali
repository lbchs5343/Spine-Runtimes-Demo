.class public Lcom/bykv/vk/openvk/component/video/dq/p/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/dq;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;
    }
.end annotation


# static fields
.field private static final wp:Landroid/util/SparseIntArray;


# instance fields
.field private bl:Ljava/util/concurrent/CountDownLatch;

.field private final c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

.field private cd:J

.field private volatile ce:Z

.field private d:Landroid/view/SurfaceHolder;

.field private dq:Landroid/graphics/SurfaceTexture;

.field private e:Z

.field private er:J

.field private f:J

.field private fw:J

.field private gh:J

.field private h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private ia:Z

.field private ig:J

.field private ir:Landroid/view/Surface;

.field private volatile iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

.field private j:Z

.field private ji:Z

.field private jy:J

.field private k:Ljava/lang/String;

.field private kk:Z

.field private final kx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/component/video/api/dq$dq;",
            ">;>;"
        }
    .end annotation
.end field

.field private le:I

.field private final mn:Z

.field private volatile mp:Lcom/bytedance/sdk/component/utils/e;

.field private volatile n:I

.field private volatile no:I

.field private o:Z

.field private op:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private final u:Ljava/lang/Runnable;

.field private wn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wp:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mn:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia:Z

    const/16 v2, 0xc9

    iput v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->gh:J

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    const-string v4, "0"

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k:Ljava/lang/String;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    const/16 v4, 0xc8

    iput v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ir:Landroid/view/Surface;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    const-string v0, "SSMediaPlayerWrapper"

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mn:Z

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia:Z

    const/16 v2, 0xc9

    iput v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->gh:J

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    const-string v4, "0"

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k:Ljava/lang/String;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    const/16 v4, 0xc8

    iput v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ir:Landroid/view/Surface;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    iput-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    const-string v0, "mda_"

    invoke-static {v0, p1}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/String;)V

    return-void
.end method

.method private bl()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$7;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    return-wide p1
.end method

.method private d(II)V
    .locals 13

    const/16 p2, 0x2bd

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "bufferCount = "

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-string v5, "CSJ_VIDEO_MEDIA"

    if-ne p1, p2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    iget p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {p2, p0, v4, v3, v3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;III)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v2, p2, v3

    aput-object p1, p2, v1

    invoke-static {v5, p2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 p2, 0x2be

    const/4 v6, 0x3

    if-ne p1, p2, :cond_6

    iget-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-lez v9, :cond_3

    iget-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    sub-long/2addr v9, v11

    add-long/2addr v9, p1

    iput-wide v9, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    iput-wide v7, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->er:J

    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {p2, p0, v4}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;I)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-wide v7, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    aput-object p1, v4, v1

    const-string p1, " mBufferTotalTime = "

    aput-object p1, v4, v0

    aput-object p2, v4, v6

    invoke-static {v5, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    if-eqz p2, :cond_7

    if-ne p1, v6, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hasPendingPauseCommand:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op()V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji()V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Z)V

    const-string p1, "onRenderStart"

    invoke-static {v5, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private d(J)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;->dq(J)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->o:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;I)I
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    return p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    return-wide p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bykv/vk/openvk/component/video/dq/p/ox;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bytedance/sdk/component/utils/e;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k:Ljava/lang/String;

    return-object p1
.end method

.method private dq(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;JJ)V

    goto :goto_1

    :cond_0
    move-wide v4, p1

    move-wide v6, p3

    :goto_1
    move-wide p1, v4

    move-wide p3, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(II)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(JJ)V

    return-void
.end method

.method private dq(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v0, "CSJ_VIDEO_MEDIA"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "csj_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k()V

    return-void
.end method

.method private dq(II)Z
    .locals 2

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    return p1
.end method

.method private e()V
    .locals 2

    const-string v0, "CSJ_VIDEO_MEDIA"

    const-string v1, "releaseMediaPlayer: "

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->ig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;)V

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->no()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wp:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static synthetic ia(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bytedance/sdk/component/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    return-object p0
.end method

.method private ir()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic iw(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    return-wide v0
.end method

.method private ji()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->gh:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v3, p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s:Z

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic kk(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    return-object p0
.end method

.method private kx()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$6;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private le()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    iput-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    return-void
.end method

.method public static synthetic mn(Lcom/bykv/vk/openvk/component/video/dq/p/p;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    return p0
.end method

.method private n()V
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kk:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kk:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kk:Z

    return-void
.end method

.method public static synthetic no(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k()V

    return-void
.end method

.method public static synthetic o(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    return-wide v0
.end method

.method private op()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    return-wide p1
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    return p0
.end method

.method public static synthetic ox(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    return p1
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/p/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    return-wide v0
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    return-wide p1
.end method

.method public static synthetic p(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    return p1
.end method

.method public static synthetic s(Lcom/bykv/vk/openvk/component/video/dq/p/p;)I
    .locals 0

    iget p0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    return p0
.end method

.method private wp()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$14;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$14;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cd()J
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->cd:J

    return-wide v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$11;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$11;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    .locals 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p1, 0xcd

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->jy()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/api/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/d;->dq(F)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const-string v0, "CSJ_VIDEO_MEDIA"

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl()V

    goto :goto_1

    :cond_2
    const-string p1, "onPrepared op_Start"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/16 v2, 0x64

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    sget-object p1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wp:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->delete(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->r:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->r:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->r:Z

    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public d(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->e:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$9;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Lcom/bykv/vk/openvk/component/video/dq/p/ox;II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "what,extra:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSJ_VIDEO_MEDIA"

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_2

    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(II)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v2, p0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(II)V

    return v1
.end method

.method public dq()V
    .locals 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->c:Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$dq;->dq(Z)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(J)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public dq(F)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/d;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/api/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/d;->dq(F)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p:I

    return-void
.end method

.method public dq(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/p/p$2;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;J)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Z)V

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$3;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$3;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    iget v3, v0, Landroid/os/Message;->what:I

    iget-object v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eqz v4, :cond_14

    iget v4, v0, Landroid/os/Message;->what:I

    const-string v7, "CSJ_VIDEO_MEDIA"

    const/16 v8, 0xcd

    const/16 v9, 0xca

    const/16 v10, 0xcb

    const/16 v11, 0xc9

    const-wide/16 v12, 0x1

    const/16 v15, 0xd1

    const/16 v5, 0xce

    const/4 v6, 0x1

    const/16 v14, 0xcf

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    :try_start_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ir:Landroid/view/Surface;

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ir:Landroid/view/Surface;

    invoke-interface {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Landroid/view/Surface;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v6}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->d(Z)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op()V

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Landroid/view/SurfaceHolder;)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, v6}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->d(Z)V

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le()V

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v4, v11, :cond_0

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v4, v10, :cond_f

    :cond_0
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    iget v2, v0, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d:I

    const/16 v3, 0x17

    if-ne v2, v6, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_4

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->f()Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Ljava/lang/String;)V

    :goto_0
    iput v9, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_6

    :pswitch_4
    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v4, v5, :cond_7

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v4, v14, :cond_7

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v4, v15, :cond_f

    :cond_7
    :try_start_2
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p:I

    invoke-interface {v2, v3, v4, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_6

    :pswitch_5
    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v8, :cond_8

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v5, :cond_8

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v4, 0xd0

    if-eq v0, v4, :cond_8

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v14, :cond_8

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v0, v15, :cond_f

    :cond_8
    :try_start_3
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->iw()V

    const/16 v4, 0xd0

    iput v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_6

    :pswitch_6
    const/16 v4, 0xd0

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v9, :cond_9

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v0, v4, :cond_f

    :cond_9
    :try_start_4
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->ia()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    const-string v2, "OP_PREPARE_ASYNC error: "

    invoke-static {v7, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :pswitch_7
    :try_start_5
    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-string v2, "OP_RELEASE error: "

    invoke-static {v7, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->ox(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_2

    :cond_b
    iput v10, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    goto/16 :goto_6

    :pswitch_8
    :try_start_6
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->ig()V

    iput v11, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_6

    :pswitch_9
    iget-boolean v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    if-eqz v0, :cond_c

    iget-wide v7, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    iget-wide v9, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    const-wide/high16 v7, -0x8000000000000000L

    iput-wide v7, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->f:J

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v4, v5, :cond_d

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v4, v14, :cond_d

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v4, v15, :cond_f

    :cond_d
    :try_start_7
    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->mn()V

    iput v14, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    iput-boolean v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :pswitch_a
    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v8, :cond_12

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-eq v0, v14, :cond_12

    iget v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    if-ne v0, v15, :cond_f

    goto :goto_5

    :cond_f
    const/16 v0, 0xc8

    iput v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    iget-boolean v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia:Z

    if-nez v0, :cond_14

    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    const/16 v4, 0x134

    invoke-direct {v0, v4, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v3, v1, v0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    goto :goto_4

    :cond_11
    iput-boolean v6, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ia:Z

    return-void

    :cond_12
    :goto_5
    :try_start_8
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->s()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->gh:J

    iput v5, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    iget-wide v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    if-lez v0, :cond_13

    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iget-wide v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    iget v4, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->p:I

    invoke-interface {v0, v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(JI)V

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    :cond_13
    iget-object v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    :cond_14
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dq(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Z)V

    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$4;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/dq$dq;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    :cond_2
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$5;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    .locals 2

    const/16 p1, 0xd1

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    sget-object p1, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wp:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->le:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;I)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {v0, p0, p2}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->d(Lcom/bykv/vk/openvk/component/video/api/dq;I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {p4, p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dq(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-nez v0, :cond_1

    const-string p1, "CSJ_VIDEO_MEDIA"

    const-string v0, "quietPlay set opHandler is null"

    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/p$8;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/p$8;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dq(ZJZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->k()V

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ji:Z

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    invoke-virtual {p0, p4}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Z)V

    if-eqz p1, :cond_1

    iput-wide p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ig:J

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wp()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(J)V

    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    iget p3, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->n:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->bl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;II)Z
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "what="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSJ_VIDEO_MEDIA"

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h()V

    const/16 p1, 0xc8

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx()V

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p1, Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/component/video/api/ox/d;-><init>(II)V

    iget-object p2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    invoke-interface {p3, p0, p1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public f()J
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->fw:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->wn:J

    return-wide v0
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ox:I

    return v0
.end method

.method public gh()J
    .locals 4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v3, 0xce

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v3, 0xcf

    if-ne v0, v3, :cond_2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->kk()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ia()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public ig()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s:Z

    return v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->o:Z

    return v0
.end method

.method public kk()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public mp()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public no()I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->mp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public ox()V
    .locals 2

    const-string v0, "CSJ_VIDEO_MEDIA"

    const-string v1, "pause: from outer"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->j:Z

    const/16 v1, 0x65

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$12;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$12;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->s:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->h:Lcom/bykv/vk/openvk/component/video/api/ox/p;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$13;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$13;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public ox(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    .locals 2

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ox(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->s(Z)V

    return-void
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/dq/p/p$15;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p$15;-><init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ce:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xcb

    return v0

    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->no:I

    return v0
.end method

.method public s()V
    .locals 2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->jy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->o:Z

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->ir()V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p;->mp:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx()V

    return-void

    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->kx()V

    :cond_2
    :goto_0
    return-void
.end method
