.class public final enum Lg/apl;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lg/lx;


# static fields
.field public static final synthetic a:[Lg/apl;

.field public static final enum zza:Lg/apl;

.field public static final enum zzb:Lg/apl;

.field public static final enum zzc:Lg/apl;

.field public static final enum zzd:Lg/apl;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg/apl;

    const-string v1, "BROADCAST_ACTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/apl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/apl;->zza:Lg/apl;

    new-instance v1, Lg/apl;

    const-string v3, "PURCHASES_UPDATED_ACTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/apl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/apl;->zzb:Lg/apl;

    new-instance v3, Lg/apl;

    const-string v5, "LOCAL_PURCHASES_UPDATED_ACTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/apl;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/apl;->zzc:Lg/apl;

    new-instance v5, Lg/apl;

    const-string v7, "ALTERNATIVE_BILLING_ACTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/apl;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/apl;->zzd:Lg/apl;

    const/4 v7, 0x4

    new-array v7, v7, [Lg/apl;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lg/apl;->a:[Lg/apl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/apl;->zzf:I

    return-void
.end method

.method public static values()[Lg/apl;
    .locals 1

    sget-object v0, Lg/apl;->a:[Lg/apl;

    invoke-virtual {v0}, [Lg/apl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/apl;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lg/apl;->zzf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lg/apl;->zzf:I

    return v0
.end method
