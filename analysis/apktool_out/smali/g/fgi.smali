.class public final Lg/fgi;
.super Lg/cro;
.source "SourceFile"


# instance fields
.field public final a:Lg/cgy;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lg/cgy;I)V
    .locals 0

    iput p2, p0, Lg/fgi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fgi;->a:Lg/cgy;

    return-void
.end method

.method public static c(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Stack;I)V
    .locals 4

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne v0, p3, :cond_0

    new-instance v0, Lg/eae;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/eae;-><init>(I)V

    invoke-static {p2, v0}, Lj$/util/Collection$b;->toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fza;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lg/eae;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/eae;-><init>(I)V

    invoke-static {p1, v0}, Lj$/util/Collection$b;->toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/fza;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p0, p1, p2, p3}, Lg/fgi;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Stack;I)V

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/fza;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
