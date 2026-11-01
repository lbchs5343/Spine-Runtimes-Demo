.class public final Lg/agt;
.super Lg/ehi;
.source "SourceFile"


# instance fields
.field public final a:Lg/dpd;

.field public final b:J


# direct methods
.method public constructor <init>(Lg/dpd;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/agt;->a:Lg/dpd;

    iput-wide p2, p0, Lg/agt;->b:J

    return-void
.end method


# virtual methods
.method public final c()Lg/dsy;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lg/agt;->b:J

    return-wide v0
.end method

.method public final e()Lg/dpd;
    .locals 1

    iget-object v0, p0, Lg/agt;->a:Lg/dpd;

    return-object v0
.end method
