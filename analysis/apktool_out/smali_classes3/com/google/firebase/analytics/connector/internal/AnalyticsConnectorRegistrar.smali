.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(Lg/se;)Lg/afe;
    .locals 6

    const-class v0, Lg/rm;

    invoke-interface {p0, v0}, Lg/se;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/rm;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lg/se;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lg/oh;

    invoke-interface {p0, v2}, Lg/se;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/oh;

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {v1}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-static {p0}, Lg/ckd;->k(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg/ckd;->k(Ljava/lang/Object;)V

    sget-object v2, Lg/bfy;->v:Lg/bfy;

    if-nez v2, :cond_2

    const-class v2, Lg/bfy;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lg/bfy;->v:Lg/bfy;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "[DEFAULT]"

    invoke-virtual {v0}, Lg/rm;->p()V

    iget-object v5, v0, Lg/rm;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p0, Lg/aiv;

    invoke-virtual {p0}, Lg/aiv;->d()V

    const-string p0, "dataCollectionDefaultEnabled"

    invoke-virtual {v0}, Lg/rm;->q()Z

    move-result v0

    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lg/bfy;

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v3}, Lg/bhz;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lg/bhz;

    move-result-object v0

    iget-object v0, v0, Lg/bhz;->f:Lg/fnq;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lg/bfy;-><init>(I)V

    invoke-static {v0}, Lg/ckd;->k(Ljava/lang/Object;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object p0, Lg/bfy;->v:Lg/bfy;

    :cond_1
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lg/bfy;->v:Lg/bfy;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/bdf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg/cop;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lg/afe;

    invoke-direct {v0, v3, v2}, Lg/cop;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    new-instance v2, Lg/djj;

    const-class v3, Lg/rm;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v0, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/djj;

    const-class v3, Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v0, v2}, Lg/cop;->i(Lg/djj;)V

    new-instance v2, Lg/djj;

    const-class v3, Lg/oh;

    invoke-direct {v2, v3, v4, v1}, Lg/djj;-><init>(Ljava/lang/Class;II)V

    invoke-virtual {v0, v2}, Lg/cop;->i(Lg/djj;)V

    sget-object v2, Lg/dwm;->b:Lg/dwm;

    iput-object v2, v0, Lg/cop;->d:Ljava/lang/Object;

    iget v2, v0, Lg/cop;->c:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, v0, Lg/cop;->c:I

    invoke-virtual {v0}, Lg/cop;->k()Lg/bdf;

    move-result-object v0

    const-string v3, "fire-analytics"

    const-string v5, "21.1.1"

    invoke-static {v3, v5}, Lg/ckd;->aw(Ljava/lang/String;Ljava/lang/String;)Lg/bdf;

    move-result-object v3

    new-array v2, v2, [Lg/bdf;

    aput-object v0, v2, v1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
