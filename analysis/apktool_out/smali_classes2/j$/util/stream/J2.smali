.class public final Lj$/util/stream/J2;
.super Lj$/util/stream/e2;
.source "SourceFile"


# instance fields
.field public final s:Z

.field public final t:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lj$/util/stream/g2;)V
    .locals 2

    sget v0, Lj$/util/stream/a3;->q:I

    sget v1, Lj$/util/stream/a3;->o:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/J2;->s:Z

    sget-object p1, Lj$/util/e;->INSTANCE:Lj$/util/e;

    iput-object p1, p0, Lj$/util/stream/J2;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/g2;Ljava/util/Comparator;)V
    .locals 2

    sget v0, Lj$/util/stream/a3;->q:I

    sget v1, Lj$/util/stream/a3;->p:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/J2;->s:Z

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lj$/util/stream/J2;->t:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final M0(Lj$/util/stream/x1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/I0;
    .locals 2

    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/J2;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/x1;->j0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/x1;->j0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/I0;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/I0;->m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/J2;->t:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p2, Lj$/util/stream/L0;

    invoke-direct {p2, p1}, Lj$/util/stream/L0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final P0(ILj$/util/stream/o2;)Lj$/util/stream/o2;
    .locals 1

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/a3;->SORTED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->l(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/J2;->s:Z

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/a3;->SIZED:Lj$/util/stream/a3;

    invoke-virtual {v0, p1}, Lj$/util/stream/a3;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/O2;

    iget-object v0, p0, Lj$/util/stream/J2;->t:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/C2;-><init>(Lj$/util/stream/o2;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/K2;

    iget-object v0, p0, Lj$/util/stream/J2;->t:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/C2;-><init>(Lj$/util/stream/o2;Ljava/util/Comparator;)V

    return-object p1
.end method
