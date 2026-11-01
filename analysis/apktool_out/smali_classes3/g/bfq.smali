.class public final Lg/bfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bsm;
.implements Lg/fxj;


# static fields
.field public static final a:Lg/ekg;


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Lg/elu;

.field public final e:Landroid/content/Context;

.field public final f:Lg/boa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/ekg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ekg;-><init>(I)V

    sput-object v0, Lg/bfq;->a:Lg/ekg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lg/boa;)V
    .locals 10

    new-instance v0, Lg/elu;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lg/elu;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lg/bfq;->a:Lg/ekg;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/bfq;->d:Lg/elu;

    iput-object p3, p0, Lg/bfq;->b:Ljava/util/Set;

    iput-object v2, p0, Lg/bfq;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p4, p0, Lg/bfq;->f:Lg/boa;

    iput-object p1, p0, Lg/bfq;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final g()Lg/chw;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lg/bfq;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/cml;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lg/byh;->w(Ljava/lang/Object;)Lg/chw;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lg/cdi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/cdi;-><init>(Lg/bfq;I)V

    iget-object v1, p0, Lg/bfq;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lg/byh;->bd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/chw;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lg/bfq;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-static {v1}, Lg/byh;->w(Ljava/lang/Object;)Lg/chw;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lg/bfq;->e:Landroid/content/Context;

    invoke-static {v0}, Lg/cml;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {v1}, Lg/byh;->w(Ljava/lang/Object;)Lg/chw;

    return-void

    :cond_2
    new-instance v0, Lg/cdi;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/cdi;-><init>(Lg/bfq;I)V

    iget-object v1, p0, Lg/bfq;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lg/byh;->bd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg/chw;

    return-void
.end method
