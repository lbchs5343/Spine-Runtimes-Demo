.class public final Lg/dlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z

.field public final synthetic c:Lg/bcm;

.field public final synthetic d:Lg/ein;

.field public final synthetic e:Lg/ein;


# direct methods
.method public constructor <init>(Lg/bcm;Lg/ein;Lg/ein;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dlt;->c:Lg/bcm;

    iput-object p2, p0, Lg/dlt;->d:Lg/ein;

    iput-object p3, p0, Lg/dlt;->e:Lg/ein;

    iput-wide p4, p0, Lg/dlt;->a:J

    iput-boolean p6, p0, Lg/dlt;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-boolean v5, p0, Lg/dlt;->b:Z

    const/4 v6, 0x0

    iget-object v0, p0, Lg/dlt;->c:Lg/bcm;

    iget-object v1, p0, Lg/dlt;->d:Lg/ein;

    iget-object v2, p0, Lg/dlt;->e:Lg/ein;

    iget-wide v3, p0, Lg/dlt;->a:J

    invoke-virtual/range {v0 .. v6}, Lg/bcm;->w(Lg/ein;Lg/ein;JZLandroid/os/Bundle;)V

    return-void
.end method
