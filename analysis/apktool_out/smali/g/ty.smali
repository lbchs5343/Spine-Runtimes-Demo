.class public final Lg/ty;
.super Lg/fkb;
.source "SourceFile"


# instance fields
.field public final a:Lg/fkb;


# direct methods
.method public constructor <init>(Lg/fkb;)V
    .locals 1

    iget-object v0, p1, Lg/fkb;->j:Lg/cgy;

    invoke-direct {p0, v0}, Lg/fkb;-><init>(Lg/cgy;)V

    iput-object p1, p0, Lg/ty;->a:Lg/fkb;

    return-void
.end method


# virtual methods
.method public final d()Lg/cro;
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
    .locals 1

    new-instance p1, Lg/ty;

    iget-object v0, p0, Lg/ty;->a:Lg/fkb;

    invoke-direct {p1, v0}, Lg/ty;-><init>(Lg/fkb;)V

    return-object p1
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
