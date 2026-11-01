.class public final Lg/fdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:I

.field public e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/jl;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lg/fdz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdz;->f:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lg/fdz;->e:I

    iget-object p1, p1, Lg/jl;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lg/fdz;->a:I

    iput p1, p0, Lg/fdz;->b:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    const-string v2, " is less than minimum 0."

    invoke-static {p1, v1, v2}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/BitSet;ILjava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/fdz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdz;->c:Ljava/lang/Object;

    iput p2, p0, Lg/fdz;->e:I

    iput-object p3, p0, Lg/fdz;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 7

    iget-object v0, p0, Lg/fdz;->f:Ljava/lang/Object;

    check-cast v0, Lg/jl;

    iget-object v1, v0, Lg/jl;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lg/fdz;->b:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lg/fdz;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/fdz;->c:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Lg/gex;

    iget v2, p0, Lg/fdz;->a:I

    invoke-static {v1}, Lg/dcv;->bl(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lg/fqr;-><init>(III)V

    iput-object v0, p0, Lg/fdz;->c:Ljava/lang/Object;

    iput v5, p0, Lg/fdz;->b:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lg/jl;->b:Lg/bto;

    iget v2, p0, Lg/fdz;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lg/bto;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ger;

    if-nez v0, :cond_2

    new-instance v0, Lg/gex;

    iget v2, p0, Lg/fdz;->a:I

    invoke-static {v1}, Lg/dcv;->bl(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lg/fqr;-><init>(III)V

    iput-object v0, p0, Lg/fdz;->c:Ljava/lang/Object;

    iput v5, p0, Lg/fdz;->b:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lg/ger;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lg/ger;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lg/fdz;->a:I

    invoke-static {v2, v1}, Lg/afo;->ah(II)Lg/gex;

    move-result-object v2

    iput-object v2, p0, Lg/fdz;->c:Ljava/lang/Object;

    add-int/2addr v1, v0

    iput v1, p0, Lg/fdz;->a:I

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lg/fdz;->b:I

    :goto_0
    iput v6, p0, Lg/fdz;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/fdz;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/fdz;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/fdz;->g()V

    :cond_0
    iget v0, p0, Lg/fdz;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget v0, p0, Lg/fdz;->a:I

    iget v1, p0, Lg/fdz;->e:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/fdz;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/fdz;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/fdz;->g()V

    :cond_0
    iget v0, p0, Lg/fdz;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/fdz;->c:Ljava/lang/Object;

    check-cast v0, Lg/gex;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lg/fdz;->c:Ljava/lang/Object;

    iput v1, p0, Lg/fdz;->e:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/fdz;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/BitSet;

    iget v1, p0, Lg/fdz;->b:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/fdz;->b:I

    iget v1, p0, Lg/fdz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lg/fdz;->a:I

    iget-object v1, p0, Lg/fdz;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
