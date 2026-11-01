.class public final Lg/fwm;
.super Lcom/bytedance/sdk/component/o/p/ox;


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1

    const-string v0, "LogcatDump$LogDumperThread"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/fwm;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lg/fwm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lg/fwm;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const v1, 0x8000

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "---------"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    iget-object v3, p0, Lg/fwm;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lg/bfc;->o(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v0}, Lg/bfc;->o(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    invoke-static {v0}, Lg/bfc;->o(Ljava/io/Closeable;)V

    return-void
.end method
