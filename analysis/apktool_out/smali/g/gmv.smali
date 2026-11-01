.class public final Lg/gmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dts;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/gmv;->a:I

    iput-object p2, p0, Lg/gmv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lg/gmv;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gmv;->b:Ljava/lang/Object;

    check-cast v0, Lg/dzt;

    check-cast p1, Lg/ejd;

    invoke-interface {v0, p1}, Lg/dzt;->q(Lg/ejd;)V

    return-void

    :pswitch_0
    check-cast p1, Lg/ejd;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lg/gmv;->b:Ljava/lang/Object;

    check-cast v1, Lg/emr;

    iget-object v1, v1, Lg/emr;->n:Ljava/lang/Object;

    check-cast v1, Lg/gkr;

    if-eqz p1, :cond_3

    iget v2, p1, Lg/ejd;->a:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/x;

    const-string v2, "a"

    iget-object v3, v0, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lg/gkr;->i(Lg/x;)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x7c8

    invoke-virtual {v1, p1}, Lg/gkr;->o(I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/16 p1, 0x52a

    goto :goto_1

    :cond_4
    iget p1, p1, Lg/ejd;->a:I

    invoke-static {p1}, Lg/cdy;->j(I)I

    move-result p1

    :goto_1
    invoke-virtual {v1, p1}, Lg/gkr;->o(I)V

    :goto_2
    return-void

    :pswitch_1
    check-cast p1, Lg/cgr;

    sget-object v0, Lg/anc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/anc;->a:Lg/bcp;

    iget-object v2, p0, Lg/gmv;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg/bcp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5

    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lg/gmv;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lg/bcp;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/dts;

    invoke-interface {v1, p1}, Lg/dts;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    check-cast p1, Lg/cgr;

    if-nez p1, :cond_7

    new-instance p1, Lg/cgr;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lg/cgr;-><init>(I)V

    :cond_7
    iget-object v0, p0, Lg/gmv;->b:Ljava/lang/Object;

    check-cast v0, Lg/gtb;

    invoke-virtual {v0, p1}, Lg/gtb;->y(Lg/cgr;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
