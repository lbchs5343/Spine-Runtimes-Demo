.class public final Lg/eou;
.super Lg/afp;
.source "SourceFile"


# virtual methods
.method public final o(Ljava/lang/Object;)Z
    .locals 2

    sget-object p1, Lg/afp;->d:Lg/cux;

    const/4 v0, 0x0

    sget-object v1, Lg/afp;->a:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lg/cux;->f(Lg/afp;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lg/afp;->i(Lg/afp;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
