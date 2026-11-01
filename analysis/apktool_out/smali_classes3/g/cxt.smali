.class public final Lg/cxt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lg/cpm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lg/cpm;->zza:Z

    iput-boolean v0, p0, Lg/cxt;->a:Z

    iget-boolean v0, p1, Lg/cpm;->zzb:Z

    iput-boolean v0, p0, Lg/cxt;->b:Z

    iget-boolean p1, p1, Lg/cpm;->zzc:Z

    iput-boolean p1, p0, Lg/cxt;->c:Z

    return-void
.end method
