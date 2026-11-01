.class public final Lj$/util/stream/H;
.super Lj$/util/stream/K;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/m2;


# static fields
.field public static final c:Lj$/util/stream/F;

.field public static final d:Lj$/util/stream/F;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj$/util/stream/F;

    sget-object v2, Lj$/util/stream/b3;->INT_VALUE:Lj$/util/stream/b3;

    new-instance v4, Lj$/util/stream/p;

    const/16 v1, 0xc

    invoke-direct {v4, v1}, Lj$/util/stream/p;-><init>(I)V

    new-instance v5, Lj$/util/stream/p;

    const/16 v1, 0xd

    invoke-direct {v5, v1}, Lj$/util/stream/p;-><init>(I)V

    const/4 v1, 0x1

    sget-object v3, Lj$/util/OptionalInt;->c:Lj$/util/OptionalInt;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/F;-><init>(ZLj$/util/stream/b3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v0, Lj$/util/stream/H;->c:Lj$/util/stream/F;

    new-instance v1, Lj$/util/stream/F;

    new-instance v5, Lj$/util/stream/p;

    const/16 v0, 0xc

    invoke-direct {v5, v0}, Lj$/util/stream/p;-><init>(I)V

    new-instance v6, Lj$/util/stream/p;

    const/16 v0, 0xd

    invoke-direct {v6, v0}, Lj$/util/stream/p;-><init>(I)V

    move-object v4, v3

    move-object v3, v2

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/F;-><init>(ZLj$/util/stream/b3;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v1, Lj$/util/stream/H;->d:Lj$/util/stream/F;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/K;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/l;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/K;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/K;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lj$/util/OptionalInt;

    invoke-direct {v1, v0}, Lj$/util/OptionalInt;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
