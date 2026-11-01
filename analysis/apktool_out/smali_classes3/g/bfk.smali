.class public abstract Lg/bfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cpv;


# instance fields
.field public final synthetic d:Lg/gnb;

.field public final f:Lg/gpq;

.field public g:Z


# direct methods
.method public constructor <init>(Lg/gnb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bfk;->d:Lg/gnb;

    new-instance v0, Lg/gpq;

    iget-object p1, p1, Lg/gnb;->i:Ljava/lang/Object;

    check-cast p1, Lg/dsy;

    invoke-interface {p1}, Lg/cpv;->e()Lg/dme;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/gpq;-><init>(Lg/dme;)V

    iput-object v0, p0, Lg/bfk;->f:Lg/gpq;

    return-void
.end method


# virtual methods
.method public c(Lg/clq;J)J
    .locals 2

    iget-object v0, p0, Lg/bfk;->d:Lg/gnb;

    const-string v1, "sink"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lg/gnb;->i:Ljava/lang/Object;

    check-cast v1, Lg/dsy;

    invoke-interface {v1, p1, p2, p3}, Lg/cpv;->c(Lg/clq;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, v0, Lg/gnb;->n:Ljava/lang/Object;

    check-cast p2, Lg/gba;

    invoke-virtual {p2}, Lg/gba;->w()V

    invoke-virtual {p0}, Lg/bfk;->h()V

    throw p1
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/bfk;->f:Lg/gpq;

    return-object v0
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lg/bfk;->d:Lg/gnb;

    iget v1, v0, Lg/gnb;->k:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lg/bfk;->f:Lg/gpq;

    iget-object v3, v1, Lg/gpq;->d:Lg/dme;

    sget-object v4, Lg/dme;->n:Lg/dey;

    iput-object v4, v1, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v3}, Lg/dme;->s()Lg/dme;

    invoke-virtual {v3}, Lg/dme;->t()Lg/dme;

    iput v2, v0, Lg/gnb;->k:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lg/gnb;->k:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
