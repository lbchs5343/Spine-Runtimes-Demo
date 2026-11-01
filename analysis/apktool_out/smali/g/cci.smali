.class public final Lg/cci;
.super Lg/ebh;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final c:Lg/dba;


# instance fields
.field public aa:Ljava/util/List;

.field public final ab:Lg/dwg;

.field public final ac:Lg/cgt;

.field public volatile ad:Lg/gwz;

.field public ae:Lg/cno;

.field public af:Lg/cwx;

.field public ag:Ljava/util/List;

.field public ah:Ljava/util/Map;

.field public ai:Lg/cci;

.field public aj:Ljava/util/List;

.field public final ak:Lg/ve;

.field public d:Lg/gqc;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public final g:Lg/hbb;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public x:Ljava/lang/String;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/cci;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/cci;->c:Lg/dba;

    return-void
.end method

.method public constructor <init>(Lg/dwg;Lg/cgt;)V
    .locals 2

    invoke-direct {p0}, Lg/lh;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->y:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->i:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->e:Ljava/util/List;

    iput-object p0, p0, Lg/cci;->ai:Lg/cci;

    sget-object v1, Lg/gwz;->NOT_LOADED:Lg/gwz;

    iput-object v1, p0, Lg/cci;->ad:Lg/gwz;

    iput-object v0, p0, Lg/cci;->aa:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->f:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->z:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->h:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lg/cci;->ah:Ljava/util/Map;

    iput-object p1, p0, Lg/cci;->ab:Lg/dwg;

    invoke-interface {p2}, Lg/cgt;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    invoke-static {p1, v0}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    iput-object v0, p0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0}, Lg/ve;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lg/hbb;->h(Lg/dwg;Ljava/lang/String;)Lg/hbb;

    move-result-object p1

    iget-object v0, p1, Lg/hbb;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lg/cci;->g:Lg/hbb;

    invoke-interface {p2}, Lg/cgt;->e()Lg/cgt;

    move-result-object p1

    iput-object p1, p0, Lg/cci;->ac:Lg/cgt;

    invoke-virtual {p0, p1}, Lg/cci;->aq(Lg/cgt;)V

    sget-object p1, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    invoke-virtual {p0, p1}, Lg/lh;->w(Lg/csv;)V

    return-void
.end method

.method public constructor <init>(Lg/dwg;Lg/ve;I)V
    .locals 3

    invoke-direct {p0}, Lg/lh;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->y:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->i:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->e:Ljava/util/List;

    iput-object p0, p0, Lg/cci;->ai:Lg/cci;

    sget-object v1, Lg/gwz;->NOT_LOADED:Lg/gwz;

    iput-object v1, p0, Lg/cci;->ad:Lg/gwz;

    iput-object v0, p0, Lg/cci;->aa:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->f:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->z:Ljava/util/List;

    iput-object v0, p0, Lg/cci;->h:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lg/cci;->ah:Ljava/util/Map;

    iput-object p1, p0, Lg/cci;->ab:Lg/dwg;

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cci;->ac:Lg/cgt;

    iput-object p2, p0, Lg/cci;->ak:Lg/ve;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cci;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    new-instance v0, Lg/gqc;

    sget-object v1, Lg/frh;->CLASS:Lg/frh;

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    iput-object v0, p0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {p2}, Lg/ve;->r()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lg/hbb;->h(Lg/dwg;Ljava/lang/String;)Lg/hbb;

    move-result-object p1

    iget-object p2, p1, Lg/hbb;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lg/cci;->g:Lg/hbb;

    sget-object p1, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    invoke-virtual {p0, p1}, Lg/lh;->w(Lg/csv;)V

    return-void
.end method

.method public static al(Lg/cci;)V
    .locals 7

    sget-object v0, Lg/ao;->ae:Lg/ao;

    sget-object v1, Lg/ao;->a:Lg/ao;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/feu;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lg/lh;->u(Lg/fky;)V

    iget-object v1, v2, Lg/feu;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lg/cci;->at(Ljava/lang/String;)Lg/hed;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lg/gpg;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ghr;

    invoke-direct {v4, v2}, Lg/gpg;-><init>(Lg/ghr;)V

    invoke-virtual {v3, v4}, Lg/lh;->m(Lg/eue;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Method from annotation default annotation not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/cci;->ak:Lg/ve;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v2

    check-cast v2, Lg/arg;

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, v2, Lg/arg;->a:Ljava/lang/String;

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "SourceFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_9

    iget-object v3, v1, Lg/ve;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lg/ve;->c:Lg/ve;

    :goto_1
    const-string v4, "$"

    if-eqz v1, :cond_7

    iget-object v5, v1, Lg/ve;->e:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v1, Lg/ve;->c:Lg/ve;

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0, v0}, Lg/lh;->u(Lg/fky;)V

    return-void
.end method

.method public static am(Ljava/util/List;)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/hcd;

    iget-object v1, v0, Lg/hcd;->h:Lg/gqc;

    invoke-virtual {v1}, Lg/gqc;->be()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/gqc;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lg/ao;->x:Lg/ao;

    iget-object v2, v0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lg/ghr;->a:Lg/ghr;

    invoke-virtual {v0, v1}, Lg/lh;->m(Lg/eue;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static an(Lg/cci;)V
    .locals 2

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->e:Ljava/lang/String;

    const-string v1, "package-info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/csv;->PACKAGE_INFO:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    sget-object v0, Lg/csv;->DONT_RENAME:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->w(Lg/csv;)V

    :cond_0
    return-void
.end method

.method public static ao(Lg/dwg;Lg/ve;I)Lg/cci;
    .locals 1

    new-instance v0, Lg/cci;

    invoke-direct {v0, p0, p1, p2}, Lg/cci;-><init>(Lg/dwg;Lg/ve;I)V

    sget-object p1, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {v0, p1}, Lg/lh;->w(Lg/csv;)V

    const-string p1, "synthetic"

    iput-object p1, v0, Lg/cci;->x:Ljava/lang/String;

    sget-object p1, Lg/gwz;->PROCESS_COMPLETE:Lg/gwz;

    iput-object p1, v0, Lg/cci;->ad:Lg/gwz;

    iget-object p1, p0, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg/dwg;->g:Ljava/util/HashMap;

    iget-object p2, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lg/dwg;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static ap(Lg/emz;)V
    .locals 5

    invoke-interface {p0}, Lg/emz;->d()Lg/ffr;

    move-result-object p0

    iget-object p0, p0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cdv;

    invoke-interface {v2}, Lg/cdv;->b()Lg/pk;

    move-result-object v3

    sget-object v4, Lg/pk;->DECLARATION:Lg/pk;

    if-ne v3, v4, :cond_1

    check-cast v2, Lg/aev;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v2, Lg/aev;->a:Lg/cfr;

    invoke-interface {v2, v1}, Lg/cfr;->bq(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lg/bev;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lg/bev;-><init>(I)V

    invoke-static {p0, v0}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method public final _by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cci;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Lg/dwg;
    .locals 1

    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    return-object v0
.end method

.method public final aq(Lg/cgt;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lg/cgt;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/lh;->t(Ljava/util/List;)V

    new-instance v0, Lg/gqc;

    sget-object v1, Lg/ao;->d:Lg/ao;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v1

    check-cast v1, Lg/gmk;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/gmk;->a:Ljava/util/Map;

    invoke-interface {p1}, Lg/cgt;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dmk;

    if-eqz v1, :cond_0

    iget v1, v1, Lg/dmk;->a:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lg/cgt;->c()I

    move-result v1

    :goto_0
    sget-object v2, Lg/frh;->CLASS:Lg/frh;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    iput-object v0, p0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {p0, p1}, Lg/cci;->bg(Lg/cgt;)Lg/cwx;

    move-result-object v0

    iput-object v0, p0, Lg/cci;->af:Lg/cwx;

    invoke-interface {p1}, Lg/cgt;->d()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lg/fov;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg/fov;-><init>(I)V

    invoke-static {v0, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {p1}, Lg/cgt;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/cci;->x:Ljava/lang/String;

    iget-object p1, p0, Lg/cci;->d:Lg/gqc;

    iget p1, p1, Lg/gqc;->ab:I

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "Modules not supported yet"

    invoke-virtual {p0, p1}, Lg/ebh;->bu(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    return-void

    :goto_2
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error decode class header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ar(Lg/dsj;)Lg/hcd;
    .locals 3

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcd;

    iget-object v2, v1, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v2, p1}, Lg/dsj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final as(Lg/cci;)V
    .locals 2

    iget-object v0, p0, Lg/cci;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/cci;->e:Ljava/util/List;

    :cond_0
    new-instance v0, Lg/dxa;

    invoke-direct {v0, p0}, Lg/dxa;-><init>(Lg/cci;)V

    invoke-virtual {p1, v0}, Lg/lh;->m(Lg/eue;)V

    iget-object v0, p0, Lg/cci;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final at(Ljava/lang/String;)Lg/hed;
    .locals 3

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    iget-object v2, v1, Lg/hed;->al:Lg/ayu;

    iget-object v2, v2, Lg/ayu;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final au()Lg/cwx;
    .locals 2

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    iget-object v1, p0, Lg/cci;->y:Ljava/util/List;

    invoke-static {v1}, Lg/evh;->e(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/cci;->y:Ljava/util/List;

    invoke-static {v0, v1}, Lg/cwx;->bd(Lg/cwx;Ljava/util/List;)Lg/aaw;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized av()V
    .locals 6

    const-string v0, "Error load class body: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lg/cci;->ag:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/cci;->aj:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lg/cci;->ac:Lg/cgt;

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/cci;->ah:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v2, Lg/bux;

    new-instance v3, Lg/dai;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lg/dai;-><init>(Lg/cci;I)V

    invoke-direct {v2, v3}, Lg/bux;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Lg/bux;

    new-instance v4, Lg/dai;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lg/dai;-><init>(Lg/cci;I)V

    invoke-direct {v3, v4}, Lg/bux;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v1, v2, v3}, Lg/cgt;->b(Lg/bux;Lg/bux;)V

    iget-object v1, v2, Lg/bux;->b:Ljava/util/List;

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    iput-object v1, p0, Lg/cci;->ag:Ljava/util/List;

    iget-object v2, v3, Lg/bux;->b:Ljava/util/List;

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_3
    iput-object v2, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-static {v1}, Lg/cci;->am(Ljava/util/List;)V

    invoke-static {p0}, Lg/cci;->al(Lg/cci;)V

    invoke-static {p0}, Lg/cci;->an(Lg/cci;)V

    invoke-virtual {p0}, Lg/cci;->bj()V

    iget-object v1, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->i:Lg/ur;

    iget-object v1, v1, Lg/ur;->at:Lg/etc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lg/gck;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final aw()V
    .locals 4

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    :try_start_0
    invoke-virtual {v1}, Lg/hed;->bf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Method load error"

    invoke-static {v1, v3, v2}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/cci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cci;

    invoke-virtual {v1}, Lg/cci;->aw()V

    goto :goto_1

    :cond_1
    sget-object v0, Lg/gwz;->LOADED:Lg/gwz;

    iput-object v0, p0, Lg/cci;->ad:Lg/gwz;

    return-void
.end method

.method public final ax()V
    .locals 4

    iget-object v0, p0, Lg/cci;->ac:Lg/cgt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lg/lh;->k:Lg/gxb;

    iput-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {p0}, Lg/cci;->bh()V

    iget-object v1, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->f:Lg/dxb;

    iget-object v2, v1, Lg/dxb;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v1, Lg/bqm;

    iget-object v1, v1, Lg/bqm;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lg/cpa;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/cpa;-><init>(Lg/cci;I)V

    invoke-static {v1, v2}, Lj$/util/Collection$b;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lg/cci;->ag:Ljava/util/List;

    iput-object v1, p0, Lg/cci;->aj:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lg/cci;->ah:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lg/cci;->aq(Lg/cgt;)V

    iget-object v0, p0, Lg/cci;->i:Ljava/util/List;

    new-instance v1, Lg/esk;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lg/esk;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final ay()Lg/gqc;
    .locals 1

    iget-object v0, p0, Lg/cci;->d:Lg/gqc;

    return-object v0
.end method

.method public final az()I
    .locals 2

    iget-object v0, p0, Lg/cci;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lg/cci;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->CLASS:Lg/pk;

    return-object v0
.end method

.method public final ba(Ljava/lang/Object;Z)Lg/chf;
    .locals 1

    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->f:Lg/dxb;

    invoke-virtual {v0, p0, p1, p2}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1
.end method

.method public final bb()Lg/emz;
    .locals 3

    invoke-virtual {p0}, Lg/cci;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lg/emz;->e:Lg/grx;

    return-object v0

    :cond_0
    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->i:Lg/ur;

    iget-object v1, v1, Lg/ur;->ab:Lg/etc;

    invoke-virtual {p0}, Lg/cci;->bn()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v1, v1, Lg/dwg;->v:Lg/at;

    invoke-virtual {v1, p0}, Lg/at;->e(Lg/cci;)Lg/emz;

    move-result-object v1

    invoke-static {v1}, Lg/cci;->ap(Lg/emz;)V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    const-string v2, "Code generation failed"

    invoke-static {p0, v2, v1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lg/grx;

    invoke-static {v1}, Lg/evh;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg/grx;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final bc(Lg/gqc;)V
    .locals 0

    iput-object p1, p0, Lg/cci;->d:Lg/gqc;

    return-void
.end method

.method public final bd()Lg/cci;
    .locals 1

    iget-object v0, p0, Lg/cci;->ai:Lg/cci;

    if-ne v0, p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lg/cci;->bd()Lg/cci;

    move-result-object v0

    return-object v0
.end method

.method public final be(Lg/hcd;)V
    .locals 2

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lg/cci;->ag:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bf(Ljava/lang/String;)Lg/hed;
    .locals 3

    invoke-virtual {p0}, Lg/cci;->av()V

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    iget-object v2, v1, Lg/hed;->al:Lg/ayu;

    iget-object v2, v2, Lg/ayu;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bg(Lg/cgt;)Lg/cwx;
    .locals 3

    invoke-interface {p1}, Lg/cgt;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, p1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lg/cci;->d:Lg/gqc;

    iget v0, v0, Lg/gqc;->ab:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lg/gck;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No super class in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    return-object p1
.end method

.method public final bh()V
    .locals 5

    iget-object v0, p0, Lg/cci;->ad:Lg/gwz;

    sget-object v1, Lg/gwz;->NOT_LOADED:Lg/gwz;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lg/cci;->aj:Ljava/util/List;

    if-eqz v2, :cond_1

    new-instance v3, Lg/esk;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lg/esk;-><init>(I)V

    invoke-static {v2, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lg/cci;->i:Ljava/util/List;

    new-instance v3, Lg/esk;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lg/esk;-><init>(I)V

    invoke-static {v2, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v2, p0, Lg/cci;->ag:Ljava/util/List;

    if-eqz v2, :cond_2

    new-instance v3, Lg/esk;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lg/esk;-><init>(I)V

    invoke-static {v2, v3}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_2
    invoke-virtual {p0}, Lg/lh;->p()V

    iput-object v1, p0, Lg/cci;->ad:Lg/gwz;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bi()Z
    .locals 2

    iget-object v0, p0, Lg/cci;->d:Lg/gqc;

    invoke-virtual {v0}, Lg/gqc;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cci;->af:Lg/cwx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/cwx;->y:Lg/aog;

    iget-object v1, v1, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bj()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lg/cci;->ah:Ljava/util/Map;

    iget-object v0, p0, Lg/cci;->aj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hed;

    iget-object v2, p0, Lg/cci;->ah:Ljava/util/Map;

    iget-object v3, v1, Lg/hed;->al:Lg/ayu;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bk()Z
    .locals 1

    iget-object v0, p0, Lg/cci;->ai:Lg/cci;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bl(Lg/cci;)V
    .locals 2

    iget-object v0, p0, Lg/cci;->aa:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    :goto_0
    iput-object v0, p0, Lg/cci;->aa:Ljava/util/List;

    return-void
.end method

.method public final bm(Lg/jb;)V
    .locals 4

    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->o:Lg/emr;

    invoke-virtual {p0}, Lg/cci;->au()Lg/cwx;

    move-result-object v1

    iget-object v2, p0, Lg/cci;->af:Lg/cwx;

    sget-object v3, Lg/cwx;->t:Lg/aog;

    invoke-virtual {v2, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg/cci;->af:Lg/cwx;

    invoke-virtual {p1, v1, v2}, Lg/jb;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lg/cci;->af:Lg/cwx;

    invoke-virtual {v0, v2, p1}, Lg/emr;->ab(Lg/cwx;Lg/jb;)V

    :cond_0
    iget-object v2, p0, Lg/cci;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cwx;

    invoke-virtual {p1, v1, v3}, Lg/jb;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, p1}, Lg/emr;->ab(Lg/cwx;Lg/jb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final bn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bo(Lg/ekh;)Lg/chf;
    .locals 9

    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->f:Lg/dxb;

    iget-boolean v1, v0, Lg/dxb;->b:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lg/flv;->h:Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->f()Lg/bjt;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lg/ekh;->a:J

    sget-object p1, Lg/mk;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x64

    const/4 v1, 0x1

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_1
    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, p0, v2, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_3
    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_4
    long-to-int p1, v2

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_5
    long-to-int p1, v2

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_6
    long-to-int p1, v2

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, p0, p1, v1}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1, v8}, Lg/dxb;->j(Lg/cci;Ljava/lang/Object;Z)Lg/chf;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/cci;

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0, p1}, Lg/ve;->p(Lg/ve;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/cci;

    if-eqz v0, :cond_1

    check-cast p1, Lg/cci;

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object p1, p1, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0, p1}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getDeclaringClass()Lg/cci;
    .locals 1

    invoke-virtual {p0}, Lg/cci;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/cci;->ai:Lg/cci;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->d:Lg/cwx;

    iget v0, v0, Lg/cwx;->az:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cci;->ak:Lg/ve;

    iget-object v0, v0, Lg/ve;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final typeName()Ljava/lang/String;
    .locals 1

    const-string v0, "class"

    return-object v0
.end method
