.class public final synthetic Lg/fov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/fov;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/bwy;)V
    .locals 0

    const/16 p1, 0x1c

    iput p1, p0, Lg/fov;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/fov;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lg/fov;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lg/vm;

    invoke-virtual {p1}, Lg/vm;->m()Lg/cwx;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lg/hed;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lg/amh;

    invoke-direct {v1, p1}, Lg/amh;-><init>(Lg/hed;)V

    invoke-virtual {v1}, Lg/amh;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Multi-variable type inference failed"

    invoke-virtual {p1, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p1, Lg/hed;->at:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/vm;

    iget-object v2, v2, Lg/vm;->h:Lg/ffr;

    iget-object v2, v2, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v2, Lg/cwx;

    invoke-virtual {v2}, Lg/cwx;->h()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Multi-variable type inference failed. Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lg/evh;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg/ebh;->bu(Ljava/lang/String;)V

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lg/fog;

    invoke-interface {p1}, Lg/fog;->getType()Lg/cwx;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lg/hed;

    iget-object p1, p1, Lg/hed;->am:Lg/cci;

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/hcd;

    iget-object p1, p1, Lg/hcd;->g:Lg/dsj;

    return-object p1

    :pswitch_4
    check-cast p1, Lg/ej;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lg/ej;

    iget-object p1, p1, Lg/ej;->a:Lg/hcd;

    return-object p1

    :pswitch_6
    check-cast p1, Lg/ej;

    iget-object p1, p1, Lg/ej;->a:Lg/hcd;

    return-object p1

    :pswitch_7
    check-cast p1, Lg/hcd;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_8
    check-cast p1, Lg/ve;

    iget-object p1, p1, Lg/ve;->e:Ljava/lang/String;

    return-object p1

    :pswitch_9
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->e:Ljava/util/List;

    return-object p1

    :pswitch_a
    check-cast p1, Lg/ghr;

    iget-object p1, p1, Lg/ghr;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    :pswitch_b
    check-cast p1, Lg/cno;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :pswitch_e
    check-cast p1, Lg/cci;

    new-instance p1, Lg/bqm;

    invoke-direct {p1}, Lg/bqm;-><init>()V

    return-object p1

    :pswitch_f
    new-instance v0, Lg/bjo;

    check-cast p1, Lg/vm;

    invoke-direct {v0, p1}, Lg/bjo;-><init>(Lg/vm;)V

    return-object v0

    :pswitch_10
    check-cast p1, Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_11
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    return-object p1

    :pswitch_12
    check-cast p1, Lg/ve;

    invoke-virtual {p1}, Lg/ve;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_13
    check-cast p1, Lg/ve;

    invoke-virtual {p1}, Lg/ve;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->z:Ljava/util/List;

    return-object p1

    :pswitch_15
    check-cast p1, Lg/aea;

    iget-object p1, p1, Lg/aea;->i:Lg/fza;

    return-object p1

    :pswitch_16
    check-cast p1, Lg/aea;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_17
    check-cast p1, Lg/aea;

    iget-object p1, p1, Lg/aea;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_18
    check-cast p1, Lg/aea;

    iget-object p1, p1, Lg/aea;->i:Lg/fza;

    invoke-static {p1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lg/eek;->ai:Lg/gks;

    return-object p1

    :pswitch_19
    check-cast p1, Lg/fza;

    iget-object p1, p1, Lg/fza;->d:Ljava/util/List;

    invoke-static {p1}, Lj$/util/Collection$b;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :pswitch_1a
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown value \'"

    const-string v2, "\' for option \'dex-input.verify-checksum\', expect: \'yes\' or \'no\'"

    invoke-static {v1, p1, v2}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "yes"

    goto :goto_6

    :cond_7
    const-string p1, "no"

    :goto_6
    return-object p1

    :pswitch_1c
    check-cast p1, Lg/vm;

    invoke-virtual {p1}, Lg/vm;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    iget v0, p0, Lg/fov;->a:I

    invoke-static {p0, p1}, Lj$/util/function/k;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
