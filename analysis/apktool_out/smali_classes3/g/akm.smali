.class public final Lg/akm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/akm;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzej;

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lg/akm;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lg/akm;-><init>(JJJ)V

    sput-object v0, Lg/akm;->a:Lg/akm;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lg/akm;->c:J

    iput-wide p3, p0, Lg/akm;->d:J

    iput-wide p5, p0, Lg/akm;->e:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzej;-><init>(I)V

    iput-object p1, p0, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    return-void
.end method
