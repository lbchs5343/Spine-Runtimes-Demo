.class public final synthetic Lg/fby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dbd;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg/cvw;

.field public final synthetic c:Lg/cet;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:Lg/ao;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lg/ao;Ljava/lang/String;Lg/cvw;Lg/cet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fby;->d:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/fby;->e:Lg/ao;

    iput-object p3, p0, Lg/fby;->a:Ljava/lang/String;

    iput-object p4, p0, Lg/fby;->b:Lg/cvw;

    iput-object p5, p0, Lg/fby;->c:Lg/cet;

    return-void
.end method


# virtual methods
.method public final g(Lg/eje;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lg/eyb;

    iget-object v1, p0, Lg/fby;->e:Lg/ao;

    iget-object v2, p0, Lg/fby;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/fby;->b:Lg/cvw;

    iget-object v4, p0, Lg/fby;->c:Lg/cet;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lg/eyb;-><init>(Lg/ao;Ljava/lang/String;Lg/cvw;Lg/cet;Lg/eje;)V

    iget-object p1, p0, Lg/fby;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
