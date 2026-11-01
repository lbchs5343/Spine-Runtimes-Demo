.class public final Lg/dlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csp;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lg/rs;

.field public final synthetic f:J

.field public final synthetic g:Lg/rs;


# direct methods
.method public constructor <init>(Lg/csp;Lg/rs;JIJZLg/rs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dlh;->a:Lg/csp;

    iput-object p2, p0, Lg/dlh;->e:Lg/rs;

    iput-wide p3, p0, Lg/dlh;->f:J

    iput p5, p0, Lg/dlh;->b:I

    iput-wide p6, p0, Lg/dlh;->c:J

    iput-boolean p8, p0, Lg/dlh;->d:Z

    iput-object p9, p0, Lg/dlh;->g:Lg/rs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lg/dlh;->a:Lg/csp;

    iget-object v7, p0, Lg/dlh;->e:Lg/rs;

    invoke-virtual {v0, v7}, Lg/csp;->ar(Lg/rs;)V

    iget-wide v1, p0, Lg/dlh;->f:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lg/csp;->x(JZ)V

    const/4 v5, 0x1

    iget-boolean v6, p0, Lg/dlh;->d:Z

    iget-object v1, p0, Lg/dlh;->e:Lg/rs;

    iget v2, p0, Lg/dlh;->b:I

    iget-wide v3, p0, Lg/dlh;->c:J

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

    iget-object v1, p0, Lg/dlh;->g:Lg/rs;

    invoke-static {v0, v7, v1}, Lg/csp;->w(Lg/csp;Lg/rs;Lg/rs;)V

    :cond_0
    return-void
.end method
