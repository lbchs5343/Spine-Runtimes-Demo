.class public final Lg/fyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lg/rs;

.field public final synthetic d:Lg/rs;

.field public final synthetic e:I

.field public final synthetic f:Lg/csp;


# direct methods
.method public constructor <init>(Lg/csp;Lg/rs;IJZLg/rs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fyp;->f:Lg/csp;

    iput-object p2, p0, Lg/fyp;->d:Lg/rs;

    iput p3, p0, Lg/fyp;->e:I

    iput-wide p4, p0, Lg/fyp;->a:J

    iput-boolean p6, p0, Lg/fyp;->b:Z

    iput-object p7, p0, Lg/fyp;->c:Lg/rs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lg/fyp;->f:Lg/csp;

    iget-object v7, p0, Lg/fyp;->d:Lg/rs;

    invoke-virtual {v0, v7}, Lg/csp;->ar(Lg/rs;)V

    const/4 v5, 0x0

    iget-boolean v6, p0, Lg/fyp;->b:Z

    iget-object v1, p0, Lg/fyp;->d:Lg/rs;

    iget v2, p0, Lg/fyp;->e:I

    iget-wide v3, p0, Lg/fyp;->a:J

    invoke-static/range {v0 .. v6}, Lg/csp;->v(Lg/csp;Lg/rs;IJZZ)V

    invoke-static {}, Lg/eur;->c()V

    iget-object v1, v0, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v1, Lg/cyg;

    iget-object v1, v1, Lg/cyg;->e:Lg/dsd;

    const/4 v2, 0x0

    sget-object v3, Lg/gad;->az:Lg/tw;

    invoke-virtual {v1, v2, v3}, Lg/dsd;->g(Ljava/lang/String;Lg/tw;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/fyp;->c:Lg/rs;

    invoke-static {v0, v7, v1}, Lg/csp;->w(Lg/csp;Lg/rs;Lg/rs;)V

    :cond_0
    return-void
.end method
