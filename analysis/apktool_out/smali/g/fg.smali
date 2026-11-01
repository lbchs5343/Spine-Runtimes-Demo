.class public abstract synthetic Lg/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/BitSet;)Lj$/util/stream/IntStream;
    .locals 0

    invoke-virtual {p0}, Ljava/util/BitSet;->stream()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
