.class public final synthetic Lj$/util/stream/Stream$a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs of([Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lj$/com/android/tools/r8/a;->S([Ljava/lang/Object;II)Lj$/util/T;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/d2;

    invoke-static {p0}, Lj$/util/stream/a3;->k(Lj$/util/Spliterator;)I

    move-result v2

    invoke-direct {v0, p0, v2, v1}, Lj$/util/stream/a;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method
