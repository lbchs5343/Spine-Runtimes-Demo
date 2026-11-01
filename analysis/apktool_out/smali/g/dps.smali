.class public final Lg/dps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/to;


# instance fields
.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dps;->h:Landroid/view/View;

    iput-object p2, p0, Lg/dps;->i:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lg/fqk;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Lg/fqk;)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/dps;->g(Lg/fqk;)V

    return-void
.end method

.method public final e(Lg/fqk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    invoke-virtual {p1, p0}, Lg/fqk;->bi(Lg/to;)V

    return-void
.end method

.method public final f(Lg/fqk;)V
    .locals 0

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    invoke-virtual {p1, p0}, Lg/fqk;->bi(Lg/to;)V

    return-void
.end method

.method public final g(Lg/fqk;)V
    .locals 4

    invoke-virtual {p1, p0}, Lg/fqk;->k(Lg/to;)Lg/fqk;

    iget-object p1, p0, Lg/dps;->h:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lg/dps;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
