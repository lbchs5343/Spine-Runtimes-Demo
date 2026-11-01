.class public final Lg/cfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/azo;


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cfy;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Lg/geg;)Lg/ks;
    .locals 2

    sget-object v0, Lg/zz;->l:Lg/zz;

    invoke-virtual {p0, v0}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object v0

    check-cast v0, Lg/cfy;

    sget-object v1, Lg/zz;->d:Lg/zz;

    invoke-virtual {p0, v1}, Lg/geg;->c(Lg/zz;)Lg/azo;

    move-result-object p0

    check-cast p0, Lg/cfy;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    iget-object p0, v0, Lg/cfy;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Lg/ks;->b(Ljava/util/List;)Lg/ks;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lg/cfy;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    invoke-static {p0}, Lg/ks;->b(Ljava/util/List;)Lg/ks;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, v0, Lg/cfy;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lg/acr;->bi(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lg/ks;->b(Ljava/util/List;)Lg/ks;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lg/any;Lg/cmv;Lg/gqc;)Lg/fpa;
    .locals 7

    iget-object v0, p1, Lg/cmv;->g:Lg/gkr;

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p2}, Lg/gqc;->ai()I

    move-result v5

    invoke-virtual {v0, v5}, Lg/gkr;->r(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2}, Lg/ckd;->ak(Lg/cmv;Lg/gqc;)Lg/ghr;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lg/fpa;

    invoke-direct {p1, p0, v1, v3}, Lg/fpa;-><init>(Lg/any;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-object p1
.end method
