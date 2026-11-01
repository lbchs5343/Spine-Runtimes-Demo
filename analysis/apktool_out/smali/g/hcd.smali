.class public final Lg/hcd;
.super Lg/ebh;
.source "SourceFile"

# interfaces
.implements Lg/chf;


# instance fields
.field public d:Ljava/util/List;

.field public e:Lg/cwx;

.field public final f:Lg/cci;

.field public final g:Lg/dsj;

.field public h:Lg/gqc;


# direct methods
.method public constructor <init>(Lg/cci;Lg/dsj;I)V
    .locals 1

    invoke-direct {p0}, Lg/lh;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lg/hcd;->d:Ljava/util/List;

    iput-object p1, p0, Lg/hcd;->f:Lg/cci;

    iput-object p2, p0, Lg/hcd;->g:Lg/dsj;

    iget-object p1, p2, Lg/dsj;->a:Lg/cwx;

    iput-object p1, p0, Lg/hcd;->e:Lg/cwx;

    new-instance p1, Lg/gqc;

    sget-object p2, Lg/frh;->FIELD:Lg/frh;

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0}, Lg/gqc;-><init>(ILjava/lang/Object;I)V

    iput-object p1, p0, Lg/hcd;->h:Lg/gqc;

    return-void
.end method


# virtual methods
.method public final _by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/hcd;->f:Lg/cci;

    iget-object v0, v0, Lg/cci;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Lg/dwg;
    .locals 1

    iget-object v0, p0, Lg/hcd;->f:Lg/cci;

    iget-object v0, v0, Lg/cci;->ab:Lg/dwg;

    return-object v0
.end method

.method public final ay()Lg/gqc;
    .locals 1

    iget-object v0, p0, Lg/hcd;->h:Lg/gqc;

    return-object v0
.end method

.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->FIELD:Lg/pk;

    return-object v0
.end method

.method public final bc(Lg/gqc;)V
    .locals 0

    iput-object p1, p0, Lg/hcd;->h:Lg/gqc;

    return-void
.end method

.method public final c()Lg/dsj;
    .locals 1

    iget-object v0, p0, Lg/hcd;->g:Lg/dsj;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/hcd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/hcd;

    iget-object v0, p0, Lg/hcd;->g:Lg/dsj;

    iget-object p1, p1, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v0, p1}, Lg/dsj;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getDeclaringClass()Lg/cci;
    .locals 1

    iget-object v0, p0, Lg/hcd;->f:Lg/cci;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/hcd;->g:Lg/dsj;

    invoke-virtual {v0}, Lg/dsj;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/hcd;->g:Lg/dsj;

    iget-object v2, v1, Lg/dsj;->d:Lg/ve;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/hcd;->e:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeName()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method
