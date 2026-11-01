.class public final Lg/elt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dun;

.field public final b:Lg/fza;

.field public final c:Lg/fza;

.field public final d:Lj$/util/Optional;


# direct methods
.method public constructor <init>(Lg/fza;Lg/fza;Lg/dun;)V
    .locals 1

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lg/elt;-><init>(Lg/fza;Lg/fza;Lg/dun;Lj$/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lg/fza;Lg/fza;Lg/dun;Lj$/util/Optional;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/elt;->b:Lg/fza;

    iput-object p2, p0, Lg/elt;->c:Lg/fza;

    iput-object p4, p0, Lg/elt;->d:Lj$/util/Optional;

    iput-object p3, p0, Lg/elt;->a:Lg/dun;

    invoke-virtual {p0}, Lg/elt;->f()Z

    move-result p1

    const-string p2, "\" type"

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lj$/util/Optional;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lg/gck;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to add a null exception handler as an edge of \""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lg/elt;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p4}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lg/gck;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Attempted to add an exception handler as an edge of \""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final e()Lg/aea;
    .locals 2

    invoke-virtual {p0}, Lg/elt;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elt;->d:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/aea;

    return-object v0

    :cond_0
    new-instance v0, Lg/gck;

    const-string v1, "Attempted to get the exception handler of a handler edge type, however none was present"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lg/gck;

    const-string v1, "Attempted to get the exception handler of a non-handler edge type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lg/elt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lg/elt;

    iget-object v0, p0, Lg/elt;->b:Lg/fza;

    iget-object v2, p1, Lg/elt;->b:Lg/fza;

    invoke-virtual {v0, v2}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elt;->c:Lg/fza;

    iget-object v2, p1, Lg/elt;->c:Lg/fza;

    invoke-virtual {v0, v2}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elt;->d:Lj$/util/Optional;

    iget-object v2, p1, Lg/elt;->d:Lj$/util/Optional;

    invoke-virtual {v0, v2}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/elt;->a:Lg/dun;

    iget-object p1, p1, Lg/elt;->a:Lg/dun;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lg/elt;->a:Lg/dun;

    sget-object v1, Lg/dun;->HANDLER:Lg/dun;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lg/elt;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/elt;->b:Lg/fza;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lg/elt;->c:Lg/fza;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lg/elt;->a:Lg/dun;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lg/elt;->d:Lj$/util/Optional;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TryEdge: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/elt;->a:Lg/dun;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/elt;->b:Lg/fza;

    invoke-virtual {v1}, Lg/fza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/elt;->c:Lg/fza;

    invoke-virtual {v1}, Lg/fza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] - Handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/elt;->d:Lj$/util/Optional;

    invoke-virtual {v1}, Lj$/util/Optional;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aea;

    invoke-virtual {v1}, Lg/aea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
