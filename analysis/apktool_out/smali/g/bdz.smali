.class public final Lg/bdz;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/and;


# instance fields
.field final synthetic $isTracingEnabled:Z

.field final synthetic $traceTag:Ljava/lang/String;

.field final synthetic $worker:Lg/cg;

.field final synthetic this$0:Lg/dly;


# direct methods
.method public constructor <init>(Lg/cg;ZLjava/lang/String;Lg/dly;)V
    .locals 0

    iput-object p1, p0, Lg/bdz;->$worker:Lg/cg;

    iput-boolean p2, p0, Lg/bdz;->$isTracingEnabled:Z

    iput-object p3, p0, Lg/bdz;->$traceTag:Ljava/lang/String;

    iput-object p4, p0, Lg/bdz;->this$0:Lg/dly;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lg/gfr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/bdz;->$worker:Lg/cg;

    check-cast p1, Lg/gfr;

    invoke-virtual {p1}, Lg/gfr;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/cg;->stop(I)V

    :cond_0
    iget-boolean p1, p0, Lg/bdz;->$isTracingEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/bdz;->$traceTag:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lg/bdz;->this$0:Lg/dly;

    iget-object v1, v0, Lg/dly;->h:Lg/flk;

    iget-object v1, v1, Lg/flk;->h:Lg/ao;

    iget-object v0, v0, Lg/dly;->g:Lg/fkj;

    invoke-virtual {v0}, Lg/fkj;->hashCode()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-static {p1}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lg/frg;->b(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lg/baf;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "asyncTraceEnd"

    :try_start_0
    sget-object v2, Lg/baf;->r:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-nez v2, :cond_2

    const-class v2, Landroid/os/Trace;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v2, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lg/baf;->r:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lg/baf;->r:Ljava/lang/reflect/Method;

    sget-wide v7, Lg/baf;->t:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object p1, v6, v4

    aput-object v0, v6, v3

    const/4 p1, 0x0

    invoke-virtual {v1, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lg/baf;->be(Ljava/lang/Exception;)V

    :cond_3
    :goto_2
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
