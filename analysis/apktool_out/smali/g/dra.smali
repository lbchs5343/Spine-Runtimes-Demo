.class public final Lg/dra;
.super Lg/ffw;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lg/dra;


# instance fields
.field private final backing:Lg/fzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/fzq;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/dra;

    sget-object v1, Lg/fzq;->a:Lg/fzq;

    sget-object v1, Lg/fzq;->a:Lg/fzq;

    invoke-direct {v0, v1}, Lg/dra;-><init>(Lg/fzq;)V

    sput-object v0, Lg/dra;->a:Lg/dra;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lg/fzq;

    invoke-direct {v0}, Lg/fzq;-><init>()V

    invoke-direct {p0, v0}, Lg/dra;-><init>(Lg/fzq;)V

    return-void
.end method

.method public constructor <init>(Lg/fzq;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lg/dra;->backing:Lg/fzq;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lg/diw;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/diw;-><init>(Ljava/util/AbstractCollection;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The set cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0, p1}, Lg/fzq;->l(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->p()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->size()I

    move-result v0

    return v0
.end method

.method public final c()Lg/dra;
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->g()Lg/fzq;

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lg/dra;->a:Lg/dra;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0, p1}, Lg/fzq;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg/gwl;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lg/gwl;-><init>(Lg/fzq;I)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->p()V

    invoke-virtual {v0, p1}, Lg/fzq;->j(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lg/fzq;->s(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->p()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dra;->backing:Lg/fzq;

    invoke-virtual {v0}, Lg/fzq;->p()V

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
