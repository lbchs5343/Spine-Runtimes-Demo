.class public abstract Lg/crf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public i:Z

.field public final j:Lg/cys;

.field public k:Lg/cys;


# direct methods
.method public constructor <init>(Lg/cys;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/crf;->j:Lg/cys;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cys;

    iput-object p1, p0, Lg/crf;->k:Lg/cys;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/crf;->i:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/crf;->n()Lg/crf;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lg/cys;)V
    .locals 3

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    sget-object v1, Lg/auv;->a:Lg/auv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lg/ciw;->i(Lg/cys;Lg/cys;)V

    return-void
.end method

.method public final m([BILg/le;)V
    .locals 8

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/crf;->p()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/crf;->i:Z

    :cond_0
    :try_start_0
    sget-object v0, Lg/auv;->a:Lg/auv;

    iget-object v1, p0, Lg/crf;->k:Lg/cys;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v2

    iget-object v3, p0, Lg/crf;->k:Lg/cys;

    new-instance v7, Lg/fks;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lg/ciw;->g(Ljava/lang/Object;[BIILg/fks;)V
    :try_end_0
    .catch Lg/drq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :goto_1
    throw p1
.end method

.method public final n()Lg/crf;
    .locals 2

    iget-object v0, p0, Lg/crf;->j:Lg/cys;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/crf;

    invoke-virtual {p0}, Lg/crf;->q()Lg/cys;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/crf;->l(Lg/cys;)V

    return-object v0
.end method

.method public final o()Lg/cys;
    .locals 3

    invoke-virtual {p0}, Lg/crf;->q()Lg/cys;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v1, Lg/auv;->a:Lg/auv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v1

    invoke-interface {v1, v0}, Lg/ciw;->h(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lg/cys;->a(I)Ljava/lang/Object;

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lg/dwb;

    const-string v1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/cys;

    iget-object v1, p0, Lg/crf;->k:Lg/cys;

    sget-object v2, Lg/auv;->a:Lg/auv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lg/ciw;->i(Lg/cys;Lg/cys;)V

    iput-object v0, p0, Lg/crf;->k:Lg/cys;

    return-void
.end method

.method public final q()Lg/cys;
    .locals 3

    iget-boolean v0, p0, Lg/crf;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    sget-object v1, Lg/auv;->a:Lg/auv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v1

    invoke-interface {v1, v0}, Lg/ciw;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/crf;->i:Z

    iget-object v0, p0, Lg/crf;->k:Lg/cys;

    return-object v0
.end method
