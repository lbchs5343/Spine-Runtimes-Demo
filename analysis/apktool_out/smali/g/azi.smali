.class public final Lg/azi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eue;


# instance fields
.field public final a:Lg/eek;

.field public final b:Lg/fza;

.field public final f:Lg/fza;


# direct methods
.method public constructor <init>(Lg/fza;Lg/fza;Lg/eek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/azi;->b:Lg/fza;

    iput-object p2, p0, Lg/azi;->f:Lg/fza;

    iput-object p3, p0, Lg/azi;->a:Lg/eek;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lg/azi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lg/fky;
    .locals 1

    sget-object v0, Lg/acq;->t:Lg/acq;

    return-object v0
.end method

.method public final synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lg/azi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lg/azi;

    iget-object v2, p0, Lg/azi;->b:Lg/fza;

    iget-object v3, p1, Lg/azi;->b:Lg/fza;

    invoke-virtual {v2, v3}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/azi;->f:Lg/fza;

    iget-object v3, p1, Lg/azi;->f:Lg/fza;

    invoke-virtual {v2, v3}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lg/azi;->a:Lg/eek;

    iget-object v2, p0, Lg/azi;->a:Lg/eek;

    if-ne v2, p1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Lg/eek;->_p(Lg/eek;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lg/eek;->ai:Lg/gks;

    iget-object v4, p1, Lg/eek;->ai:Lg/gks;

    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lg/eek;->aj:Ljava/util/List;

    iget-object p1, p1, Lg/eek;->aj:Ljava/util/List;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/azi;->b:Lg/fza;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lg/azi;->f:Lg/fza;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lg/azi;->a:Lg/eek;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EDGE_INSN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/azi;->b:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/azi;->f:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/azi;->a:Lg/eek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
