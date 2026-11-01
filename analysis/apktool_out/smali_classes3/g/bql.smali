.class public final Lg/bql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Lg/bny;

.field public final synthetic c:I

.field public d:Lg/eqr;

.field public e:Lg/eqr;


# direct methods
.method public constructor <init>(Lg/bny;I)V
    .locals 0

    iput p2, p0, Lg/bql;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bql;->b:Lg/bny;

    iget-object p2, p1, Lg/bny;->header:Lg/eqr;

    iget-object p2, p2, Lg/eqr;->d:Lg/eqr;

    iput-object p2, p0, Lg/bql;->d:Lg/eqr;

    const/4 p2, 0x0

    iput-object p2, p0, Lg/bql;->e:Lg/eqr;

    iget p1, p1, Lg/bny;->modCount:I

    iput p1, p0, Lg/bql;->a:I

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/bql;->g()Lg/eqr;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lg/eqr;
    .locals 3

    iget-object v0, p0, Lg/bql;->d:Lg/eqr;

    iget-object v1, p0, Lg/bql;->b:Lg/bny;

    iget-object v2, v1, Lg/bny;->header:Lg/eqr;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lg/bny;->modCount:I

    iget v2, p0, Lg/bql;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lg/eqr;->d:Lg/eqr;

    iput-object v1, p0, Lg/bql;->d:Lg/eqr;

    iput-object v0, p0, Lg/bql;->e:Lg/eqr;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lg/bql;->d:Lg/eqr;

    iget-object v1, p0, Lg/bql;->b:Lg/bny;

    iget-object v1, v1, Lg/bny;->header:Lg/eqr;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lg/bql;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/bql;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lg/bql;->g()Lg/eqr;

    move-result-object v0

    iget-object v0, v0, Lg/eqr;->i:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lg/bql;->e:Lg/eqr;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lg/bql;->b:Lg/bny;

    invoke-virtual {v2, v0, v1}, Lg/bny;->g(Lg/eqr;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/bql;->e:Lg/eqr;

    iget v0, v2, Lg/bny;->modCount:I

    iput v0, p0, Lg/bql;->a:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
