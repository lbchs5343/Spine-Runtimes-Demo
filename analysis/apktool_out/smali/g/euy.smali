.class public final synthetic Lg/euy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/euy;->c:I

    iput-object p1, p0, Lg/euy;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/euy;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/euy;->a:Ljava/lang/Object;

    iput-object p4, p0, Lg/euy;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lg/euy;->c:I

    iget-object v1, p0, Lg/euy;->b:Ljava/lang/Object;

    iget-object v2, p0, Lg/euy;->a:Ljava/lang/Object;

    iget-object v3, p0, Lg/euy;->e:Ljava/lang/Object;

    iget-object v4, p0, Lg/euy;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Lg/dwg;

    check-cast v3, Ljava/util/function/Predicate;

    check-cast v2, [I

    move-object v5, v1

    check-cast v5, Lg/eie;

    check-cast p1, Lg/cgt;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lg/cgt;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x2

    if-le v1, v6, :cond_0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    new-instance v0, Lg/cci;

    invoke-direct {v0, v4, p1}, Lg/cci;-><init>(Lg/dwg;Lg/cgt;)V

    iget-object v1, v4, Lg/dwg;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v4, Lg/dwg;->g:Ljava/util/HashMap;

    iget-object v3, v0, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lg/dwg;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Lg/cci;->bn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_0
    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    sget-object v3, Lg/dwg;->a:Lg/dba;

    const-string v6, "CLASS_"

    :try_start_1
    invoke-interface {p1}, Lg/cgt;->getType()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v4, v7}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v0

    iget-object v0, v0, Lg/ve;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-string v8, "Failed to get name for class with type {}"

    invoke-interface {v3, v7, v8, v0}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-interface {p1}, Lg/cgt;->c()I

    move-result v6

    sget-object v7, Lg/cci;->c:Lg/dba;

    invoke-static {v4, v0}, Lg/ve;->g(Lg/dwg;Ljava/lang/String;)Lg/ve;

    move-result-object v7

    invoke-virtual {v4, v7}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-static {v4, v7, v6}, Lg/cci;->ao(Lg/dwg;Lg/ve;I)Lg/cci;

    move-result-object v0

    const-string v4, "Load error"

    invoke-static {v0, v4, v1}, Lg/dcj;->d(Lg/awj;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v4, Lg/gck;

    const-string v6, "Class already exist: "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    const-string v0, "Failed to load class from file: {}"

    invoke-interface {p1}, Lg/cgt;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v0, v1}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    const/4 p1, 0x0

    aget v0, v2, p1

    add-int/lit8 v1, v0, 0x1

    aput v1, v2, p1

    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_5

    const-wide/high16 v3, 0x403d000000000000L    # 29.0

    int-to-double v6, v1

    mul-double v6, v6, v3

    add-int/lit16 v0, v0, 0x1389

    int-to-double v0, v0

    div-double/2addr v6, v0

    double-to-int v0, v6

    add-int/lit8 v0, v0, 0x1e

    int-to-long v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MSG:build_node:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v8, 0x64

    invoke-virtual/range {v5 .. v10}, Lg/eie;->u(JJLjava/lang/String;)V

    :cond_5
    invoke-static {}, Lg/evh;->n()V

    :goto_4
    return-void

    :pswitch_0
    check-cast v4, Lg/hay;

    check-cast v3, Lg/cci;

    check-cast v2, Ljava/util/HashMap;

    check-cast v1, Lg/ej;

    check-cast p1, Lg/eek;

    iget-object v0, p1, Lg/eek;->ah:Lg/hay;

    if-ne v0, v4, :cond_6

    check-cast p1, Lg/adz;

    iget-object p1, p1, Lg/adz;->a:Ljava/lang/Object;

    check-cast p1, Lg/dsj;

    iget-object v0, p1, Lg/dsj;->d:Lg/ve;

    iget-object v4, v3, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v0, v4}, Lg/ve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3, p1}, Lg/cci;->ar(Lg/dsj;)Lg/hcd;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, v1, Lg/ej;->a:Lg/hcd;

    new-instance v1, Lg/fov;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Lg/fov;-><init>(I)V

    invoke-static {v2, v0, v1}, Lj$/util/Map$b;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    iget v0, p0, Lg/euy;->c:I

    invoke-static {p0, p1}, Lj$/util/function/j;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
