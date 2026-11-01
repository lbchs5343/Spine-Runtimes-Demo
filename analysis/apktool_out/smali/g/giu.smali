.class public final Lg/giu;
.super Ljava/util/BitSet;
.source "SourceFile"


# static fields
.field public static final a:Lg/giu;

.field private static final serialVersionUID:J = -0x10951586df976ccfL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/giu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lg/giu;->a:Lg/giu;

    return-void
.end method


# virtual methods
.method public final and(Ljava/util/BitSet;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final andNot(Ljava/util/BitSet;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final cardinality()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(II)Ljava/util/BitSet;
    .locals 0

    sget-object p1, Lg/giu;->a:Lg/giu;

    return-object p1
.end method

.method public final get(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final length()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final nextSetBit(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final or(Ljava/util/BitSet;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(IIZ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(IZ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final xor(Ljava/util/BitSet;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
