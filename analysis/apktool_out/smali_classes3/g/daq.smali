.class public final Lg/daq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/util/Iterator;

.field public final synthetic b:Lg/eol;

.field public c:I

.field public d:Z


# direct methods
.method public synthetic constructor <init>(Lg/eol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/daq;->b:Lg/eol;

    const/4 p1, -0x1

    iput p1, p0, Lg/daq;->c:I

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lg/daq;->a:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/daq;->b:Lg/eol;

    iget-object v0, v0, Lg/eol;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lg/daq;->a:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lg/daq;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lg/daq;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lg/daq;->b:Lg/eol;

    iget v3, v2, Lg/eol;->f:I

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lg/eol;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/daq;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/daq;->d:Z

    iget v1, p0, Lg/daq;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lg/daq;->c:I

    iget-object v0, p0, Lg/daq;->b:Lg/eol;

    iget v2, v0, Lg/eol;->f:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lg/eol;->e:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lg/asf;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lg/daq;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lg/daq;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/daq;->d:Z

    sget v0, Lg/eol;->a:I

    iget-object v0, p0, Lg/daq;->b:Lg/eol;

    invoke-virtual {v0}, Lg/eol;->n()V

    iget v1, p0, Lg/daq;->c:I

    iget v2, v0, Lg/eol;->f:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lg/daq;->c:I

    invoke-virtual {v0, v1}, Lg/eol;->i(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/daq;->e()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
