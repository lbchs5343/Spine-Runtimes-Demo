.class public final Lg/adr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lg/adr;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lg/adr;->b:[I

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 6

    iget-object v0, p0, Lg/adr;->b:[I

    iget v1, p0, Lg/adr;->d:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lg/adr;->a:I

    and-int/2addr p1, v1

    iput p1, p0, Lg/adr;->d:I

    iget v1, p0, Lg/adr;->c:I

    if-ne p1, v1, :cond_1

    array-length p1, v0

    sub-int v2, p1, v1

    shl-int/lit8 v3, p1, 0x1

    if-ltz v3, :cond_0

    new-array v4, v3, [I

    const/4 v5, 0x0

    invoke-static {v5, v1, p1, v0, v4}, Lg/fuv;->c(III[I[I)V

    iget-object v0, p0, Lg/adr;->b:[I

    iget v1, p0, Lg/adr;->c:I

    invoke-static {v2, v5, v1, v0, v4}, Lg/fuv;->c(III[I[I)V

    iput-object v4, p0, Lg/adr;->b:[I

    iput v5, p0, Lg/adr;->c:I

    iput p1, p0, Lg/adr;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lg/adr;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Max array capacity exceeded"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
