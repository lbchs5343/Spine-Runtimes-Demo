.class public final Lg/bqx;
.super Lg/gez;
.source "SourceFile"


# instance fields
.field public final b:Lg/bsu;


# direct methods
.method public synthetic constructor <init>(Lg/bsu;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lg/gez;-><init>(ZLjava/lang/String;Ljava/lang/Exception;)V

    iput-object p1, p0, Lg/bqx;->b:Lg/bsu;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lg/bqx;->b:Lg/bsu;

    invoke-virtual {v0}, Lg/bsu;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
