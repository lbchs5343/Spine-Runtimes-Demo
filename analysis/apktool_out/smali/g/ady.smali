.class public final Lg/ady;
.super Lg/fee;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Lg/ady;

.field public static final b:Lg/cpk;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lg/ady;

    invoke-direct {v0}, Lg/cpk;-><init>()V

    sput-object v0, Lg/ady;->a:Lg/ady;

    sget-object v0, Lg/dlq;->a:Lg/dlq;

    sget v1, Lg/fst;->a:I

    const/16 v2, 0x40

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    const/16 v2, 0xc

    const-string v3, "kotlinx.coroutines.io.parallelism"

    invoke-static {v1, v2, v3}, Lg/dzm;->ai(IILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Expected positive parallelism level, but got "

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    sget v4, Lg/fga;->b:I

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v3, :cond_2

    new-instance v2, Lg/dbk;

    invoke-direct {v2, v0, v1}, Lg/dbk;-><init>(Lg/cpk;I)V

    move-object v0, v2

    :goto_1
    sput-object v0, Lg/ady;->b:Lg/cpk;

    return-void

    :cond_2
    invoke-static {v1, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v1, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lg/cgq;->a:Lg/cgq;

    invoke-virtual {p0, v0, p1}, Lg/ady;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lg/boj;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lg/ady;->b:Lg/cpk;

    invoke-virtual {v0, p1, p2}, Lg/cpk;->g(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Lg/boj;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lg/ady;->b:Lg/cpk;

    invoke-virtual {v0, p1, p2}, Lg/cpk;->i(Lg/boj;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
