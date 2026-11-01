.class public final Lg/bsp;
.super Lg/cij;
.source "SourceFile"


# instance fields
.field public final a:Lg/bkh;

.field public final b:Lg/ewl;


# direct methods
.method public constructor <init>(Lg/bkh;Lg/ewl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bsp;->a:Lg/bkh;

    iput-object p2, p0, Lg/bsp;->b:Lg/ewl;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lg/cij;

    if-eqz v0, :cond_2

    check-cast p1, Lg/cij;

    iget-object v0, p0, Lg/bsp;->a:Lg/bkh;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lg/bsp;

    iget-object v0, v0, Lg/bsp;->a:Lg/bkh;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lg/bsp;

    iget-object v1, v1, Lg/bsp;->a:Lg/bkh;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    check-cast p1, Lg/bsp;

    iget-object p1, p1, Lg/bsp;->b:Lg/ewl;

    iget-object v0, p0, Lg/bsp;->b:Lg/ewl;

    invoke-virtual {v0, p1}, Lg/ewl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/bsp;->a:Lg/bkh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lg/bsp;->b:Lg/ewl;

    invoke-virtual {v1}, Lg/ewl;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientInfo{clientType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/bsp;->a:Lg/bkh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/bsp;->b:Lg/ewl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
