.class public final Lg/gwl;
.super Lg/bwp;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lg/fzq;I)V
    .locals 0

    iput p2, p0, Lg/gwl;->k:I

    invoke-direct {p0, p1}, Lg/bwp;-><init>(Lg/fzq;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lg/gwl;->k:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lg/bwp;->g()V

    iget v0, p0, Lg/bwp;->c:I

    iget-object v1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v1, Lg/fzq;

    invoke-static {v1}, Lg/fzq;->e(Lg/fzq;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lg/bwp;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/bwp;->c:I

    iput v0, p0, Lg/bwp;->d:I

    invoke-static {v1}, Lg/fzq;->c(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iget v1, p0, Lg/bwp;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lg/bwp;->e()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lg/bwp;->g()V

    iget v0, p0, Lg/bwp;->c:I

    iget-object v1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v1, Lg/fzq;

    invoke-static {v1}, Lg/fzq;->e(Lg/fzq;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lg/bwp;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/bwp;->c:I

    iput v0, p0, Lg/bwp;->d:I

    invoke-static {v1}, Lg/fzq;->d(Lg/fzq;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lg/bwp;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lg/bwp;->e()V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lg/bwp;->g()V

    iget v0, p0, Lg/bwp;->c:I

    iget-object v1, p0, Lg/bwp;->b:Ljava/io/Serializable;

    check-cast v1, Lg/fzq;

    invoke-static {v1}, Lg/fzq;->e(Lg/fzq;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lg/bwp;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/bwp;->c:I

    iput v0, p0, Lg/bwp;->d:I

    new-instance v2, Lg/gor;

    invoke-direct {v2, v1, v0}, Lg/gor;-><init>(Lg/fzq;I)V

    invoke-virtual {p0}, Lg/bwp;->e()V

    return-object v2

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
