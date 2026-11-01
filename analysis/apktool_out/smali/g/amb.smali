.class public final synthetic Lg/amb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/amb;->a:I

    iput-object p2, p0, Lg/amb;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lg/amb;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/amb;->b:Ljava/lang/Object;

    check-cast v0, Lg/dcq;

    iget-object v0, v0, Lg/dcq;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v1

    const-string v2, "next_alarm_manager_id"

    invoke-virtual {v1, v2}, Lg/fdy;->ag(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7fffffff

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()Lg/fdy;

    move-result-object v0

    new-instance v4, Lg/cmk;

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lg/cmk;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Lg/fdy;->p(Lg/cmk;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/amb;->b:Ljava/lang/Object;

    check-cast v0, Lg/ggg;

    iget-object v1, v0, Lg/ggg;->e:Lg/cci;

    sget-object v2, Lg/csv;->PACKAGE_INFO:Lg/csv;

    iget-object v3, v1, Lg/lh;->l:Lg/sm;

    iget-object v4, v1, Lg/cci;->ab:Lg/dwg;

    invoke-virtual {v3, v2}, Lg/sm;->g(Lg/csv;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lg/dwg;->ac()Lg/flc;

    move-result-object v2

    iget-object v3, v0, Lg/ggg;->j:Lg/ffr;

    iget-object v4, v3, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v4, Lg/cci;

    invoke-virtual {v3, v4, v2}, Lg/ffr;->u(Lg/epk;Lg/eos;)V

    invoke-virtual {v2}, Lg/grs;->m()V

    invoke-virtual {v2, v1}, Lg/flc;->g(Lg/cfr;)V

    invoke-virtual {v0, v2}, Lg/ggg;->z(Lg/grs;)V

    invoke-virtual {v2}, Lg/grs;->m()V

    invoke-virtual {v0, v2}, Lg/ggg;->ac(Lg/grs;)V

    invoke-virtual {v2}, Lg/flc;->finish()Lg/emz;

    move-result-object v0

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Lg/dwg;->ac()Lg/flc;

    move-result-object v2

    sget-object v3, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, v1, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v3}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lg/ggg;->y(Lg/eos;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lg/ggg;->t(Lg/eos;Z)V

    :goto_2
    invoke-virtual {v4}, Lg/dwg;->ac()Lg/flc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/ggg;->z(Lg/grs;)V

    invoke-virtual {v1}, Lg/grs;->m()V

    invoke-virtual {v0, v1}, Lg/ggg;->ac(Lg/grs;)V

    invoke-virtual {v1, v2}, Lg/flc;->c(Lg/flc;)Lg/eos;

    invoke-virtual {v1}, Lg/flc;->finish()Lg/emz;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lg/amb;->b:Ljava/lang/Object;

    check-cast v0, Lg/ba;

    iget-object v1, v0, Lg/ba;->b:Lg/cci;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lg/ba;->e(Lg/cci;Lg/ggg;)Lg/bkz;

    move-result-object v0

    sget-object v1, Lg/ba;->a:Lg/eem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {v1, v3}, Lg/eem;->o(Ljava/io/Writer;)Lg/fwg;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lg/eem;->m(Ljava/lang/Object;Ljava/lang/Class;Lg/fwg;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lg/gyr;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
