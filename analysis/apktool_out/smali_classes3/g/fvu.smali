.class public final Lg/fvu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzals;


# instance fields
.field public final b:Lg/tk;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzals;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzals;-><init>()V

    sput-object v0, Lg/fvu;->a:Lcom/google/android/gms/internal/ads/zzals;

    return-void
.end method

.method public synthetic constructor <init>(Lg/tk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fvu;->b:Lg/tk;

    iput p2, p0, Lg/fvu;->c:I

    return-void
.end method
