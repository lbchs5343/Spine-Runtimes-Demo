.class public final Lg/aqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public a:I

.field public b:I

.field public final c:Lg/ddt;

.field public final synthetic d:I

.field public e:I


# direct methods
.method public constructor <init>(Lg/dcf;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/aqx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aqx;->c:Lg/ddt;

    iput p2, p0, Lg/aqx;->e:I

    const/4 p2, -0x1

    iput p2, p0, Lg/aqx;->a:I

    invoke-static {p1}, Lg/dcf;->c(Lg/dcf;)I

    move-result p1

    iput p1, p0, Lg/aqx;->b:I

    return-void
.end method

.method public constructor <init>(Lg/fsq;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/aqx;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aqx;->c:Lg/ddt;

    iput p2, p0, Lg/aqx;->e:I

    const/4 p2, -0x1

    iput p2, p0, Lg/aqx;->a:I

    invoke-static {p1}, Lg/fsq;->c(Lg/fsq;)I

    move-result p1

    iput p1, p0, Lg/aqx;->b:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/aqx;->g()V

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/fsq;

    iget v1, p0, Lg/aqx;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/aqx;->e:I

    invoke-virtual {v0, v1, p1}, Lg/fsq;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lg/aqx;->a:I

    invoke-static {v0}, Lg/fsq;->c(Lg/fsq;)I

    move-result p1

    iput p1, p0, Lg/aqx;->b:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lg/aqx;->f()V

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/dcf;

    iget v1, p0, Lg/aqx;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/aqx;->e:I

    invoke-virtual {v0, v1, p1}, Lg/dcf;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lg/aqx;->a:I

    invoke-static {v0}, Lg/dcf;->c(Lg/dcf;)I

    move-result p1

    iput p1, p0, Lg/aqx;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/dcf;

    invoke-static {v0}, Lg/dcf;->a(Lg/dcf;)Lg/fsq;

    move-result-object v0

    invoke-static {v0}, Lg/fsq;->c(Lg/fsq;)I

    move-result v0

    iget v1, p0, Lg/aqx;->b:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/fsq;

    invoke-static {v0}, Lg/fsq;->c(Lg/fsq;)I

    move-result v0

    iget v1, p0, Lg/aqx;->b:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/aqx;->e:I

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/fsq;

    invoke-static {v1}, Lg/fsq;->b(Lg/fsq;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lg/aqx;->e:I

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/dcf;

    invoke-static {v1}, Lg/dcf;->b(Lg/dcf;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/aqx;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lg/aqx;->e:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
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

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/aqx;->g()V

    iget v0, p0, Lg/aqx;->e:I

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/fsq;

    invoke-static {v1}, Lg/fsq;->b(Lg/fsq;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lg/aqx;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/aqx;->e:I

    iput v0, p0, Lg/aqx;->a:I

    invoke-static {v1}, Lg/fsq;->d(Lg/fsq;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lg/aqx;->a:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lg/aqx;->f()V

    iget v0, p0, Lg/aqx;->e:I

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/dcf;

    invoke-static {v1}, Lg/dcf;->b(Lg/dcf;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lg/aqx;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/aqx;->e:I

    iput v0, p0, Lg/aqx;->a:I

    invoke-static {v1}, Lg/dcf;->d(Lg/dcf;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lg/dcf;->e(Lg/dcf;)I

    move-result v1

    iget v2, p0, Lg/aqx;->a:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/aqx;->e:I

    return v0

    :pswitch_0
    iget v0, p0, Lg/aqx;->e:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/aqx;->g()V

    iget v0, p0, Lg/aqx;->e:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/aqx;->e:I

    iput v0, p0, Lg/aqx;->a:I

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/fsq;

    invoke-static {v0}, Lg/fsq;->d(Lg/fsq;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lg/aqx;->a:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/dcf;

    invoke-virtual {p0}, Lg/aqx;->f()V

    iget v1, p0, Lg/aqx;->e:I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/aqx;->e:I

    iput v1, p0, Lg/aqx;->a:I

    invoke-static {v0}, Lg/dcf;->d(Lg/dcf;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lg/dcf;->e(Lg/dcf;)I

    move-result v0

    iget v2, p0, Lg/aqx;->a:I

    add-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lg/aqx;->e:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    return v0

    :pswitch_0
    iget v0, p0, Lg/aqx;->e:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/fsq;

    invoke-virtual {p0}, Lg/aqx;->g()V

    iget v1, p0, Lg/aqx;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lg/fsq;->m(I)Ljava/lang/Object;

    iget v1, p0, Lg/aqx;->a:I

    iput v1, p0, Lg/aqx;->e:I

    iput v2, p0, Lg/aqx;->a:I

    invoke-static {v0}, Lg/fsq;->c(Lg/fsq;)I

    move-result v0

    iput v0, p0, Lg/aqx;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v0, Lg/dcf;

    invoke-virtual {p0}, Lg/aqx;->f()V

    iget v1, p0, Lg/aqx;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lg/dcf;->m(I)Ljava/lang/Object;

    iget v1, p0, Lg/aqx;->a:I

    iput v1, p0, Lg/aqx;->e:I

    iput v2, p0, Lg/aqx;->a:I

    invoke-static {v0}, Lg/dcf;->c(Lg/dcf;)I

    move-result v0

    iput v0, p0, Lg/aqx;->b:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg/aqx;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/aqx;->g()V

    iget v0, p0, Lg/aqx;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/fsq;

    invoke-virtual {v1, v0, p1}, Lg/fsq;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lg/aqx;->f()V

    iget v0, p0, Lg/aqx;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lg/aqx;->c:Lg/ddt;

    check-cast v1, Lg/dcf;

    invoke-virtual {v1, v0, p1}, Lg/dcf;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
