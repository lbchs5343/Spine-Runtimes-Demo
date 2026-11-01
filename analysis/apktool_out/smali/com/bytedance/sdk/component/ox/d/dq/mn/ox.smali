.class Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;
.super Lcom/bytedance/sdk/component/ox/d/dq/mn/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/reflect/Method;

.field private final dq:Ljava/lang/reflect/Method;

.field private final ox:Ljava/lang/reflect/Method;

.field private final p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->dq:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->d:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->ox:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->p:Ljava/lang/Class;

    iput-object p5, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->s:Ljava/lang/Class;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;
    .locals 10

    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "org.eclipse.jetty.alpn.ALPN$Provider"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v3, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v3, "put"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "get"

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "remove"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v4, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public d(Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->ox:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "unable to remove alpn"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;

    iget-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;->dq:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->d()Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    move-result-object v0

    const-string v1, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, v0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    const-string v0, "unable to get selected protocol"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public dq(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/wp;",
            ">;)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;->dq(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :try_start_0
    const-class p3, Lcom/bytedance/sdk/component/ox/d/dq/mn/s;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->p:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->s:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox$dq;-><init>(Ljava/util/List;)V

    invoke-static {p3, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/mn/ox;->dq:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v0

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "unable to set alpn"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method
