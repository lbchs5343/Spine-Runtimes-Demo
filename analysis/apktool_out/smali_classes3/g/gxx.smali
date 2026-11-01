.class public final enum Lg/gxx;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lg/gxx;

.field public static final enum zza:Lg/gxx;

.field public static final enum zzb:Lg/gxx;

.field public static final zzc:[Lg/gxx;


# instance fields
.field public final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/gxx;

    const-string v1, "ad_storage"

    const-string v2, "AD_STORAGE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/gxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg/gxx;->zza:Lg/gxx;

    new-instance v1, Lg/gxx;

    const-string v2, "analytics_storage"

    const-string v4, "ANALYTICS_STORAGE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/gxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg/gxx;->zzb:Lg/gxx;

    const/4 v2, 0x2

    new-array v4, v2, [Lg/gxx;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    sput-object v4, Lg/gxx;->a:[Lg/gxx;

    new-array v2, v2, [Lg/gxx;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lg/gxx;->zzc:[Lg/gxx;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/gxx;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lg/gxx;
    .locals 1

    sget-object v0, Lg/gxx;->a:[Lg/gxx;

    invoke-virtual {v0}, [Lg/gxx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gxx;

    return-object v0
.end method
