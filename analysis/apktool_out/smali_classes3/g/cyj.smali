.class public final Lg/cyj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg/hav;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lg/ckd;->w(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->e:Lg/ph;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lg/ed;

    invoke-direct {v2, v0, p1, p2, v1}, Lg/ed;-><init>(Lg/ph;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpc;)V

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2}, Lg/bir;->j(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/hav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cyj;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/cyj;->b:Lg/hav;

    return-void
.end method
