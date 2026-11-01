.class public final Lg/hdt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/enb;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Lg/czl;

.field public f:Lg/daw;

.field public g:Lg/ais;

.field public h:Lg/aju;

.field public i:Lg/enb;

.field public j:Lg/aqt;

.field public k:Lg/enb;

.field public l:I

.field public m:Lg/ehi;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/hdt;->l:I

    new-instance v0, Lg/ais;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/ais;-><init>(I)V

    iput-object v0, p0, Lg/hdt;->g:Lg/ais;

    return-void
.end method

.method public static n(Ljava/lang/String;Lg/enb;)V
    .locals 1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lg/enb;->b:Lg/ehi;

    if-nez v0, :cond_3

    iget-object v0, p1, Lg/enb;->a:Lg/enb;

    if-nez v0, :cond_2

    iget-object v0, p1, Lg/enb;->j:Lg/enb;

    if-nez v0, :cond_1

    iget-object p1, p1, Lg/enb;->c:Lg/enb;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final o()Lg/enb;
    .locals 17

    move-object/from16 v0, p0

    iget v5, v0, Lg/hdt;->l:I

    if-ltz v5, :cond_3

    iget-object v2, v0, Lg/hdt;->f:Lg/daw;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lg/hdt;->j:Lg/aqt;

    if-eqz v3, :cond_1

    iget-object v4, v0, Lg/hdt;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v6, v0, Lg/hdt;->e:Lg/czl;

    iget-object v1, v0, Lg/hdt;->g:Lg/ais;

    invoke-virtual {v1}, Lg/ais;->d()Lg/dvq;

    move-result-object v7

    iget-object v8, v0, Lg/hdt;->m:Lg/ehi;

    iget-object v9, v0, Lg/hdt;->a:Lg/enb;

    iget-object v10, v0, Lg/hdt;->i:Lg/enb;

    iget-object v11, v0, Lg/hdt;->k:Lg/enb;

    iget-wide v12, v0, Lg/hdt;->b:J

    iget-wide v14, v0, Lg/hdt;->d:J

    iget-object v1, v0, Lg/hdt;->h:Lg/aju;

    move-object/from16 v16, v1

    new-instance v1, Lg/enb;

    invoke-direct/range {v1 .. v16}, Lg/enb;-><init>(Lg/daw;Lg/aqt;Ljava/lang/String;ILg/czl;Lg/dvq;Lg/ehi;Lg/enb;Lg/enb;Lg/enb;JJLg/aju;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lg/hdt;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final p(Lg/dvq;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/dvq;->f()Lg/ais;

    move-result-object p1

    iput-object p1, p0, Lg/hdt;->g:Lg/ais;

    return-void
.end method
