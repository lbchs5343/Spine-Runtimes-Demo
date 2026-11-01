.class public final Lg/dvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field public final a:Lg/gvn;

.field public final synthetic b:Lg/ug;


# direct methods
.method public constructor <init>(Lg/ug;Lg/gvn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dvj;->b:Lg/ug;

    iput-object p2, p0, Lg/dvj;->a:Lg/gvn;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lg/dvj;->b:Lg/ug;

    iget-object v1, p0, Lg/dvj;->a:Lg/gvn;

    sget-object v2, Lg/amc;->INTERNAL_ERROR:Lg/amc;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p0}, Lg/gvn;->i(ZLg/dvj;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3, p0}, Lg/gvn;->i(ZLg/dvj;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lg/amc;->NO_ERROR:Lg/amc;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Lg/amc;->CANCEL:Lg/amc;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v3, v2, v4}, Lg/ug;->af(Lg/amc;Lg/amc;Ljava/io/IOException;)V

    :goto_0
    invoke-static {v1}, Lg/erq;->m(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v5

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v5

    :goto_1
    move-object v3, v2

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    goto :goto_3

    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Required SETTINGS preface not received"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v5, v3

    goto :goto_1

    :catchall_2
    move-exception v3

    goto :goto_2

    :goto_3
    :try_start_4
    sget-object v2, Lg/amc;->PROTOCOL_ERROR:Lg/amc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0, v2, v2, v4}, Lg/ug;->af(Lg/amc;Lg/amc;Ljava/io/IOException;)V

    goto :goto_0

    :goto_4
    sget-object v0, Lg/dgi;->a:Lg/dgi;

    return-object v0

    :goto_5
    invoke-virtual {v0, v3, v2, v4}, Lg/ug;->af(Lg/amc;Lg/amc;Ljava/io/IOException;)V

    invoke-static {v1}, Lg/erq;->m(Ljava/io/Closeable;)V

    throw v5
.end method
