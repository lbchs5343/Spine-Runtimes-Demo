.class public final Lg/coz;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final reason:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, ": "

    invoke-static {p1, v0, p2}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lg/coz;->reason:Ljava/lang/String;

    iput-object p2, p0, Lg/coz;->source:Ljava/lang/String;

    return-void
.end method
