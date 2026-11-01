.class public final Lg/bfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/evq;


# instance fields
.field public final synthetic a:Lg/gnb;

.field public final b:Lg/gpq;

.field public c:Z


# direct methods
.method public constructor <init>(Lg/gnb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bfs;->a:Lg/gnb;

    new-instance v0, Lg/gpq;

    iget-object p1, p1, Lg/gnb;->j:Ljava/lang/Object;

    check-cast p1, Lg/cbs;

    invoke-interface {p1}, Lg/evq;->e()Lg/dme;

    move-result-object p1

    invoke-direct {v0, p1}, Lg/gpq;-><init>(Lg/dme;)V

    iput-object v0, p0, Lg/bfs;->b:Lg/gpq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lg/bfs;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bfs;->c:Z

    iget-object v0, p0, Lg/bfs;->b:Lg/gpq;

    iget-object v1, v0, Lg/gpq;->d:Lg/dme;

    sget-object v2, Lg/dme;->n:Lg/dey;

    iput-object v2, v0, Lg/gpq;->d:Lg/dme;

    invoke-virtual {v1}, Lg/dme;->s()Lg/dme;

    invoke-virtual {v1}, Lg/dme;->t()Lg/dme;

    const/4 v0, 0x3

    iget-object v1, p0, Lg/bfs;->a:Lg/gnb;

    iput v0, v1, Lg/gnb;->k:I

    return-void
.end method

.method public final e()Lg/dme;
    .locals 1

    iget-object v0, p0, Lg/bfs;->b:Lg/gpq;

    return-object v0
.end method

.method public final f(Lg/clq;J)V
    .locals 7

    iget-boolean v0, p0, Lg/bfs;->c:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, Lg/clq;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lg/erq;->ac(JJJ)V

    iget-object p2, p0, Lg/bfs;->a:Lg/gnb;

    iget-object p2, p2, Lg/gnb;->j:Ljava/lang/Object;

    check-cast p2, Lg/cbs;

    invoke-interface {p2, p1, v5, v6}, Lg/evq;->f(Lg/clq;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lg/bfs;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/bfs;->a:Lg/gnb;

    iget-object v0, v0, Lg/gnb;->j:Ljava/lang/Object;

    check-cast v0, Lg/cbs;

    invoke-interface {v0}, Lg/cbs;->flush()V

    return-void
.end method
