.class public final Lg/gtu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cfg;


# instance fields
.field public final b:Lg/ecv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cfg;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lg/gtu;->a:Lg/cfg;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lg/ecv;

    sget-object v1, Lg/gxd;->a:Lg/gxd;

    const/4 v1, 0x2

    new-array v1, v1, [Lg/anu;

    sget-object v2, Lg/bmr;->r:Lg/bmr;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/gtu;->a:Lg/cfg;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lg/ecv;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lg/gtu;->b:Lg/ecv;

    return-void
.end method
