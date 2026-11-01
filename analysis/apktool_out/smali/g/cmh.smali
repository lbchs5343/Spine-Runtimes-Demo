.class public abstract Lg/cmh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/LinkedHashSet;

.field public g:Ljava/lang/Object;

.field public final h:Lg/gkr;

.field public final i:Landroid/content/Context;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/gkr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/cmh;->h:Lg/gkr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/cmh;->i:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cmh;->j:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public abstract e()V
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lg/cmh;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cmh;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lg/cmh;->g:Ljava/lang/Object;

    iget-object p1, p0, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lg/gsv;->bf(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lg/cmh;->h:Lg/gkr;

    iget-object v1, v1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bxc;

    new-instance v2, Lg/dsf;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3, p0}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lg/bxc;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p1
.end method
