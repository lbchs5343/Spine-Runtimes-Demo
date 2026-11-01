.class public final Lg/acm;
.super Lg/avu;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lg/bvw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/bvw;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/bvw;Lg/bdp;)V
    .locals 0

    iput-object p1, p0, Lg/acm;->this$0:Lg/bvw;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lg/avu;-><init>(ILg/bdp;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v1, p0, Lg/acm;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lg/eg;->k(Ljava/lang/Object;)V

    iget-object p1, p0, Lg/acm;->L$0:Ljava/lang/Object;

    check-cast p1, Lg/ayw;

    new-instance v1, Lg/edv;

    iget-object v3, p0, Lg/acm;->this$0:Lg/bvw;

    invoke-direct {v1, v3, p1}, Lg/edv;-><init>(Lg/bvw;Lg/ayw;)V

    iget-object v3, v3, Lg/bvw;->d:Lg/cmh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lg/cmh;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lg/cmh;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    invoke-virtual {v3}, Lg/cmh;->d()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lg/cmh;->g:Ljava/lang/Object;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    sget v6, Lg/hg;->a:I

    iget-object v6, v3, Lg/cmh;->g:Ljava/lang/Object;

    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lg/cmh;->e()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v3, v3, Lg/cmh;->g:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lg/edv;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v4

    new-instance v3, Lg/emh;

    iget-object v4, p0, Lg/acm;->this$0:Lg/bvw;

    invoke-direct {v3, v4, v1}, Lg/emh;-><init>(Lg/bvw;Lg/edv;)V

    iput v2, p0, Lg/acm;->label:I

    invoke-static {p1, v3, p0}, Lg/acw;->ao(Lg/ayw;Lg/cvw;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :goto_2
    monitor-exit v4

    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/ayw;

    check-cast p2, Lg/bdp;

    invoke-virtual {p0, p1, p2}, Lg/acm;->e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;

    move-result-object p1

    check-cast p1, Lg/acm;

    sget-object p2, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {p1, p2}, Lg/acm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;Lg/bdp;)Lg/bdp;
    .locals 2

    new-instance v0, Lg/acm;

    iget-object v1, p0, Lg/acm;->this$0:Lg/bvw;

    invoke-direct {v0, v1, p2}, Lg/acm;-><init>(Lg/bvw;Lg/bdp;)V

    iput-object p1, v0, Lg/acm;->L$0:Ljava/lang/Object;

    return-object v0
.end method
