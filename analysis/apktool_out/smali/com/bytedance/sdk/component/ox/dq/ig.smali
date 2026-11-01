.class public final Lcom/bytedance/sdk/component/ox/dq/ig;
.super Ljava/lang/Object;


# static fields
.field static final dq:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/ox/dq/ig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/ox/dq/ig;->dq:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/OutputStream;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ox/dq/ig;->ox(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/dq;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/InputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq()Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ig$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ig$3;-><init>()V

    return-object v0
.end method

.method public static dq(Ljava/io/OutputStream;)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/r;-><init>()V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/OutputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p0

    return-object p0
.end method

.method private static dq(Ljava/io/OutputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ig$1;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/component/ox/dq/ig$1;-><init>(Lcom/bytedance/sdk/component/ox/dq/r;Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ox/dq/ig;->ox(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/dq;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/OutputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/InputStream;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Ljava/io/InputStream;)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/r;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/r;-><init>()V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/InputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/gh;

    move-result-object p0

    return-object p0
.end method

.method private static dq(Ljava/io/InputStream;Lcom/bytedance/sdk/component/ox/dq/r;)Lcom/bytedance/sdk/component/ox/dq/gh;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ig$2;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/component/ox/dq/ig$2;-><init>(Lcom/bytedance/sdk/component/ox/dq/r;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/p;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/mp;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/mp;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/s;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/q;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/q;-><init>(Lcom/bytedance/sdk/component/ox/dq/gh;)V

    return-object v0
.end method

.method public static dq(Ljava/lang/AssertionError;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ox(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq(Ljava/io/OutputStream;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ox(Ljava/net/Socket;)Lcom/bytedance/sdk/component/ox/dq/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ig$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ox/dq/ig$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
