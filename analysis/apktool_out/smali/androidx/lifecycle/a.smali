.class public abstract Landroidx/lifecycle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:Z

.field public volatile d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:Z

.field public final h:Lg/cfx;

.field public final i:Lg/byd;

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->e:Ljava/lang/Object;

    new-instance v0, Lg/cfx;

    invoke-direct {v0}, Lg/cfx;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/a;->j:I

    sget-object v0, Landroidx/lifecycle/a;->a:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    new-instance v1, Lg/byd;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/a;->i:Lg/byd;

    iput-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/a;->k:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object p1, Lg/gev;->b:Lg/bki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->e:Ljava/lang/Object;

    new-instance v0, Lg/cfx;

    invoke-direct {v0}, Lg/cfx;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/a;->j:I

    sget-object v1, Landroidx/lifecycle/a;->a:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/a;->f:Ljava/lang/Object;

    new-instance v1, Lg/byd;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/a;->i:Lg/byd;

    iput-object p1, p0, Landroidx/lifecycle/a;->d:Ljava/lang/Object;

    iput v0, p0, Landroidx/lifecycle/a;->k:I

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lg/dav;->d()Lg/dav;

    move-result-object v0

    iget-object v0, v0, Lg/dav;->c:Lg/fja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public m(Lg/jn;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    invoke-virtual {v0, p1}, Lg/cfx;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bbq;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/bbq;->f()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/bbq;->k(Z)V

    return-void
.end method

.method public final n(Lg/iz;Lg/jn;)V
    .locals 3

    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/a;->l(Ljava/lang/String;)V

    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object v0

    check-cast v0, Lg/ajs;

    iget-object v0, v0, Lg/ajs;->g:Lg/fqv;

    sget-object v1, Lg/fqv;->DESTROYED:Lg/fqv;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/a;Lg/iz;Lg/jn;)V

    iget-object v1, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    invoke-virtual {v1, p2}, Lg/cfx;->b(Ljava/lang/Object;)Lg/frv;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p2, v2, Lg/frv;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Lg/frv;

    invoke-direct {v2, p2, v0}, Lg/frv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, v1, Lg/cfx;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lg/cfx;->e:I

    iget-object p2, v1, Lg/cfx;->g:Lg/frv;

    if-nez p2, :cond_2

    iput-object v2, v1, Lg/cfx;->f:Lg/frv;

    iput-object v2, v1, Lg/cfx;->g:Lg/frv;

    goto :goto_0

    :cond_2
    iput-object v2, p2, Lg/frv;->a:Lg/frv;

    iput-object p2, v2, Lg/frv;->b:Lg/frv;

    iput-object v2, v1, Lg/cfx;->g:Lg/frv;

    :goto_0
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Lg/bbq;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lg/bbq;->d(Lg/iz;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-interface {p1}, Lg/iz;->getLifecycle()Lg/euu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lg/euu;->l(Lg/ajm;)V

    return-void
.end method

.method public final o(Lg/jn;)V
    .locals 4

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/a;->l(Ljava/lang/String;)V

    new-instance v0, Lg/epu;

    invoke-direct {v0, p0, p1}, Lg/bbq;-><init>(Landroidx/lifecycle/a;Lg/jn;)V

    iget-object v1, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    invoke-virtual {v1, p1}, Lg/cfx;->b(Ljava/lang/Object;)Lg/frv;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, v2, Lg/frv;->d:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v2, Lg/frv;

    invoke-direct {v2, p1, v0}, Lg/frv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, v1, Lg/cfx;->e:I

    add-int/2addr p1, v3

    iput p1, v1, Lg/cfx;->e:I

    iget-object p1, v1, Lg/cfx;->g:Lg/frv;

    if-nez p1, :cond_1

    iput-object v2, v1, Lg/cfx;->f:Lg/frv;

    iput-object v2, v1, Lg/cfx;->g:Lg/frv;

    goto :goto_0

    :cond_1
    iput-object v2, p1, Lg/frv;->a:Lg/frv;

    iput-object p1, v2, Lg/frv;->b:Lg/frv;

    iput-object v2, v1, Lg/cfx;->g:Lg/frv;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Lg/bbq;

    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Lg/bbq;->k(Z)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public abstract q(Ljava/lang/Object;)V
.end method

.method public final r(Lg/bbq;)V
    .locals 2

    iget-boolean v0, p1, Lg/bbq;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/bbq;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/bbq;->k(Z)V

    return-void

    :cond_1
    iget v0, p1, Lg/bbq;->g:I

    iget v1, p0, Landroidx/lifecycle/a;->k:I

    if-lt v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput v1, p1, Lg/bbq;->g:I

    iget-object p1, p1, Lg/bbq;->i:Lg/jn;

    iget-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lg/jn;->_bl(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lg/bbq;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/a;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/a;->b:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/a;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->r(Lg/bbq;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/a;->h:Lg/cfx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/dgv;

    invoke-direct {v2, v1}, Lg/dgv;-><init>(Lg/cfx;)V

    iget-object v1, v1, Lg/cfx;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lg/dgv;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lg/dgv;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/bbq;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/a;->r(Lg/bbq;)V

    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/a;->b:Z

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method
