.class public final Lg/cpd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:[Lg/cqz;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/cpd;->a:I

    new-array p1, p1, [Lg/cqz;

    iput-object p1, p0, Lg/cpd;->b:[Lg/cqz;

    return-void
.end method

.method public constructor <init>(I[Lg/cqz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/cpd;->a:I

    iput-object p2, p0, Lg/cpd;->b:[Lg/cqz;

    return-void
.end method


# virtual methods
.method public final c(I)Lg/cqz;
    .locals 2

    iget v0, p0, Lg/cpd;->a:I

    sub-int/2addr v0, p1

    if-ltz v0, :cond_0

    iget-object p1, p0, Lg/cpd;->b:[Lg/cqz;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    sget-object p1, Lg/cqz;->NARROW:Lg/cqz;

    return-object p1
.end method

.method public final d(Lg/cqz;)I
    .locals 3

    iget v0, p0, Lg/cpd;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/cpd;->a:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lg/cpd;->b:[Lg/cqz;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput-object p1, v1, v0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lg/cpd;->a:I

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v1, "empty"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg/cpd;->b:[Lg/cqz;

    if-lez v0, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " (max)"

    invoke-static {v2, v1, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
