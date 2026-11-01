.class public final Lcom/bykv/vk/openvk/preload/dq/d/dq/s;
.super Lcom/bykv/vk/openvk/preload/dq/p/dq;


# static fields
.field private static final ox:Ljava/io/Reader;

.field private static final p:Ljava/lang/Object;


# instance fields
.field private ia:[I

.field private iw:I

.field private mn:[Ljava/lang/String;

.field private s:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s$1;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ox:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->p:Ljava/lang/Object;

    return-void
.end method

.method private gh()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    return-object v2
.end method

.method private r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iput v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->d:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final dq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/kk;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dq(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v4, v3, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v3, v3, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ia()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->s:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    iget v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final ig()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/f;->ox()D

    move-result-wide v0

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/dq/p/dq;->dq:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public final iw()Lcom/bykv/vk/openvk/preload/dq/p/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->o:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/bykv/vk/openvk/preload/dq/q;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->s:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->p:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_3
    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->d:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_4
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/q;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ox:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_5
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/kk;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_6
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/f;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/f;->dq:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ia:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_8
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/bykv/vk/openvk/preload/dq/mp;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    return-object v0

    :cond_b
    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->p:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final jy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->s:Lcom/bykv/vk/openvk/preload/dq/p/d;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia()Ljava/lang/String;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public final kk()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/f;->d()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public final mn()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->s:[Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final mp()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/f;->p()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public final no()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->kk:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ia:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/f;->iw()Z

    move-result v0

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public final ox()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->ox:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/q;

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/dq/q;->dq:Lcom/bykv/vk/openvk/preload/dq/d/ia;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/d/ia;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bykv/vk/openvk/preload/dq/p/d;->p:Lcom/bykv/vk/openvk/preload/dq/p/d;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->dq(Lcom/bykv/vk/openvk/preload/dq/p/d;)V

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v0, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final q()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->mn:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/bykv/vk/openvk/preload/dq/p/d;->iw:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->mn()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/dq/f;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/dq/f;->s()I

    move-result v0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->gh()Ljava/lang/Object;

    iget v1, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->ia:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public final s()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/dq/d/dq/s;->iw()Lcom/bykv/vk/openvk/preload/dq/p/d;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->p:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bykv/vk/openvk/preload/dq/p/d;->d:Lcom/bykv/vk/openvk/preload/dq/p/d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "s"

    return-object v0
.end method
