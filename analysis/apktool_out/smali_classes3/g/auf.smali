.class public final Lg/auf;
.super Lg/fdk;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/apd;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/auf;->b:I

    const-string v0, "internal.appMetadata"

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/bgb;)V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lg/auf;->b:I

    const-string v0, "internal.logger"

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    iget-object p1, p0, Lg/fdk;->h:Ljava/util/HashMap;

    new-instance v0, Lg/lv;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lg/lv;-><init>(Lg/auf;ZZ)V

    const-string v3, "log"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/fdk;->h:Ljava/util/HashMap;

    new-instance v0, Lg/csn;

    const/4 v4, 0x1

    const-string v5, "silent"

    invoke-direct {v0, v5, v4}, Lg/csn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/fdk;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fdk;

    new-instance v0, Lg/lv;

    invoke-direct {v0, p0, v2, v2}, Lg/lv;-><init>(Lg/auf;ZZ)V

    invoke-virtual {p1, v3, v0}, Lg/fdk;->a(Ljava/lang/String;Lg/gey;)V

    iget-object p1, p0, Lg/fdk;->h:Ljava/util/HashMap;

    new-instance v0, Lg/csn;

    const/4 v2, 0x2

    const-string v4, "unmonitored"

    invoke-direct {v0, v4, v2}, Lg/csn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg/fdk;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/fdk;

    new-instance v0, Lg/lv;

    invoke-direct {v0, p0, v1, v1}, Lg/lv;-><init>(Lg/auf;ZZ)V

    invoke-virtual {p1, v3, v0}, Lg/fdk;->a(Ljava/lang/String;Lg/gey;)V

    return-void
.end method

.method public constructor <init>(Lg/cis;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/auf;->b:I

    const-string v0, "internal.registerCallback"

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dzh;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/auf;->b:I

    const-string v0, "internal.eventLogger"

    invoke-direct {p0, v0}, Lg/fdk;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/ffm;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/auf;->b:I

    iput-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    const-string p1, "getValue"

    invoke-direct {p0, p1}, Lg/fdk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Lg/dpa;Ljava/util/List;)Lg/gey;
    .locals 5

    iget v0, p0, Lg/auf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/fdk;->g:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0, p2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    iget-object v2, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p1, v1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    instance-of v3, v1, Lg/dxk;

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    invoke-virtual {v2, p1, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p2, p1, Lg/byt;

    if-eqz p2, :cond_5

    check-cast p1, Lg/byt;

    iget-object p2, p1, Lg/byt;->c:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v2}, Lg/byt;->zzf(Ljava/lang/String;)Lg/gey;

    move-result-object p2

    invoke-interface {p2}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lg/byt;->c:Ljava/util/HashMap;

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Lg/byt;->zzf(Ljava/lang/String;)Lg/gey;

    move-result-object p1

    invoke-interface {p1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lg/byh;->az(D)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    iget-object v2, p0, Lg/auf;->c:Ljava/lang/Object;

    check-cast v2, Lg/cis;

    check-cast v1, Lg/dxk;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "create"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, v2, Lg/cis;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    goto :goto_1

    :cond_1
    const-string v3, "edit"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p2, v2, Lg/cis;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown callback type: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Undefined rule type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback params"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid callback type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lg/auf;->c:Ljava/lang/Object;

    check-cast p1, Lg/apd;

    invoke-virtual {p1}, Lg/apd;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/cro;->ah(Ljava/lang/Object;)Lg/gey;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, Lg/gey;->o:Lg/gdz;

    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :pswitch_2
    const-string v0, "getValue"

    const/4 v1, 0x2

    invoke-static {v1, v0, p2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    iget-object v1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p1, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lg/auf;->c:Ljava/lang/Object;

    check-cast v0, Lg/ffm;

    iget-object v1, v0, Lg/ffm;->b:Ljava/lang/Object;

    check-cast v1, Lg/dqu;

    iget-object v1, v1, Lg/dqu;->p:Lg/tl;

    iget-object v0, v0, Lg/ffm;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_9

    new-instance p1, Lg/bsa;

    invoke-direct {p1, p2}, Lg/bsa;-><init>(Ljava/lang/String;)V

    :cond_9
    return-object p1

    :pswitch_3
    iget-object v0, p0, Lg/fdk;->g:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0, p2}, Lg/byh;->ah(ILjava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/gey;

    iget-object v1, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v1, Lg/ffr;

    invoke-virtual {v1, p1, v0}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v0

    invoke-interface {v0}, Lg/gey;->zzi()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gey;

    iget-object v2, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v2, Lg/ffr;

    invoke-virtual {v2, p1, v1}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object v1

    invoke-interface {v1}, Lg/gey;->zzh()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lg/byh;->ar(D)D

    move-result-wide v3

    double-to-long v3, v3

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/gey;

    invoke-virtual {v2, p1, p2}, Lg/ffr;->aj(Lg/dpa;Lg/gey;)Lg/gey;

    move-result-object p1

    instance-of p2, p1, Lg/byt;

    if-eqz p2, :cond_a

    check-cast p1, Lg/byt;

    invoke-static {p1}, Lg/byh;->ak(Lg/byt;)Ljava/util/HashMap;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_5
    iget-object p2, p0, Lg/auf;->c:Ljava/lang/Object;

    check-cast p2, Lg/dzh;

    iget-object p2, p2, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    new-instance v1, Lg/guq;

    invoke-direct {v1, v0, v3, v4, p1}, Lg/guq;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lg/gey;->o:Lg/gdz;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
