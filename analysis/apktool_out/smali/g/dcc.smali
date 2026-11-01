.class public final Lg/dcc;
.super Lg/fkb;
.source "SourceFile"


# instance fields
.field public final a:Lg/cxc;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lg/cgy;Lg/cxc;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fkb;-><init>(Lg/cgy;)V

    iput-object p2, p0, Lg/dcc;->a:Lg/cxc;

    iput-object p3, p0, Lg/dcc;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d()Lg/cro;
    .locals 3

    new-instance v0, Lg/fgi;

    iget-object v1, p0, Lg/fkb;->j:Lg/cgy;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lg/fgi;-><init>(Lg/cgy;I)V

    return-object v0
.end method

.method public final e()Lg/gvg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/cgy;)Lg/fkb;
    .locals 3

    iget-object v0, p0, Lg/dcc;->a:Lg/cxc;

    invoke-virtual {v0}, Lg/cxc;->g()Lg/cxc;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lg/dcc;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lg/dcc;

    invoke-direct {v2, p1, v0, v1}, Lg/dcc;-><init>(Lg/cgy;Lg/cxc;Ljava/util/List;)V

    return-object v2
.end method

.method public final g()Lg/cxc;
    .locals 1

    iget-object v0, p0, Lg/dcc;->a:Lg/cxc;

    return-object v0
.end method

.method public final h()Lg/hco;
    .locals 1

    sget-object v0, Lg/hco;->READY_TO_COMPARE:Lg/hco;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
