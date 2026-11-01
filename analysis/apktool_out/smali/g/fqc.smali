.class public final Lg/fqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# instance fields
.field public final synthetic b:Lg/edl;

.field public final synthetic c:Lg/gdh;


# direct methods
.method public constructor <init>(Lg/edl;Lg/gdh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fqc;->b:Lg/edl;

    iput-object p2, p0, Lg/fqc;->c:Lg/gdh;

    return-void
.end method


# virtual methods
.method public final a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lg/cfw;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg/cfw;

    iget v1, v0, Lg/cfw;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg/cfw;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg/cfw;

    invoke-direct {v0, p0, p2}, Lg/cfw;-><init>(Lg/fqc;Lg/w;)V

    :goto_0
    iget-object p2, v0, Lg/cfw;->result:Ljava/lang/Object;

    sget-object v1, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    iget v2, v0, Lg/cfw;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v5, v0, Lg/cfw;->J$0:J

    iget-object p1, v0, Lg/cfw;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v2, v0, Lg/cfw;->L$1:Ljava/lang/Object;

    check-cast v2, Lg/fjs;

    iget-object v7, v0, Lg/cfw;->L$0:Ljava/lang/Object;

    check-cast v7, Lg/fqc;

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lg/cfw;->I$0:I

    iget-wide v5, v0, Lg/cfw;->J$0:J

    iget-object v2, v0, Lg/cfw;->L$1:Ljava/lang/Object;

    check-cast v2, Lg/fjs;

    iget-object v7, v0, Lg/cfw;->L$0:Ljava/lang/Object;

    check-cast v7, Lg/fqc;

    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lg/eg;->k(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    move-object p2, p0

    :goto_1
    iget-object v2, p2, Lg/fqc;->b:Lg/edl;

    iput-object p2, v0, Lg/cfw;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lg/cfw;->L$1:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Lg/cfw;->L$2:Ljava/lang/Object;

    iput-wide v5, v0, Lg/cfw;->J$0:J

    const/4 v7, 0x0

    iput v7, v0, Lg/cfw;->I$0:I

    iput v4, v0, Lg/cfw;->label:I

    invoke-static {v2, p1, v0}, Lg/gs;->ao(Lg/edl;Lg/fjs;Lg/w;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, p2

    move-object p2, v2

    move-object v2, p1

    const/4 p1, 0x0

    :goto_2
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_6

    iget-object p1, v7, Lg/fqc;->c:Lg/gdh;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iput-object v7, v0, Lg/cfw;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lg/cfw;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lg/cfw;->L$2:Ljava/lang/Object;

    iput-wide v5, v0, Lg/cfw;->J$0:J

    iput v3, v0, Lg/cfw;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    move-object p1, v0

    check-cast p1, Lg/bdp;

    new-instance v10, Lg/gdh;

    const/4 v11, 0x4

    invoke-direct {v10, v11, p1}, Lg/avu;-><init>(ILg/bdp;)V

    iput-object p2, v10, Lg/gdh;->L$0:Ljava/lang/Object;

    iput-wide v8, v10, Lg/gdh;->J$0:J

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    invoke-virtual {v10, p1}, Lg/gdh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide/16 p1, 0x1

    add-long/2addr v5, p1

    const/4 p1, 0x1

    :cond_6
    move-object p2, v7

    goto :goto_5

    :cond_7
    throw p1

    :goto_5
    if-nez p1, :cond_8

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1

    :cond_8
    move-object p1, v2

    goto :goto_1
.end method
