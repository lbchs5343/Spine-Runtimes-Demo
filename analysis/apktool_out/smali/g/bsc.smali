.class public final Lg/bsc;
.super Ljava/util/concurrent/CancellationException;
.source "SourceFile"


# instance fields
.field private final stopReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput p1, p0, Lg/bsc;->stopReason:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg/bsc;->stopReason:I

    return v0
.end method
