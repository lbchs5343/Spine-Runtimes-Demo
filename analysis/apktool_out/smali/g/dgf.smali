.class public final Lg/dgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ebp;


# instance fields
.field public final a:I

.field public k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;

.field public final n:Lg/ayu;

.field public o:Lg/cwx;

.field public final p:Z


# direct methods
.method public constructor <init>(Lg/ebp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lg/ebp;->j()Lg/ayu;

    move-result-object v0

    iput-object v0, p0, Lg/dgf;->n:Lg/ayu;

    invoke-interface {p1}, Lg/ebp;->g()Lg/cwx;

    move-result-object v0

    iput-object v0, p0, Lg/dgf;->o:Lg/cwx;

    invoke-interface {p1}, Lg/ebp;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/dgf;->k:Ljava/util/List;

    invoke-interface {p1}, Lg/ebp;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/dgf;->l:Ljava/util/List;

    invoke-interface {p1}, Lg/ebp;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/dgf;->m:Ljava/util/List;

    invoke-interface {p1}, Lg/ebp;->h()Z

    move-result v0

    iput-boolean v0, p0, Lg/dgf;->p:Z

    invoke-interface {p1}, Lg/ebp;->_cv()I

    move-result p1

    iput p1, p0, Lg/dgf;->a:I

    return-void
.end method


# virtual methods
.method public final _cv()I
    .locals 1

    iget v0, p0, Lg/dgf;->a:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lg/awf;->aa(Lg/ebp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (mut)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->j:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/dgf;->k:Ljava/util/List;

    return-object v0
.end method

.method public final g()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/dgf;->o:Lg/cwx;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/dgf;->l:Ljava/util/List;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lg/dgf;->p:Z

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/dgf;->m:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lg/ayu;
    .locals 1

    iget-object v0, p0, Lg/dgf;->n:Lg/ayu;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mutable"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/dgf;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
