.class public final Lg/gvu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/dcy;

.field public final b:J

.field public final c:Lg/cvb;


# direct methods
.method public constructor <init>(Lg/dcy;JLg/cvb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gvu;->a:Lg/dcy;

    iput-object p4, p0, Lg/gvu;->c:Lg/cvb;

    check-cast p4, Lg/czz;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lg/gvu;->b:J

    return-void
.end method
