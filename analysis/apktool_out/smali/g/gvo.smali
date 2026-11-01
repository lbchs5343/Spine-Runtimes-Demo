.class public final Lg/gvo;
.super Lg/aog;
.source "SourceFile"


# instance fields
.field public final a:Lg/aog;

.field public final bp:Lg/aog;


# direct methods
.method public constructor <init>(Lg/aog;Lg/aog;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lg/aog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lg/aog;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/gvo;->a:Lg/aog;

    iput-object p2, p0, Lg/gvo;->bp:Lg/aog;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p1, p1, Lg/cwx;->az:I

    iget p2, p2, Lg/cwx;->az:I

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, v0

    iput p2, p0, Lg/cwx;->az:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lg/aog;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lg/gvo;

    iget-object v0, p1, Lg/gvo;->a:Lg/aog;

    iget-object v1, p0, Lg/gvo;->a:Lg/aog;

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/gvo;->bp:Lg/aog;

    iget-object p1, p1, Lg/gvo;->bp:Lg/aog;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bg()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/gvo;->bp:Lg/aog;

    return-object v0
.end method

.method public final bj()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/gvo;->a:Lg/aog;

    return-object v0
.end method

.method public final bm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/gvo;->bp:Lg/aog;

    invoke-virtual {v0}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/gvo;->a:Lg/aog;

    invoke-virtual {v1}, Lg/aog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gvo;->bp:Lg/aog;

    invoke-virtual {v1}, Lg/aog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
