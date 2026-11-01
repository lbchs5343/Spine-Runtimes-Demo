.class public final Lg/eiq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/eiq;

.field public static final b:Lg/eiq;


# instance fields
.field public final c:Z

.field public final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgcy;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lg/eiq;->a:Lg/eiq;

    sput-object v1, Lg/eiq;->b:Lg/eiq;

    return-void

    :cond_0
    new-instance v0, Lg/eiq;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/eiq;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/eiq;->a:Lg/eiq;

    new-instance v0, Lg/eiq;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/eiq;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg/eiq;->b:Lg/eiq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lg/eiq;->c:Z

    iput-object p1, p0, Lg/eiq;->d:Ljava/lang/Throwable;

    return-void
.end method
