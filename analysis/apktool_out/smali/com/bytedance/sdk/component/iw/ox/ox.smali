.class public Lcom/bytedance/sdk/component/iw/ox/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/kk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/iw/ox/ox$dq;,
        Lcom/bytedance/sdk/component/iw/ox/ox$d;
    }
.end annotation


# instance fields
.field private bl:Ljava/util/concurrent/ExecutorService;

.field private cd:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/iw/p/kk;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field dq:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Lcom/bytedance/sdk/component/iw/d;

.field private f:Lcom/bytedance/sdk/component/iw/r;

.field private fw:I

.field private final gh:Landroid/os/Handler;

.field private h:I

.field private i:Lcom/bytedance/sdk/component/iw/mn;

.field private ia:I

.field private ig:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private iw:Landroid/widget/ImageView$ScaleType;

.field private ji:Z

.field private jy:Z

.field private k:Lcom/bytedance/sdk/component/iw/ox/iw;

.field private kk:I

.field private kx:I

.field private le:I

.field private mn:Landroid/graphics/Bitmap$Config;

.field private volatile mp:Z

.field private n:Z

.field private no:I

.field private o:Lcom/bytedance/sdk/component/iw/ia;

.field private op:Lcom/bytedance/sdk/component/iw/q;

.field private ox:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Lcom/bytedance/sdk/component/iw/f;

.field private wp:Lcom/bytedance/sdk/component/iw/ox/dq;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/iw/ox/ox$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->cd:Ljava/util/Queue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->gh:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->r:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->dq(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->d:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/ox$dq;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->d(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/iw/ox/ox$dq;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox;Lcom/bytedance/sdk/component/iw/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->s:Lcom/bytedance/sdk/component/iw/f;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->ox(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ig:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->p(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->iw:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->s(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mn:Landroid/graphics/Bitmap$Config;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->iw(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ia:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->mn(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->kk:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->ia(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->no:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->kk(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->fw:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->o(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/r;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->f:Lcom/bytedance/sdk/component/iw/r;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->e:Lcom/bytedance/sdk/component/iw/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->no(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->no(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->no(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->ig(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->q:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->mp(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->jy:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->q(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/ox/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->k:Lcom/bytedance/sdk/component/iw/ox/iw;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->jy(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/ia;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->o:Lcom/bytedance/sdk/component/iw/ia;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->f(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->h:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->fw(Lcom/bytedance/sdk/component/iw/ox/ox$d;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->kx:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->cd(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->bl:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->gh(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ji:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->r(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->n:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->i(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->op:Lcom/bytedance/sdk/component/iw/q;

    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->cd:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/iw/p/ox;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/iw/ox/ox$d;Lcom/bytedance/sdk/component/iw/ox/ox$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/ox;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox$d;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/iw/ox/ox;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->cd:Ljava/util/Queue;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/d;
    .locals 1

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->le(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->le(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->k(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox$d;->k(Lcom/bytedance/sdk/component/iw/ox/ox$d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->dq(Ljava/io/File;)Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/iw/ox/dq/dq;->mn()Lcom/bytedance/sdk/component/iw/d;

    move-result-object p1

    return-object p1
.end method

.method private dq(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/iw/p/ia;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/p/ia;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/iw/p/ia;->dq(Lcom/bytedance/sdk/component/iw/ox/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->cd:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/iw/ox/ox;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/iw/ox/ox;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/iw/ox/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mp:Z

    return p0
.end method

.method private e()Lcom/bytedance/sdk/component/iw/kk;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->k:Lcom/bytedance/sdk/component/iw/ox/iw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->s:Lcom/bytedance/sdk/component/iw/f;

    if-eqz v0, :cond_4

    const-string v2, "not init !"

    const/16 v3, 0x3ed

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/iw/f;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->bl:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/iw/ox/iw;->iw()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/iw/ox/ox$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/iw/ox/ox$1;-><init>(Lcom/bytedance/sdk/component/iw/ox/ox;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->n:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->bl:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->dq:Ljava/util/concurrent/Future;

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->dq:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p0

    :goto_0
    const-string v1, "ImageRequest"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/ia;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->o:Lcom/bytedance/sdk/component/iw/ia;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/sdk/component/iw/ox/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->no:I

    return p0
.end method

.method public static synthetic kk(Lcom/bytedance/sdk/component/iw/ox/ox;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->fw:I

    return p0
.end method

.method public static synthetic mn(Lcom/bytedance/sdk/component/iw/ox/ox;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->gh:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/sdk/component/iw/ox/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ox:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/r;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->f:Lcom/bytedance/sdk/component/iw/r;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/component/iw/ox/ox;)Lcom/bytedance/sdk/component/iw/kk;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/iw/ox/ox;->e()Lcom/bytedance/sdk/component/iw/kk;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/component/iw/ox/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ig:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public cd()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->le:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x2
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ig:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ig:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ox:Ljava/lang/String;

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->le:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->i:Lcom/bytedance/sdk/component/iw/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->wp:Lcom/bytedance/sdk/component/iw/ox/dq;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->p:Ljava/lang/String;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->r:Z

    return-void
.end method

.method public dq()Z
    .locals 2
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x1
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mp:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->dq:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public dq(Lcom/bytedance/sdk/component/iw/p/kk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mp:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->cd:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->r:Z

    return v0
.end method

.method public fw()Lcom/bytedance/sdk/component/iw/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->i:Lcom/bytedance/sdk/component/iw/mn;

    return-object v0
.end method

.method public gh()Lcom/bytedance/sdk/component/iw/ox/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->wp:Lcom/bytedance/sdk/component/iw/ox/dq;

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/component/iw/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->e:Lcom/bytedance/sdk/component/iw/d;

    return-object v0
.end method

.method public ia()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mn:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public ig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->mn:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x6
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->p:Ljava/lang/String;

    return-object v0
.end method

.method public jy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->jy:Z

    return v0
.end method

.method public k()Lcom/bytedance/sdk/component/iw/q;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->op:Lcom/bytedance/sdk/component/iw/q;

    return-object v0
.end method

.method public kk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->kx:I

    return v0
.end method

.method public le()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ji:Z

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x7
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public mp()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->no:I

    return v0
.end method

.method public no()Lcom/bytedance/sdk/component/iw/f;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->s:Lcom/bytedance/sdk/component/iw/f;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->h:I

    return v0
.end method

.method public ox()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x3
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->ia:I

    return v0
.end method

.method public p()I
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x4
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->kk:I

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->q:Z

    return v0
.end method

.method public r()Lcom/bytedance/sdk/component/iw/ox/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->k:Lcom/bytedance/sdk/component/iw/ox/iw;

    return-object v0
.end method

.method public s()Landroid/widget/ImageView$ScaleType;
    .locals 1
    .annotation runtime Lcom/bytedance/sdk/openadsdk/ats/ATSMethod;
        value = 0x5
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/ox;->iw:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public wp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/iw/ox/ox;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
