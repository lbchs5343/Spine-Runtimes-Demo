.class public final Lg/cno;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lg/cqc;

.field public final d:Ljava/util/List;

.field public final e:Lg/cci;

.field public final f:Lg/cno;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cno;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/cci;Lg/cno;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->a:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->b:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->d:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cno;->c:Lg/cqc;

    iput-object p1, p0, Lg/cno;->e:Lg/cci;

    iput-object p2, p0, Lg/cno;->f:Lg/cno;

    return-void
.end method

.method public constructor <init>(Lg/cci;Lg/cqc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->a:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->b:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->d:Ljava/util/List;

    iput-object v0, p0, Lg/cno;->g:Ljava/util/List;

    iput-object p2, p0, Lg/cno;->c:Lg/cqc;

    iput-object p1, p0, Lg/cno;->e:Lg/cci;

    const/4 p1, 0x0

    iput-object p1, p0, Lg/cno;->f:Lg/cno;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/cno;

    if-eqz v0, :cond_0

    check-cast p1, Lg/cno;

    iget-object p1, p1, Lg/cno;->e:Lg/cci;

    iget-object v0, p0, Lg/cno;->e:Lg/cci;

    invoke-virtual {v0, p1}, Lg/cci;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final h()Lg/cqc;
    .locals 1

    iget-object v0, p0, Lg/cno;->f:Lg/cno;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cno;->h()Lg/cqc;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/cno;->c:Lg/cqc;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/cno;->e:Lg/cci;

    invoke-virtual {v0}, Lg/cci;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lg/cno;
    .locals 3

    sget-object v0, Lg/acq;->r:Lg/acq;

    iget-object v1, p0, Lg/cno;->e:Lg/cci;

    iget-object v2, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/glh;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cno;->h()Lg/cqc;

    move-result-object v1

    iget-object v0, v0, Lg/glh;->b:Lg/cci;

    invoke-virtual {v1, v0}, Lg/cqc;->y(Lg/cci;)Lg/cno;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/acq;->y:Lg/acq;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/dxa;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lg/cno;->h()Lg/cqc;

    move-result-object v1

    iget-object v0, v0, Lg/dxa;->a:Lg/cci;

    invoke-virtual {v1, v0}, Lg/cqc;->y(Lg/cci;)Lg/cno;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/cno;->f:Lg/cno;

    :goto_0
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lg/cno;->i()Lg/cno;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cno;->e:Lg/cci;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
