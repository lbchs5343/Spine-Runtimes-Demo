.class public final Lg/gaj;
.super Lg/ahp;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lg/zy;

.field private final zzc:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lg/zy;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lg/gaj;->zza:Lg/zy;

    invoke-direct {p0, p1, p3}, Lg/ahp;-><init>(Lg/zy;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lg/gaj;->zzc:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final _bc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/gaj;->zzc:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gaj;->zzc:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
