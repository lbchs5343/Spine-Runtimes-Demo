.class public final Lg/dsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/chf;


# instance fields
.field public final a:Lg/cwx;

.field public b:Ljava/lang/String;

.field public final d:Lg/ve;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dsj;->d:Lg/ve;

    iput-object p2, p0, Lg/dsj;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/dsj;->a:Lg/cwx;

    iput-object p2, p0, Lg/dsj;->b:Ljava/lang/String;

    return-void
.end method

.method public static f(Lg/dwg;Lg/cba;)Lg/dsj;
    .locals 3

    invoke-interface {p1}, Lg/cba;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v0

    new-instance v1, Lg/dsj;

    invoke-interface {p1}, Lg/cba;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lg/cba;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object p0, p0, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {p0, v1}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Lg/dsj;
    .locals 0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lg/dsj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/dsj;

    iget-object v2, p0, Lg/dsj;->e:Ljava/lang/String;

    iget-object v3, p1, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/dsj;->a:Lg/cwx;

    iget-object v3, p1, Lg/dsj;->a:Lg/cwx;

    invoke-virtual {v2, v3}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/dsj;->d:Lg/ve;

    iget-object p1, p1, Lg/dsj;->d:Lg/ve;

    invoke-virtual {v2, p1}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lg/dsj;->e:Ljava/lang/String;

    iget-object v1, p0, Lg/dsj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/dsj;->a:Lg/cwx;

    iget v1, v1, Lg/cwx;->az:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/dsj;->d:Lg/ve;

    iget-object v1, v1, Lg/ve;->d:Lg/cwx;

    iget v1, v1, Lg/cwx;->az:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/dsj;->d:Lg/ve;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dsj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/dsj;->a:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
