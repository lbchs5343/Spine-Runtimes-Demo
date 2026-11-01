.class public final Lg/bwq;
.super Lg/gom;
.source "SourceFile"


# instance fields
.field public final a:Lg/eeg;

.field public final b:Z


# direct methods
.method public constructor <init>(Lg/bku;Lg/eyd;Lg/eya;Lg/eeg;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/gom;-><init>(Lg/bku;Lg/eyd;Lg/eya;)V

    iput-object p4, p0, Lg/bwq;->a:Lg/eeg;

    iput-boolean p5, p0, Lg/bwq;->b:Z

    return-void
.end method


# virtual methods
.method public final c(Lg/fdw;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/bwq;->a:Lg/eeg;

    invoke-interface {v0, p1}, Lg/eeg;->c(Lg/fdw;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/czh;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lg/bdp;

    :try_start_0
    iget-boolean v0, p0, Lg/bwq;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>"

    invoke-static {p1, v0}, Lg/bff;->ag(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lg/acr;->aq(Lg/czh;Lg/bdp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lg/acr;->an(Lg/czh;Lg/bdp;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1, p2}, Lg/acr;->ar(Ljava/lang/Throwable;Lg/bdp;)Lg/cxr;

    move-result-object p1

    return-object p1

    :goto_1
    throw p1
.end method
