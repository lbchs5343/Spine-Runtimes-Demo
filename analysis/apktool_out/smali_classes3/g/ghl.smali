.class public final Lg/ghl;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lg/guu;


# instance fields
.field public final a:Lg/fej;


# direct methods
.method public constructor <init>(Lg/fej;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lg/ghl;->a:Lg/fej;

    return-void
.end method


# virtual methods
.method public final b(Lg/cyb;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ghl;->a:Lg/fej;

    invoke-virtual {v0, p1}, Lg/fej;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lg/nw;

    invoke-direct {v0, p0}, Lg/nw;-><init>(Lg/ghl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lg/bjs;

    invoke-direct {v0, p0, p1}, Lg/bjs;-><init>(Lg/ghl;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/ghl;->a:Lg/fej;

    invoke-virtual {v0}, Lg/fej;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Lg/guu;
    .locals 0

    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ghl;->a:Lg/fej;

    iget-object v0, v0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/ghl;->a:Lg/fej;

    iget-object v0, v0, Lg/fej;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
