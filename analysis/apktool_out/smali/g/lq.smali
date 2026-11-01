.class public final Lg/lq;
.super Lg/fkb;
.source "SourceFile"


# instance fields
.field public final a:Lg/fza;

.field public final b:Lg/cxc;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/cgy;Lg/cxc;Ljava/util/ArrayList;Lg/fza;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/fkb;-><init>(Lg/cgy;)V

    iput-object p3, p0, Lg/lq;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lg/lq;->a:Lg/fza;

    iput-object p2, p0, Lg/lq;->b:Lg/cxc;

    return-void
.end method


# virtual methods
.method public final d()Lg/cro;
    .locals 3

    new-instance v0, Lg/fgi;

    iget-object v1, p0, Lg/fkb;->j:Lg/cgy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/fgi;-><init>(Lg/cgy;I)V

    return-object v0
.end method

.method public final e()Lg/gvg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lg/cgy;)Lg/fkb;
    .locals 4

    new-instance v0, Lg/lq;

    iget-object v1, p0, Lg/lq;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lg/lq;->a:Lg/fza;

    iget-object v3, p0, Lg/lq;->b:Lg/cxc;

    invoke-direct {v0, p1, v3, v1, v2}, Lg/lq;-><init>(Lg/cgy;Lg/cxc;Ljava/util/ArrayList;Lg/fza;)V

    return-object v0
.end method

.method public final g()Lg/cxc;
    .locals 1

    iget-object v0, p0, Lg/lq;->b:Lg/cxc;

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
