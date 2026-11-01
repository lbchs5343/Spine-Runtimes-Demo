.class public final Lg/eri;
.super Lg/cgo;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lg/ero;

.field public final synthetic h:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Lg/ero;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lg/eri;->d:Lg/ero;

    iput-object p2, p0, Lg/eri;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lg/cgo;-><init>()V

    return-void
.end method


# virtual methods
.method public final _r(I)I
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg/eri;->d:Lg/ero;

    iget-object v0, v0, Lg/cuz;->j:Lg/bze;

    invoke-virtual {v0, p1}, Lg/bze;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lg/eri;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    iget p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;->i:I

    return p1
.end method
