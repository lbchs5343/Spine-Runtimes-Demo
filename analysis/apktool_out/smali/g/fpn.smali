.class public final Lg/fpn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg/fqv;

.field public b:Lg/ajm;


# virtual methods
.method public final c(Lg/iz;Lg/dtn;)V
    .locals 3

    invoke-virtual {p2}, Lg/dtn;->a()Lg/fqv;

    move-result-object v0

    iget-object v1, p0, Lg/fpn;->a:Lg/fqv;

    const-string v2, "state1"

    invoke-static {v1, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Lg/fpn;->a:Lg/fqv;

    iget-object v1, p0, Lg/fpn;->b:Lg/ajm;

    invoke-interface {v1, p1, p2}, Lg/ajm;->b(Lg/iz;Lg/dtn;)V

    iput-object v0, p0, Lg/fpn;->a:Lg/fqv;

    return-void
.end method
