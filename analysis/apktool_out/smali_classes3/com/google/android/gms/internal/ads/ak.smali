.class public abstract Lcom/google/android/gms/internal/ads/ak;
.super Lg/gwm;
.source "SourceFile"


# static fields
.field public static final n:Lg/eg;

.field public static final o:Lg/ctm;


# instance fields
.field public volatile p:Ljava/util/Set;

.field public volatile q:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/ctm;

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/gms/internal/ads/ak;

    invoke-direct {v0, v1, v2}, Lg/ctm;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->o:Lg/ctm;

    :try_start_0
    new-instance v0, Lg/kc;

    const-class v1, Ljava/util/Set;

    const-string v3, "O00O000O"

    invoke-static {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-string v3, "oOOOO0o0oo"

    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/kc;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    move-object v6, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lg/csz;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/ads/ak;->n:Lg/eg;

    if-eqz v6, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->o:Lg/ctm;

    invoke-virtual {v0}, Lg/ctm;->e()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "<clinit>"

    const-string v5, "SafeAtomicHelper is broken!"

    const-string v3, "com.google.common.util.concurrent.AggregateFutureState"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
