.class public final synthetic Lg/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/jb;->a:I

    iput-object p1, p0, Lg/jb;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/jb;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lg/jb;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lg/jb;->c:Ljava/lang/Object;

    iget-object v3, p0, Lg/jb;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lg/emr;

    check-cast v2, Ljava/util/HashMap;

    check-cast p1, Lg/cwx;

    check-cast p2, Lg/cwx;

    invoke-virtual {p2}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/evh;->m(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, p2}, Lg/emr;->ad(Lg/cwx;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p1}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cwx;

    if-eqz p1, :cond_1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/cwx;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/cwx;

    if-eqz v7, :cond_2

    move-object v6, v7

    :cond_2
    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lg/cwx;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    check-cast v3, Lg/eak;

    check-cast v2, Lg/hed;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lg/ghr;

    invoke-virtual {v3, v2, p2}, Lg/eak;->bd(Lg/hed;Lg/ghr;)V

    return-void

    :pswitch_1
    check-cast v3, Lg/cln;

    check-cast v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/gay;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lg/cln;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {p2}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lg/egl;

    const/4 v1, 0x5

    invoke-direct {p2, v1, v0}, Lg/egl;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    new-instance p2, Lg/efe;

    invoke-direct {p2, v4, v2}, Lg/efe;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gay;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/cln;->a:Lg/dba;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v4

    const/4 p1, 0x2

    aput-object p2, v3, p1

    const-string p1, "Select providing \'{}\' plugin \'{}\', candidates: {}"

    invoke-interface {v2, p1, v3}, Lg/dba;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :pswitch_2
    check-cast v3, Lg/dwg;

    check-cast v2, Lg/dxb;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android.R$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v1}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v0

    sget-object v1, Lg/cwx;->an:Lg/cff;

    new-instance v4, Lg/dsj;

    invoke-direct {v4, v0, p2, v1}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object p2, v3, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {p2, v4}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object p2

    iget-object v0, v2, Lg/dxb;->c:Ljava/lang/Object;

    check-cast v0, Lg/bqm;

    invoke-virtual {v0, p1, p2}, Lg/bqm;->c(Ljava/lang/Object;Lg/chf;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lg/jb;->a:I

    invoke-static {p0, p1}, Lj$/util/function/h;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
