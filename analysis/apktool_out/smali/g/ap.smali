.class public final Lg/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/fza;

.field public final b:Ljava/util/HashSet;

.field public final c:I


# direct methods
.method public constructor <init>(Lg/fza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ap;->a:Lg/fza;

    iget-object p1, p1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lg/ap;->c:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lg/ap;->b:Ljava/util/HashSet;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lg/ap;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lg/ap;->b:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(Lg/ap;Lg/gvg;I)V
    .locals 4

    iget-object v0, p0, Lg/ap;->b:Ljava/util/HashSet;

    iget-object v1, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    iget-object p0, p0, Lg/ap;->a:Lg/fza;

    if-eq v1, p0, :cond_0

    goto :goto_2

    :cond_0
    iget p0, p1, Lg/gvg;->e:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p1, Lg/gvg;->b:I

    sub-int/2addr p0, p1

    if-nez p0, :cond_2

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
