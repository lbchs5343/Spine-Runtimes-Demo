.class public final Lg/boz;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lg/eye;


# direct methods
.method public synthetic constructor <init>(Lg/eye;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lg/boz;->zza:Lg/eye;

    return-void
.end method

.method public static synthetic a(Lg/boz;Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/boz;->zza:Lg/eye;

    invoke-virtual {v0}, Lg/eye;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
