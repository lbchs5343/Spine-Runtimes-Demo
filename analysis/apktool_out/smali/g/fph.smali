.class public final Lg/fph;
.super Ljava/lang/Object;

# interfaces
.implements Lg/eqn;


# instance fields
.field public final a:Lg/cnc;

.field public final b:Lg/cnc;


# direct methods
.method public constructor <init>(Lg/cnc;Lg/cnc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fph;->a:Lg/cnc;

    iput-object p2, p0, Lg/fph;->b:Lg/cnc;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget-object v0, p0, Lg/fph;->a:Lg/cnc;

    invoke-virtual {v0}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fph;->b:Lg/cnc;

    invoke-virtual {v0}, Lg/bgf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dq()Lg/cej;
    .locals 3

    new-instance v0, Lg/gch;

    iget-object v1, p0, Lg/fph;->a:Lg/cnc;

    invoke-virtual {v1}, Lg/cnc;->dq()Lg/cej;

    move-result-object v1

    iget-object v2, p0, Lg/fph;->b:Lg/cnc;

    invoke-virtual {v2}, Lg/cnc;->dq()Lg/cej;

    move-result-object v2

    check-cast v1, Lg/bsb;

    check-cast v2, Lg/bsb;

    invoke-direct {v0, v1, v2}, Lg/gch;-><init>(Lg/bsb;Lg/bsb;)V

    return-object v0
.end method

.method public final ox()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
