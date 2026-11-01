.class public final Lg/eod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/cis;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Lg/cis;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/eod;->a:Lg/cis;

    iput-wide p2, p0, Lg/eod;->b:J

    iput-wide p4, p0, Lg/eod;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg/eod;->a:Lg/cis;

    iget-object v0, v0, Lg/cis;->b:Ljava/lang/Object;

    check-cast v0, Lg/cjv;

    iget-object v0, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v0, Lg/cyg;

    iget-object v0, v0, Lg/cyg;->j:Lg/fth;

    invoke-static {v0}, Lg/cyg;->ak(Lg/bkw;)V

    new-instance v1, Lg/aku;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lg/fth;->p(Ljava/lang/Runnable;)V

    return-void
.end method
