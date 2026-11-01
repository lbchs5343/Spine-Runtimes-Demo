.class public final Lg/cpt;
.super Lg/byt;
.source "SourceFile"


# instance fields
.field public final d:Lg/dzh;


# direct methods
.method public constructor <init>(Lg/dzh;)V
    .locals 0

    invoke-direct {p0}, Lg/byt;-><init>()V

    iput-object p1, p0, Lg/cpt;->d:Lg/dzh;

    return-void
.end method


# virtual methods
.method public final _ag(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "getEventName"

    const/4 v5, 0x3

    const-string v6, "getTimestamp"

    const-string v7, "getParamValue"

    const-string v8, "getParams"

    const-string v10, "setParamValue"

    const/4 v11, 0x4

    const-string v12, "setEventName"

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    :goto_0
    move-object/from16 v15, p0

    goto :goto_2

    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    :goto_2
    iget-object v9, v15, Lg/cpt;->d:Lg/dzh;

    if-eqz v3, :cond_a

    if-eq v3, v14, :cond_8

    if-eq v3, v13, :cond_6

    if-eq v3, v5, :cond_5

    if-eq v3, v11, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-super/range {p0 .. p3}, Lg/byt;->_ag(Ljava/lang/String;Lg/dpa;Ljava/util/ArrayList;)Lg/gey;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v13, v10, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v3, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gey;

    iget-object v3, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v3, Lg/ffr;

    invoke-virtual {v3, v1, v2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    iget-object v2, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v2, Lg/guq;

    invoke-static {v1}, Lg/byh;->v(Lg/gey;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lg/guq;->c:Ljava/util/HashMap;

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_3
    invoke-static {v14, v12, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    sget-object v1, Lg/gey;->o:Lg/gdz;

    invoke-virtual {v1, v0}, Lg/gdz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lg/gey;->i:Lg/hee;

    invoke-virtual {v1, v0}, Lg/hee;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v1, Lg/guq;

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lg/guq;->a:Ljava/lang/String;

    new-instance v1, Lg/bsa;

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal event name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, v6, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    iget-object v0, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lg/guq;

    new-instance v1, Lg/hbz;

    iget-wide v2, v0, Lg/guq;->b:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lg/hbz;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0, v8, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    iget-object v0, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lg/guq;

    iget-object v0, v0, Lg/guq;->c:Ljava/util/HashMap;

    new-instance v1, Lg/byt;

    invoke-direct {v1}, Lg/byt;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lg/cro;->ah(Ljava/lang/Object;)Lg/gey;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lg/byt;->a(Ljava/lang/String;Lg/gey;)V

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    invoke-static {v14, v7, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v2, v1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, v1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v1, Lg/guq;

    iget-object v1, v1, Lg/guq;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lg/cro;->ah(Ljava/lang/Object;)Lg/gey;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0, v4, v2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    iget-object v0, v9, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Lg/guq;

    new-instance v1, Lg/bsa;

    iget-object v0, v0, Lg/guq;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lg/bsa;-><init>(Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
