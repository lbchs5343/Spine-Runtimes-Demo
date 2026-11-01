.class public final synthetic Lg/gsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;

.field public final synthetic b:Lg/eek;

.field public final synthetic c:Ljava/util/HashMap;

.field public final synthetic d:Lg/fza;


# direct methods
.method public synthetic constructor <init>(Lg/eek;Ljava/util/HashMap;Lg/fza;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gsl;->b:Lg/eek;

    iput-object p2, p0, Lg/gsl;->c:Ljava/util/HashMap;

    iput-object p3, p0, Lg/gsl;->d:Lg/fza;

    iput-object p4, p0, Lg/gsl;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/m;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/m;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lg/fza;

    sget-object v0, Lg/acq;->bh:Lg/acq;

    iget-object v1, p1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->k(Lg/fky;)Lg/eue;

    move-result-object v0

    check-cast v0, Lg/eng;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lg/eng;->a:Lg/aea;

    iget-object v2, v2, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lg/gsl;->b:Lg/eek;

    invoke-virtual {v4, v1}, Lg/eek;->j(I)Lg/gsh;

    move-result-object v1

    invoke-static {v3, v1}, Lg/dec;->e(Ljava/util/List;Lg/gsh;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/gsl;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lg/gsl;->d:Lg/fza;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg/gsl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return v2
.end method
