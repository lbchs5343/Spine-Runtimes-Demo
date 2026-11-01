.class public final Lg/aju;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/fvd;Lg/abv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aju;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/aju;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lg/abv;->e(I)Lg/evq;

    move-result-object p2

    iput-object p2, p0, Lg/aju;->e:Ljava/lang/Object;

    new-instance v0, Lg/ckw;

    invoke-direct {v0, p1, p0, p2}, Lg/ckw;-><init>(Lg/fvd;Lg/aju;Lg/evq;)V

    iput-object v0, p0, Lg/aju;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/ib;Lg/cpr;Lg/axn;)V
    .locals 1

    const-string v0, "finder"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aju;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/aju;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/aju;->a:Ljava/lang/Object;

    invoke-interface {p3}, Lg/axn;->b()Lg/gba;

    move-result-object p1

    iput-object p1, p0, Lg/aju;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f(Ljava/io/IOException;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/aju;->c:Z

    iget-object v1, p0, Lg/aju;->e:Ljava/lang/Object;

    check-cast v1, Lg/cpr;

    invoke-virtual {v1, p1}, Lg/cpr;->l(Ljava/io/IOException;)V

    iget-object v1, p0, Lg/aju;->a:Ljava/lang/Object;

    check-cast v1, Lg/axn;

    invoke-interface {v1}, Lg/axn;->b()Lg/gba;

    move-result-object v1

    iget-object v2, p0, Lg/aju;->d:Ljava/lang/Object;

    check-cast v2, Lg/ib;

    monitor-enter v1

    :try_start_0
    instance-of v3, p1, Lg/gts;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Lg/gts;

    iget-object v3, v3, Lg/gts;->errorCode:Lg/amc;

    sget-object v4, Lg/amc;->REFUSED_STREAM:Lg/amc;

    if-ne v3, v4, :cond_0

    iget p1, v1, Lg/gba;->g:I

    add-int/2addr p1, v0

    iput p1, v1, Lg/gba;->g:I

    if-le p1, v0, :cond_5

    iput-boolean v0, v1, Lg/gba;->p:Z

    iget p1, v1, Lg/gba;->i:I

    add-int/2addr p1, v0

    iput p1, v1, Lg/gba;->i:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p1, Lg/gts;

    iget-object p1, p1, Lg/gts;->errorCode:Lg/amc;

    sget-object v3, Lg/amc;->CANCEL:Lg/amc;

    if-ne p1, v3, :cond_1

    iget-boolean p1, v2, Lg/ib;->n:Z

    if-nez p1, :cond_5

    :cond_1
    iput-boolean v0, v1, Lg/gba;->p:Z

    iget p1, v1, Lg/gba;->i:I

    add-int/2addr p1, v0

    iput p1, v1, Lg/gba;->i:I

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lg/gba;->s:Lg/ug;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    instance-of v3, p1, Lg/fhb;

    if-eqz v3, :cond_5

    :cond_4
    iput-boolean v0, v1, Lg/gba;->p:Z

    iget v3, v1, Lg/gba;->m:I

    if-nez v3, :cond_5

    iget-object v2, v2, Lg/ib;->j:Lg/fys;

    iget-object v3, v1, Lg/gba;->o:Lg/ego;

    invoke-static {v2, v3, p1}, Lg/gba;->t(Lg/fys;Lg/ego;Ljava/io/IOException;)V

    iget p1, v1, Lg/gba;->i:I

    add-int/2addr p1, v0

    iput p1, v1, Lg/gba;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lg/aju;->b:Ljava/lang/Object;

    check-cast v0, Lg/fvd;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/aju;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lg/aju;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lg/aju;->e:Ljava/lang/Object;

    check-cast v0, Lg/evq;

    invoke-static {v0}, Lg/erq;->m(Ljava/io/Closeable;)V

    :try_start_2
    iget-object v0, p0, Lg/aju;->d:Ljava/lang/Object;

    check-cast v0, Lg/abv;

    invoke-virtual {v0}, Lg/abv;->f()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public h(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lg/aju;->d:Ljava/lang/Object;

    check-cast v0, Lg/ib;

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lg/aju;->f(Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {v0, p0, p2, p1, p3}, Lg/ib;->w(Lg/aju;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public i(Z)Lg/hdt;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg/aju;->a:Ljava/lang/Object;

    check-cast v0, Lg/axn;

    invoke-interface {v0, p1}, Lg/axn;->g(Z)Lg/hdt;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lg/hdt;->h:Lg/aju;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lg/aju;->f(Ljava/io/IOException;)V

    throw p1
.end method
