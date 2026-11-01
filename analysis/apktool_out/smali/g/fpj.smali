.class public final Lg/fpj;
.super Lg/bgf;
.source "SourceFile"


# instance fields
.field public a:Lg/cma;


# virtual methods
.method public final _t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;Lg/ccw;)V
    .locals 5

    iget-object v0, p0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/bnu;

    iget-object v1, p0, Lg/fpj;->a:Lg/cma;

    if-nez v1, :cond_0

    iget-object v1, p4, Lg/ccw;->k:Lg/mh;

    iget-object v2, v0, Lg/bnu;->b:Ljava/lang/Class;

    iget-object v3, v0, Lg/bnu;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v3, v2}, Lg/mh;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lg/cma;

    move-result-object v1

    iput-object v1, p0, Lg/fpj;->a:Lg/cma;

    :cond_0
    instance-of p2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_1

    iget-object p2, p4, Lg/ccw;->l:Lg/fpd;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p2, v0, Lg/bnu;->e:Ljava/lang/String;

    iget-object v1, v0, Lg/bnu;->i:Ljava/lang/String;

    iget-object v2, v0, Lg/bnu;->a:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lg/fpj;->a:Lg/cma;

    instance-of v4, v3, Lg/gvz;

    if-eqz v4, :cond_2

    check-cast v3, Lg/gvz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, v2, p2}, Lg/gvz;->c(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lg/fpj;->a:Lg/cma;

    invoke-interface {p2, p4, v2, v1}, Lg/cma;->g(Lg/ccw;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iget v2, p4, Lg/ccw;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p4}, Lg/ccw;->t()Lg/ggl;

    move-result-object p1

    iput-object p0, p1, Lg/ggl;->d:Lg/bgf;

    iget-object p2, p4, Lg/ccw;->l:Lg/fpd;

    iput-object p2, p1, Lg/ggl;->a:Lg/fpd;

    const/4 p1, 0x0

    iput p1, p4, Lg/ccw;->c:I

    return-void

    :cond_3
    if-nez p1, :cond_4

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    if-nez p2, :cond_6

    iget-object p3, v0, Lg/bnu;->b:Ljava/lang/Class;

    sget-object p4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p3, p4, :cond_5

    sget-object p4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p3, p4, :cond_5

    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, p4, :cond_5

    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p3, p4, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0, p1, p2}, Lg/bgf;->ag(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
