.class public final Lg/ann;
.super Lg/pj;
.source "SourceFile"


# static fields
.field public static final a:Lg/dba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/ann;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/ann;->a:Lg/dba;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final h(Lg/dwg;)V
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lg/ann;->a:Lg/dba;

    const-string v1, "Error in prepare pass init: {}"

    invoke-interface {v0, p0, v1, p1}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
