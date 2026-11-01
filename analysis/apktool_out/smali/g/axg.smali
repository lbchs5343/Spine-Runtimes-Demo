.class public final Lg/axg;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/axg;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/axg;->a:Lg/dba;

    return-void
.end method


# virtual methods
.method public final j(Lg/hed;)V
    .locals 6

    iget-boolean v0, p1, Lg/hed;->ar:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lg/hed;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    iget-object v1, v1, Lg/fza;->ac:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eek;

    iget-object v3, v2, Lg/eek;->ah:Lg/hay;

    sget-object v4, Lg/hay;->CONSTRUCTOR:Lg/hay;

    if-ne v3, v4, :cond_2

    check-cast v2, Lg/eew;

    :try_start_0
    iget-object v3, v2, Lg/eek;->ai:Lg/gks;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v3, Lg/gks;->a:Lg/vm;

    invoke-virtual {v3}, Lg/vm;->u()Lg/ejb;

    move-result-object v3

    iget-object v3, v3, Lg/ejb;->e:Lg/cwx;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, p1, Lg/hed;->am:Lg/cci;

    iget-object v4, v4, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v2, Lg/eew;->a:Lg/ayu;

    iget-object v5, v5, Lg/ayu;->d:Lg/ve;

    invoke-virtual {v4, v5}, Lg/dwg;->ae(Lg/ve;)Lg/cci;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v4, Lg/cci;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_5
    new-instance v4, Lg/apw;

    invoke-virtual {v3}, Lg/cwx;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Lg/apw;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lg/lh;->m(Lg/eue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    sget-object v3, Lg/axg;->a:Lg/dba;

    const-string v4, "Failed to attach constructor generic info"

    invoke-interface {v3, v4, v2}, Lg/dba;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method
