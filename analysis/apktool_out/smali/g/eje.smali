.class public final Lg/eje;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Lg/gbb;

.field public d:Lg/frr;


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eje;->a:Z

    iget-object v0, p0, Lg/eje;->c:Lg/gbb;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lg/zi;->a:Ljava/lang/Object;

    :cond_0
    sget-object v1, Lg/zi;->d:Lg/buj;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lg/buj;->e(Lg/zi;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lg/zi;->k(Lg/zi;)V

    iput-object v2, p0, Lg/eje;->b:Ljava/lang/Object;

    iput-object v2, p0, Lg/eje;->c:Lg/gbb;

    iput-object v2, p0, Lg/eje;->d:Lg/frr;

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/eje;->a:Z

    iget-object v0, p0, Lg/eje;->c:Lg/gbb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v0, p1}, Lg/zi;->m(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lg/eje;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/eje;->c:Lg/gbb;

    iput-object p1, p0, Lg/eje;->d:Lg/frr;

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 4

    iget-object v0, p0, Lg/eje;->c:Lg/gbb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v0}, Lg/zi;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lg/bxj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lg/eje;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/bxj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lg/zi;->m(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, Lg/eje;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/eje;->d:Lg/frr;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/frr;->p(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
