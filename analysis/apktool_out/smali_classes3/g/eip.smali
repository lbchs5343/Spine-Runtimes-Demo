.class public final Lg/eip;
.super Lg/dtx;
.source "SourceFile"


# virtual methods
.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Lg/dtx;->f()V

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/dmh;

    invoke-static {v0, p1}, Lg/dmh;->b(Lg/dmh;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lg/dtx;->f()V

    iget-object v0, p0, Lg/dtx;->d:Lg/fsu;

    check-cast v0, Lg/dmh;

    invoke-static {v0}, Lg/dmh;->a(Lg/dmh;)V

    return-void
.end method
