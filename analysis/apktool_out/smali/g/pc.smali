.class public final Lg/pc;
.super Lg/baf;
.source "SourceFile"


# instance fields
.field public final _aq:Ljava/util/ArrayList;

.field public a:Z

.field public final b:Ljava/util/ArrayList;

.field public final c:Lg/fxb;

.field public final d:Lg/dne;

.field public final e:Ljava/lang/String;

.field public g:Lg/gev;

.field public final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/fxb;Ljava/lang/String;Lg/dne;Ljava/util/List;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/pc;->c:Lg/fxb;

    iput-object p2, p0, Lg/pc;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/pc;->d:Lg/dne;

    iput-object p4, p0, Lg/pc;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lg/pc;->_aq:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/pc;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    sget-object p2, Lg/dne;->REPLACE:Lg/dne;

    if-ne p3, p2, :cond_1

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/dze;

    iget-object p2, p2, Lg/dze;->b:Lg/fkj;

    iget-wide v0, p2, Lg/fkj;->i:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/dze;

    iget-object p2, p2, Lg/dze;->a:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "id.toString()"

    invoke-static {p2, p5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lg/pc;->_aq:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lg/pc;->b:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static i(Lg/pc;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final j()Lg/gev;
    .locals 5

    iget-boolean v0, p0, Lg/pc;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/pc;->c:Lg/fxb;

    iget-object v1, v0, Lg/fxb;->aw:Lg/flk;

    iget-object v1, v1, Lg/flk;->h:Lg/ao;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EnqueueRunnable_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lg/pc;->d:Lg/dne;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lg/fxb;->bb:Lg/ccc;

    check-cast v0, Lg/gkr;

    iget-object v0, v0, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v0, Lg/aqv;

    new-instance v3, Lg/hv;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lg/hv;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v0, v3}, Lg/afo;->ag(Lg/ao;Ljava/lang/String;Lg/aqv;Lg/cvw;)Lg/gev;

    move-result-object v0

    iput-object v0, p0, Lg/pc;->g:Lg/gev;

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    const-string v1, ", "

    iget-object v2, p0, Lg/pc;->_aq:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v0, p0, Lg/pc;->g:Lg/gev;

    return-object v0
.end method
