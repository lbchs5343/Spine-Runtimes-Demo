.class public final Lg/gnh;
.super Lg/cwx;
.source "SourceFile"


# instance fields
.field public final a:[Lg/bjt;


# direct methods
.method public constructor <init>([Lg/bjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gnh;->a:[Lg/bjt;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lg/cwx;->az:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lg/gnh;

    iget-object p1, p1, Lg/gnh;->a:[Lg/bjt;

    iget-object v0, p0, Lg/gnh;->a:[Lg/bjt;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()[Lg/bjt;
    .locals 1

    iget-object v0, p0, Lg/gnh;->a:[Lg/bjt;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lg/cwx;
    .locals 2

    sget-object v0, Lg/bjt;->OBJECT:Lg/bjt;

    invoke-virtual {p0, v0}, Lg/gnh;->o(Lg/bjt;)Z

    move-result v0

    sget-object v1, Lg/cwx;->t:Lg/aog;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lg/bjt;->ARRAY:Lg/bjt;

    invoke-virtual {p0, v0}, Lg/gnh;->o(Lg/bjt;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lg/aoe;

    invoke-direct {v0, v1}, Lg/aoe;-><init>(Lg/cwx;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lg/gnh;->a:[Lg/bjt;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lg/cff;

    invoke-direct {v1, v0}, Lg/cff;-><init>(Lg/bjt;)V

    return-object v1
.end method

.method public final o(Lg/bjt;)Z
    .locals 5

    iget-object v0, p0, Lg/gnh;->a:[Lg/bjt;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lg/gnh;->a:[Lg/bjt;

    array-length v1, v0

    invoke-static {}, Lg/bjt;->values()[Lg/bjt;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const-string v0, "??"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "??["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v3, v0

    :goto_0
    if-nez v3, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v3, :cond_3

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
