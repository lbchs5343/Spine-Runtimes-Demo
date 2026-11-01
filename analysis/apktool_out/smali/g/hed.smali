.class public final Lg/hed;
.super Lg/ebh;
.source "SourceFile"

# interfaces
.implements Lg/ebp;
.implements Ljava/lang/Comparable;


# static fields
.field public static final x:[Lg/eek;


# instance fields
.field public aa:I

.field public final ab:Lg/atc;

.field public ac:Ljava/util/List;

.field public ad:Lg/fza;

.field public ae:Ljava/util/List;

.field public af:I

.field public final ag:Ljava/util/HashSet;

.field public ah:Z

.field public ai:I

.field public aj:Lg/fza;

.field public ak:Ljava/util/List;

.field public final al:Lg/ayu;

.field public final am:Lg/cci;

.field public an:[Lg/eek;

.field public ao:Lg/eys;

.field public ap:Ljava/util/List;

.field public final aq:Ljava/util/List;

.field public ar:Z

.field public as:Ljava/util/List;

.field public at:Ljava/util/List;

.field public au:Ljava/util/List;

.field public av:Ljava/util/List;

.field public aw:Lg/cwx;

.field public ax:Lg/gqc;

.field public final y:I

.field public z:Lg/gks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/hed;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    const/4 v0, 0x0

    new-array v0, v0, [Lg/eek;

    sput-object v0, Lg/hed;->x:[Lg/eek;

    return-void
.end method

.method public constructor <init>(Lg/cci;Lg/ghu;)V
    .locals 5

    invoke-direct {p0}, Lg/lh;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/hed;->au:Ljava/util/List;

    iput-object v0, p0, Lg/hed;->aq:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lg/hed;->ag:Ljava/util/HashSet;

    iget-object v1, p1, Lg/cci;->ab:Lg/dwg;

    invoke-interface {p2}, Lg/ghu;->c()Lg/ful;

    move-result-object v2

    invoke-static {v1, v2}, Lg/ayu;->j(Lg/dwg;Lg/ful;)Lg/ayu;

    move-result-object v1

    iput-object v1, p0, Lg/hed;->al:Lg/ayu;

    iput-object p1, p0, Lg/hed;->am:Lg/cci;

    new-instance p1, Lg/gqc;

    invoke-interface {p2}, Lg/ghu;->a()I

    move-result v2

    sget-object v3, Lg/frh;->METHOD:Lg/frh;

    const/4 v4, 0x1

    invoke-direct {p1, v2, v3, v4}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    iput-object p1, p0, Lg/hed;->ax:Lg/gqc;

    invoke-interface {p2}, Lg/ghu;->b()Lg/atc;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lg/hed;->ar:Z

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lg/hed;->ab:Lg/atc;

    iput p2, p0, Lg/hed;->y:I

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lg/atc;->k()Lg/atc;

    move-result-object p2

    iput-object p2, p0, Lg/hed;->ab:Lg/atc;

    invoke-interface {p1}, Lg/atc;->l()I

    move-result p1

    iput p1, p0, Lg/hed;->y:I

    :goto_1
    iget-object p1, v1, Lg/ayu;->g:Lg/cwx;

    iput-object p1, p0, Lg/hed;->aw:Lg/cwx;

    iget-object p1, v1, Lg/ayu;->c:Ljava/util/List;

    iput-object p1, p0, Lg/hed;->as:Ljava/util/List;

    iput-object v0, p0, Lg/hed;->ae:Ljava/util/List;

    invoke-virtual {p0}, Lg/hed;->be()V

    return-void
.end method


# virtual methods
.method public final _by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final _cv()I
    .locals 1

    iget-object v0, p0, Lg/hed;->ax:Lg/gqc;

    iget v0, v0, Lg/gqc;->ab:I

    return v0
.end method

.method public final a()Lg/dwg;
    .locals 1

    iget-object v0, p0, Lg/hed;->am:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    return-object v0
.end method

.method public final ay()Lg/gqc;
    .locals 1

    iget-object v0, p0, Lg/hed;->ax:Lg/gqc;

    return-object v0
.end method

.method public final az()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/hed;->av:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method arg registers not loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", class status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v2}, Lg/cci;->bd()Lg/cci;

    move-result-object v2

    iget-object v2, v2, Lg/cci;->ad:Lg/gwz;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->METHOD:Lg/pk;

    return-object v0
.end method

.method public final ba()V
    .locals 4

    iget-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    iput v2, v3, Lg/fza;->x:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bb(Lg/fza;)Z
    .locals 3

    iget-object v0, p1, Lg/fza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fza;

    iget-object v0, p0, Lg/hed;->ad:Lg/fza;

    invoke-virtual {p1, v0}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lg/hed;->ad:Lg/fza;

    iget-object v0, v0, Lg/fza;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bc(Lg/gqc;)V
    .locals 0

    iput-object p1, p0, Lg/hed;->ax:Lg/gqc;

    return-void
.end method

.method public final bd()Z
    .locals 4

    invoke-virtual {p0}, Lg/hed;->bk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/hed;->am:Lg/cci;

    iget-object v2, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v2}, Lg/ve;->n()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v2}, Lg/gqc;->be()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lg/cci;->ai:Lg/cci;

    iget-object v2, p0, Lg/hed;->av:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/hed;->av:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gks;

    iget-object v2, v2, Lg/flv;->h:Lg/cwx;

    iget-object v0, v0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v2, v0}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lg/hed;->av:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v3

    :cond_3
    return v1
.end method

.method public final be()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/hed;->ah:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/hed;->z:Lg/gks;

    iput-object v0, p0, Lg/hed;->av:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lg/hed;->at:Ljava/util/List;

    iput-object v0, p0, Lg/hed;->an:[Lg/eek;

    iput-object v0, p0, Lg/hed;->ak:Ljava/util/List;

    iput-object v0, p0, Lg/hed;->aj:Lg/fza;

    iput-object v0, p0, Lg/hed;->ad:Lg/fza;

    iput-object v0, p0, Lg/hed;->ao:Lg/eys;

    iput-object v1, p0, Lg/hed;->ap:Ljava/util/List;

    iput-object v1, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-virtual {p0}, Lg/lh;->p()V

    return-void
.end method

.method public final bf()V
    .locals 7

    iget-object v0, p0, Lg/hed;->ab:Lg/atc;

    iget-boolean v1, p0, Lg/hed;->ah:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lg/hed;->ah:Z

    iget-boolean v3, p0, Lg/hed;->ar:Z

    if-eqz v3, :cond_1

    iput v1, p0, Lg/hed;->af:I

    iget-object v0, p0, Lg/hed;->as:Ljava/util/List;

    invoke-virtual {p0, v0}, Lg/hed;->bl(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lg/atc;->f()I

    move-result v3

    iput v3, p0, Lg/hed;->af:I

    invoke-interface {v0}, Lg/atc;->g()I

    move-result v3

    iput v3, p0, Lg/hed;->ai:I

    iget-object v3, p0, Lg/hed;->as:Ljava/util/List;

    invoke-virtual {p0, v3}, Lg/hed;->bl(Ljava/util/List;)V

    sget-object v3, Lg/acq;->af:Lg/acq;

    iget-object v4, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v4, v3}, Lg/sm;->j(Lg/fky;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lg/hed;->x:[Lg/eek;

    iput-object v0, p0, Lg/hed;->an:[Lg/eek;

    return-void

    :cond_2
    new-instance v3, Lg/ffr;

    invoke-direct {v3, p0}, Lg/ffr;-><init>(Lg/hed;)V

    invoke-interface {v0}, Lg/atc;->l()I

    move-result v4

    new-array v4, v4, [Lg/eek;

    new-instance v5, Lg/esv;

    const/4 v6, 0x6

    invoke-direct {v5, v3, v6, v4}, Lg/esv;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v5}, Lg/atc;->_cu(Lg/esv;)V

    iput-object v4, p0, Lg/hed;->an:[Lg/eek;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-boolean v3, p0, Lg/hed;->ar:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lg/hed;->be()V

    iput-boolean v2, p0, Lg/hed;->ar:Z

    invoke-virtual {p0}, Lg/hed;->bf()V

    iput-boolean v1, p0, Lg/hed;->ar:Z

    :cond_3
    new-instance v1, Lg/heq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load method exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lg/uc;-><init>(Lg/hed;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final bg()Z
    .locals 2

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    iget-object v0, v0, Lg/ayu;->g:Lg/cwx;

    sget-object v1, Lg/cwx;->ao:Lg/cff;

    invoke-virtual {v0, v1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bh(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lg/hed;->au:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hed;

    iget-object v0, v0, Lg/hed;->ag:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bi(Lg/fza;)Lg/gcv;
    .locals 3

    iget-object v0, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gcv;

    iget-object v2, v1, Lg/gcv;->e:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bj(Lg/fza;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lg/hed;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gcv;

    iget-object v3, v2, Lg/gcv;->e:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final bk()Z
    .locals 1

    iget-object v0, p0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->bf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v0}, Lg/ayu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bl(Ljava/util/List;)V
    .locals 5

    iget-boolean v0, p0, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget v0, p0, Lg/hed;->ai:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lg/hed;->af:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->bi()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->be()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_1
    iget-object v1, p0, Lg/hed;->am:Lg/cci;

    iget-object v2, v1, Lg/cci;->ab:Lg/dwg;

    iget-object v2, v2, Lg/dwg;->o:Lg/emr;

    iget-object v3, p0, Lg/hed;->ax:Lg/gqc;

    invoke-virtual {v3}, Lg/gqc;->be()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lg/hed;->z:Lg/gks;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lg/cci;->au()Lg/cwx;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lg/emr;->q(Lg/hed;Lg/cwx;)V

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lg/gsh;->ad:Lg/dba;

    new-instance v4, Lg/gks;

    invoke-direct {v4, v0, v1}, Lg/gks;-><init>(ILg/cwx;)V

    sget-object v0, Lg/csv;->THIS:Lg/csv;

    invoke-virtual {v4, v0}, Lg/lh;->w(Lg/csv;)V

    sget-object v0, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    invoke-virtual {v4, v0}, Lg/lh;->w(Lg/csv;)V

    iput-object v4, p0, Lg/hed;->z:Lg/gks;

    move v0, v3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lg/hed;->av:Ljava/util/List;

    return-void

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lg/hed;->av:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Lg/emr;->q(Lg/hed;Lg/cwx;)V

    sget-object v3, Lg/gsh;->ad:Lg/dba;

    new-instance v3, Lg/gks;

    invoke-direct {v3, v0, v1}, Lg/gks;-><init>(ILg/cwx;)V

    sget-object v4, Lg/csv;->METHOD_ARGUMENT:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    sget-object v4, Lg/csv;->IMMUTABLE_TYPE:Lg/csv;

    invoke-virtual {v3, v4}, Lg/lh;->w(Lg/csv;)V

    iget-object v4, p0, Lg/hed;->av:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lg/cwx;->bi()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final bm(Lg/cwx;)Lg/gks;
    .locals 2

    sget-object v0, Lg/gsh;->ad:Lg/dba;

    new-instance v0, Lg/gks;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lg/gks;-><init>(ILg/cwx;)V

    sget-object v1, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v0, v1}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {p0, v0}, Lg/hed;->bn(Lg/gks;)Lg/vm;

    move-result-object v1

    invoke-static {v1}, Lg/eak;->az(Lg/vm;)V

    invoke-virtual {v1, p1}, Lg/vm;->s(Lg/cwx;)V

    return-object v0
.end method

.method public final bn(Lg/gks;)Lg/vm;
    .locals 5

    iget v0, p1, Lg/gks;->e:I

    iget-object v1, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/vm;

    iget v4, v3, Lg/vm;->f:I

    if-ne v4, v0, :cond_0

    iget v3, v3, Lg/vm;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    new-instance v1, Lg/vm;

    invoke-direct {v1, v0, v2, p1}, Lg/vm;-><init>(IILg/gks;)V

    iget-object p1, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/hed;->at:Ljava/util/List;

    :cond_2
    iget-object p1, p0, Lg/hed;->at:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lg/awf;->aa(Lg/ebp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (m)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/hed;

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    iget-object p1, p1, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v0, p1}, Lg/ayu;->n(Lg/ayu;)I

    move-result p1

    return p1
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

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/hed;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/hed;

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    iget-object p1, p1, Lg/hed;->al:Lg/ayu;

    invoke-virtual {v0, p1}, Lg/ayu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg/hed;->as:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method generic types not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/hed;->aw:Lg/cwx;

    return-object v0
.end method

.method public final getDeclaringClass()Lg/cci;
    .locals 1

    iget-object v0, p0, Lg/hed;->am:Lg/cci;

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/hed;->ae:Ljava/util/List;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lg/hed;->ax:Lg/gqc;

    iget v0, v0, Lg/gqc;->ab:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    iget v0, v0, Lg/ayu;->b:I

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 3

    sget-object v0, Lg/acq;->ap:Lg/acq;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/cvo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/cvo;->a:Ljava/util/HashSet;

    new-instance v1, Lg/fov;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    invoke-static {v0, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lg/ao;->l:Lg/ao;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/cym;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lg/cym;->a:Ljava/util/List;

    new-instance v1, Lg/fov;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    invoke-static {v0, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public final j()Lg/ayu;
    .locals 1

    iget-object v0, p0, Lg/hed;->al:Lg/ayu;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/hed;->am:Lg/cci;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hed;->al:Lg/ayu;

    iget-object v1, v1, Lg/ayu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hed;->as:Ljava/util/List;

    const-string v2, ", "

    invoke-static {v2, v1}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hed;->aw:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeName()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    return-object v0
.end method
