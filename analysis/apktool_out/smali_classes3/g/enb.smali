.class public final Lg/enb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lg/enb;

.field public final b:Lg/ehi;

.field public final c:Lg/enb;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:Lg/czl;

.field public final i:Lg/daw;

.field public final j:Lg/enb;

.field public final k:Lg/aqt;

.field public l:Lg/bjl;

.field public final m:Lg/aju;

.field public final n:Lg/dvq;


# direct methods
.method public constructor <init>(Lg/daw;Lg/aqt;Ljava/lang/String;ILg/czl;Lg/dvq;Lg/ehi;Lg/enb;Lg/enb;Lg/enb;JJLg/aju;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/enb;->i:Lg/daw;

    iput-object p2, p0, Lg/enb;->k:Lg/aqt;

    iput-object p3, p0, Lg/enb;->d:Ljava/lang/String;

    iput p4, p0, Lg/enb;->g:I

    iput-object p5, p0, Lg/enb;->h:Lg/czl;

    iput-object p6, p0, Lg/enb;->n:Lg/dvq;

    iput-object p7, p0, Lg/enb;->b:Lg/ehi;

    iput-object p8, p0, Lg/enb;->a:Lg/enb;

    iput-object p9, p0, Lg/enb;->j:Lg/enb;

    iput-object p10, p0, Lg/enb;->c:Lg/enb;

    iput-wide p11, p0, Lg/enb;->f:J

    iput-wide p13, p0, Lg/enb;->e:J

    move-object/from16 p1, p15

    iput-object p1, p0, Lg/enb;->m:Lg/aju;

    return-void
.end method

.method public static o(Ljava/lang/String;Lg/enb;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "name"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lg/enb;->n:Lg/dvq;

    invoke-virtual {p1, p0}, Lg/dvq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lg/enb;->b:Lg/ehi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/ehi;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Z
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget v2, p0, Lg/enb;->g:I

    if-gt v0, v2, :cond_0

    const/16 v0, 0x12c

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final q()Lg/hdt;
    .locals 3

    new-instance v0, Lg/hdt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lg/enb;->i:Lg/daw;

    iput-object v1, v0, Lg/hdt;->f:Lg/daw;

    iget-object v1, p0, Lg/enb;->k:Lg/aqt;

    iput-object v1, v0, Lg/hdt;->j:Lg/aqt;

    iget v1, p0, Lg/enb;->g:I

    iput v1, v0, Lg/hdt;->l:I

    iget-object v1, p0, Lg/enb;->d:Ljava/lang/String;

    iput-object v1, v0, Lg/hdt;->c:Ljava/lang/String;

    iget-object v1, p0, Lg/enb;->h:Lg/czl;

    iput-object v1, v0, Lg/hdt;->e:Lg/czl;

    iget-object v1, p0, Lg/enb;->n:Lg/dvq;

    invoke-virtual {v1}, Lg/dvq;->f()Lg/ais;

    move-result-object v1

    iput-object v1, v0, Lg/hdt;->g:Lg/ais;

    iget-object v1, p0, Lg/enb;->b:Lg/ehi;

    iput-object v1, v0, Lg/hdt;->m:Lg/ehi;

    iget-object v1, p0, Lg/enb;->a:Lg/enb;

    iput-object v1, v0, Lg/hdt;->a:Lg/enb;

    iget-object v1, p0, Lg/enb;->j:Lg/enb;

    iput-object v1, v0, Lg/hdt;->i:Lg/enb;

    iget-object v1, p0, Lg/enb;->c:Lg/enb;

    iput-object v1, v0, Lg/hdt;->k:Lg/enb;

    iget-wide v1, p0, Lg/enb;->f:J

    iput-wide v1, v0, Lg/hdt;->b:J

    iget-wide v1, p0, Lg/enb;->e:J

    iput-wide v1, v0, Lg/hdt;->d:J

    iget-object v1, p0, Lg/enb;->m:Lg/aju;

    iput-object v1, v0, Lg/hdt;->h:Lg/aju;

    return-object v0
.end method

.method public final r()Lg/bjl;
    .locals 1

    iget-object v0, p0, Lg/enb;->l:Lg/bjl;

    if-nez v0, :cond_0

    sget-object v0, Lg/bjl;->a:Lg/bjl;

    iget-object v0, p0, Lg/enb;->n:Lg/dvq;

    invoke-static {v0}, Lg/afo;->ax(Lg/dvq;)Lg/bjl;

    move-result-object v0

    iput-object v0, p0, Lg/enb;->l:Lg/bjl;

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/enb;->k:Lg/aqt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/enb;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/enb;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/enb;->i:Lg/daw;

    iget-object v1, v1, Lg/daw;->e:Ljava/lang/Object;

    check-cast v1, Lg/eyn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
