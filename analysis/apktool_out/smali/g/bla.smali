.class public final Lg/bla;
.super Lg/boy;
.source "SourceFile"


# virtual methods
.method public final a(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/high16 p1, 0x8000000

    iget-object v1, p0, Lg/djy;->c:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Lg/djy;->d(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lg/djy;->e(I)V

    return-void
.end method
