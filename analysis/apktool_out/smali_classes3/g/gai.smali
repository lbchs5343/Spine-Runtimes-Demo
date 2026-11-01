.class public final Lg/gai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lg/emr;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Lg/emr;Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lg/gai;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lg/gai;->c:Lg/emr;

    iput-object p2, p0, Lg/gai;->d:Ljava/lang/String;

    iput-wide p3, p0, Lg/gai;->e:J

    iput p5, p0, Lg/gai;->a:I

    return-void
.end method
