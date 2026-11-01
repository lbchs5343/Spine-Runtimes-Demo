.class public final Lg/oy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eeg;
.implements Lg/eya;


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lg/oy;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ak(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lg/ehi;

    :try_start_0
    invoke-virtual {p1}, Lg/ehi;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/oy;->a:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Lg/cbj;

    sget-object v3, Lg/ex;->d:Ljava/util/TimeZone;

    sget-object v3, Lg/mh;->a:Lg/mh;

    sget v4, Lg/ex;->a:I

    invoke-static {v0, v1, v3, v4, v2}, Lg/ex;->h(Ljava/lang/String;Ljava/lang/reflect/Type;Lg/mh;I[Lg/cbj;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lg/ehi;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lg/ehi;->close()V

    throw v0
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lg/oy;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public c(Lg/fdw;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lg/aux;

    invoke-direct {v0, p1}, Lg/aux;-><init>(Lg/fdw;)V

    new-instance v1, Lg/eie;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lg/eie;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lg/fdw;->d(Lg/bmm;)V

    return-object v0
.end method
