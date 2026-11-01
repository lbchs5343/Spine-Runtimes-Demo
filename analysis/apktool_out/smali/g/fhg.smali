.class public abstract Lg/fhg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    new-instance v0, Lg/gxh;

    invoke-direct {v0}, Lg/gxh;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lg/gxh;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lg/fjj;

    invoke-direct {v2, v1, v0}, Lg/fjj;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lg/bac;

    invoke-direct {v0, v2}, Lg/bac;-><init>(Lg/fjj;)V

    invoke-static {v0}, Lg/ebr;->bp(Lg/gkt;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/fhg;->a:Ljava/util/List;

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ServiceConfigurationError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
