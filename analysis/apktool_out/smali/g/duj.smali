.class public final Lg/duj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Z

.field public final synthetic b:Lg/akj;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lg/akj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/duj;->b:Lg/akj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/duj;->a:Z

    iget-object p1, p1, Lg/akj;->f:Ljava/lang/Object;

    check-cast p1, Lg/cmg;

    iget p1, p1, Lg/cmg;->g:I

    iput p1, p0, Lg/duj;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lg/duj;->d:I

    iget v1, p0, Lg/duj;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg/duj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/duj;->d:I

    iget-object v1, p0, Lg/duj;->b:Lg/akj;

    iget-object v1, v1, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    iget-object v1, v1, Lg/cmg;->j:[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lg/duj;->d:I

    iput-boolean v2, p0, Lg/duj;->a:Z

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lg/duj;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/duj;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/duj;->d:I

    iget v1, p0, Lg/duj;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lg/duj;->c:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/duj;->a:Z

    iget-object v1, p0, Lg/duj;->b:Lg/akj;

    iget-object v1, v1, Lg/akj;->f:Ljava/lang/Object;

    check-cast v1, Lg/cmg;

    invoke-virtual {v1, v0}, Lg/cmg;->m(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
