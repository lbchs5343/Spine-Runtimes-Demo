.class public final synthetic Lg/gdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lg/fza;

.field public final synthetic b:Lg/evf;

.field public final synthetic c:Lg/fza;

.field public final synthetic d:Lg/evf;


# direct methods
.method public synthetic constructor <init>(Lg/evf;Lg/fza;Lg/evf;Lg/fza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gdr;->b:Lg/evf;

    iput-object p2, p0, Lg/gdr;->c:Lg/fza;

    iput-object p3, p0, Lg/gdr;->d:Lg/evf;

    iput-object p4, p0, Lg/gdr;->a:Lg/fza;

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lg/fkb;

    iget-object v0, p1, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v0, p1}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lg/gdr;->b:Lg/evf;

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lg/fkb;->e()Lg/gvg;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast p1, Lg/fza;

    iget-object v0, p0, Lg/gdr;->c:Lg/fza;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p1, Lg/fkb;->j:Lg/cgy;

    invoke-virtual {v0, p1}, Lg/cgy;->m(Lg/fkb;)Lg/evf;

    move-result-object v0

    iget-object v3, p0, Lg/gdr;->d:Lg/evf;

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lg/fkb;->e()Lg/gvg;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lg/gvg;->c:Ljava/lang/Object;

    check-cast p1, Lg/fza;

    iget-object v0, p0, Lg/gdr;->a:Lg/fza;

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lg/gck;

    const-string v0, "Unknown global traverser state. Has a global state been duplicated?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
