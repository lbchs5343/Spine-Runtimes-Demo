.class public final Lg/eys;
.super Lg/bjk;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/cfm;)V
    .locals 1

    invoke-direct {p0, p1}, Lg/bjk;-><init>(Lg/cfm;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lg/eys;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Lg/gpn;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lg/gpn;-><init>(I)V

    const-string v3, "|"

    invoke-static {v0, v1, v3, v2}, Lg/evh;->l(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Ljava/util/function/Function;)V

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lg/fsw;Lg/eos;)V
    .locals 2

    iget-object v0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/amj;

    invoke-virtual {p1, p2, v1}, Lg/fsw;->b(Lg/eos;Lg/amj;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lg/amj;Lg/amj;)Z
    .locals 2

    iget-object v0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p2, Lg/cfm;

    if-eqz p1, :cond_0

    check-cast p2, Lg/cfm;

    check-cast p2, Lg/bjk;

    iput-object p0, p2, Lg/bjk;->d:Lg/cfm;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lg/amj;)V
    .locals 1

    instance-of v0, p1, Lg/cfm;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/cfm;

    check-cast v0, Lg/bjk;

    iput-object p0, v0, Lg/bjk;->d:Lg/cfm;

    :cond_0
    iget-object v0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/eys;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/eys;->g:Ljava/util/ArrayList;

    return-object v0
.end method
