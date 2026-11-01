.class public final Lg/bcc;
.super Lg/pj;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/bcc;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method


# virtual methods
.method public final h(Lg/dwg;)V
    .locals 2

    iget-object v0, p1, Lg/dwg;->i:Lg/ur;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lg/bcc;->a:Ljava/util/Map;

    new-instance v0, Lg/bfb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    iget-object p1, p1, Lg/dwg;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Lg/cci;)Z
    .locals 2

    iget-object v0, p0, Lg/bcc;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lg/cci;->ak:Lg/ve;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    invoke-virtual {v1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lg/tn;->c(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p1, Lg/cci;->i:Ljava/util/List;

    new-instance v0, Lg/agx;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lg/agx;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Lj$/lang/Iterable$b;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    return p1
.end method
