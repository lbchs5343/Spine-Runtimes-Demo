.class public final Lg/bdl;
.super Lg/brr;
.source "SourceFile"


# instance fields
.field public final a:Lg/brr;

.field public final b:Lg/gxt;


# direct methods
.method public constructor <init>(Lg/brr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bdl;->a:Lg/brr;

    new-instance v0, Lg/gxt;

    invoke-direct {v0, p1}, Lg/gxt;-><init>(Lg/brr;)V

    iput-object v0, p0, Lg/bdl;->b:Lg/gxt;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/bdl;->a:Lg/brr;

    invoke-virtual {v0, p1, p2}, Lg/brr;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lg/bdl;->a:Lg/brr;

    invoke-virtual {v0, p1, p2}, Lg/brr;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/bdl;->a:Lg/brr;

    invoke-virtual {v0, p1, p2}, Lg/brr;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Lg/bdl;->b:Lg/gxt;

    invoke-virtual {v0, p1, p2}, Lg/gxt;->e(II)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/bdl;->a:Lg/brr;

    invoke-virtual {v0, p1, p2}, Lg/brr;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lg/bdl;->b:Lg/gxt;

    invoke-virtual {v0, p1, p2}, Lg/gxt;->g(II)V

    return-void
.end method

.method public final h(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/bdl;->b:Lg/gxt;

    invoke-virtual {v0, p1, p2, p3}, Lg/gxt;->h(IILjava/lang/Object;)V

    return-void
.end method
