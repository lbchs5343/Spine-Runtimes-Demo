.class public final Lg/efs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/ddc;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lg/ahy;

.field public final d:Lg/ahe;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/ahy;Lg/ahe;Lg/ddc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/efs;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/efs;->c:Lg/ahy;

    iput-object p3, p0, Lg/efs;->d:Lg/ahe;

    iput-object p4, p0, Lg/efs;->a:Lg/ddc;

    return-void
.end method
