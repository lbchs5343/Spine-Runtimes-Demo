.class public final Lg/gau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg/csp;

.field public final synthetic b:Z

.field public final synthetic c:J

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lg/csp;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gau;->a:Lg/csp;

    iput-object p2, p0, Lg/gau;->f:Ljava/lang/String;

    iput-object p3, p0, Lg/gau;->g:Ljava/lang/String;

    iput-wide p4, p0, Lg/gau;->c:J

    iput-object p6, p0, Lg/gau;->d:Landroid/os/Bundle;

    iput-boolean p7, p0, Lg/gau;->e:Z

    iput-boolean p8, p0, Lg/gau;->h:Z

    iput-boolean p9, p0, Lg/gau;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-boolean v7, p0, Lg/gau;->h:Z

    iget-boolean v8, p0, Lg/gau;->b:Z

    iget-object v0, p0, Lg/gau;->a:Lg/csp;

    iget-object v1, p0, Lg/gau;->f:Ljava/lang/String;

    iget-object v2, p0, Lg/gau;->g:Ljava/lang/String;

    iget-wide v3, p0, Lg/gau;->c:J

    iget-object v5, p0, Lg/gau;->d:Landroid/os/Bundle;

    iget-boolean v6, p0, Lg/gau;->e:Z

    invoke-virtual/range {v0 .. v8}, Lg/csp;->an(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZ)V

    return-void
.end method
