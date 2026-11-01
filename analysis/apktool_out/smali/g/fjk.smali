.class public final Lg/fjk;
.super Lg/fkb;
.source "SourceFile"


# instance fields
.field public final a:Lg/gne;


# direct methods
.method public constructor <init>(Lg/cgy;Lg/gne;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fkb;-><init>(Lg/cgy;)V

    iput-object p2, p0, Lg/fjk;->a:Lg/gne;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Lg/cro;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lg/gvg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/cgy;)Lg/fkb;
    .locals 2

    new-instance v0, Lg/fjk;

    iget-object v1, p0, Lg/fjk;->a:Lg/gne;

    invoke-direct {v0, p1, v1}, Lg/fjk;-><init>(Lg/cgy;Lg/gne;)V

    return-object v0
.end method

.method public final g()Lg/cxc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lg/hco;
    .locals 1

    sget-object v0, Lg/hco;->NOT_READY:Lg/hco;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
