.class public abstract Lg/akd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/akd;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    return-void
.end method

.method public static b(Lg/guv;Lg/fza;Lg/fza;)V
    .locals 2

    iget-object v0, p0, Lg/guv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aea;

    iget-object v1, v1, Lg/aea;->i:Lg/fza;

    invoke-static {p1, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    if-eqz p2, :cond_0

    invoke-static {p2, v1}, Lg/giq;->o(Lg/fza;Lg/fza;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lg/guv;->f:Lg/guv;

    if-eqz p0, :cond_2

    invoke-static {p0, p1, p2}, Lg/akd;->b(Lg/guv;Lg/fza;Lg/fza;)V

    :cond_2
    return-void
.end method
