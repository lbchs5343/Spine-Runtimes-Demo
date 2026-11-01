.class public final Lg/dtd;
.super Lg/brr;
.source "SourceFile"


# instance fields
.field public final a:Lg/bze;

.field public final synthetic b:Lg/epx;


# direct methods
.method public constructor <init>(Lg/bze;Lg/epx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/dtd;->b:Lg/epx;

    iput-object p1, p0, Lg/dtd;->a:Lg/bze;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    check-cast p1, Lg/eih;

    check-cast p2, Lg/eih;

    iget-object v0, p0, Lg/dtd;->b:Lg/epx;

    invoke-virtual {v0, p1, p2}, Lg/epx;->c(Lg/eih;Lg/eih;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Lg/dtd;->a:Lg/bze;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/m;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lg/dtd;->a:Lg/bze;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/m;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final h(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/dtd;->a:Lg/bze;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/m;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
