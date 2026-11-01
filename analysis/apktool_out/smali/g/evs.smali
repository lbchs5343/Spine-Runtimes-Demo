.class public final Lg/evs;
.super Lg/dfj;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final b:I

.field public final c:Lg/dfj;

.field public final d:I


# direct methods
.method public constructor <init>(Lg/dfj;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/evs;->c:Lg/dfj;

    iput p2, p0, Lg/evs;->d:I

    invoke-virtual {p1}, Lg/dfj;->a()I

    move-result p1

    invoke-static {p2, p3, p1}, Lg/ffb;->p(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lg/evs;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg/evs;->b:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/evs;->b:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lg/evs;->d:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lg/evs;->c:Lg/dfj;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    invoke-static {p1, v0, v2, v3}, Lg/tn;->t(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
