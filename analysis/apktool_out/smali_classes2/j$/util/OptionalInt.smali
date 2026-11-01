.class public final Lj$/util/OptionalInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lj$/util/OptionalInt;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/OptionalInt;

    invoke-direct {v0}, Lj$/util/OptionalInt;-><init>()V

    sput-object v0, Lj$/util/OptionalInt;->c:Lj$/util/OptionalInt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    iput v0, p0, Lj$/util/OptionalInt;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    iput p1, p0, Lj$/util/OptionalInt;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj$/util/OptionalInt;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lj$/util/OptionalInt;

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lj$/util/OptionalInt;->a:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    iget p1, p1, Lj$/util/OptionalInt;->b:I

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lj$/util/OptionalInt;->a:Z

    if-ne v0, p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAsInt()I
    .locals 2

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/OptionalInt;->b:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public orElse(I)I
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lj$/util/OptionalInt;->b:I

    :cond_0
    return p1
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lj$/util/OptionalInt;->b:I

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lj$/util/OptionalInt;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionalInt["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj$/util/OptionalInt;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "OptionalInt.empty"

    return-object v0
.end method
