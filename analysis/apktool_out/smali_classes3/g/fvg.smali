.class public final Lg/fvg;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final firstConnectException:Ljava/io/IOException;

.field private lastConnectException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lg/fvg;->firstConnectException:Ljava/io/IOException;

    iput-object p1, p0, Lg/fvg;->lastConnectException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lg/fvg;->firstConnectException:Ljava/io/IOException;

    invoke-static {v0, p1}, Lg/cux;->ag(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lg/fvg;->lastConnectException:Ljava/io/IOException;

    return-void
.end method

.method public final b()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lg/fvg;->firstConnectException:Ljava/io/IOException;

    return-object v0
.end method

.method public final c()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lg/fvg;->lastConnectException:Ljava/io/IOException;

    return-object v0
.end method
