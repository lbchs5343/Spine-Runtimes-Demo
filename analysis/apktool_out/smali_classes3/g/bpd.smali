.class public final enum Lg/bpd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final a:Lg/cil;

.field public static final synthetic b:[Lg/bpd;

.field public static final enum zza:Lg/bpd;

.field public static final enum zzb:Lg/bpd;

.field public static final enum zzc:Lg/bpd;

.field public static final enum zzd:Lg/bpd;

.field public static final enum zze:Lg/bpd;

.field public static final enum zzf:Lg/bpd;

.field public static final enum zzg:Lg/bpd;

.field public static final enum zzh:Lg/bpd;

.field public static final enum zzi:Lg/bpd;

.field public static final enum zzj:Lg/bpd;

.field public static final enum zzk:Lg/bpd;

.field public static final enum zzl:Lg/bpd;

.field public static final enum zzm:Lg/bpd;

.field public static final enum zzn:Lg/bpd;

.field public static final enum zzo:Lg/bpd;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lg/bpd;

    const/16 v1, -0x3e7

    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/bpd;->zza:Lg/bpd;

    new-instance v1, Lg/bpd;

    const/4 v2, -0x3

    const-string v4, "SERVICE_TIMEOUT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/bpd;->zzb:Lg/bpd;

    new-instance v2, Lg/bpd;

    const/4 v4, -0x2

    const-string v6, "FEATURE_NOT_SUPPORTED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lg/bpd;->zzc:Lg/bpd;

    new-instance v4, Lg/bpd;

    const/4 v6, -0x1

    const-string v8, "SERVICE_DISCONNECTED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lg/bpd;->zzd:Lg/bpd;

    new-instance v6, Lg/bpd;

    const-string v8, "OK"

    const/4 v10, 0x4

    invoke-direct {v6, v8, v10, v3}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lg/bpd;->zze:Lg/bpd;

    new-instance v8, Lg/bpd;

    const-string v11, "USER_CANCELED"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v12, v5}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lg/bpd;->zzf:Lg/bpd;

    new-instance v11, Lg/bpd;

    const-string v13, "SERVICE_UNAVAILABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v7}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lg/bpd;->zzg:Lg/bpd;

    new-instance v13, Lg/bpd;

    const-string v15, "BILLING_UNAVAILABLE"

    const/16 v16, 0x1

    const/4 v5, 0x7

    invoke-direct {v13, v15, v5, v9}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lg/bpd;->zzh:Lg/bpd;

    new-instance v15, Lg/bpd;

    const/16 v17, 0x2

    const-string v7, "ITEM_UNAVAILABLE"

    const/16 v18, 0x3

    const/16 v9, 0x8

    invoke-direct {v15, v7, v9, v10}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lg/bpd;->zzi:Lg/bpd;

    new-instance v7, Lg/bpd;

    const/16 v19, 0x4

    const-string v10, "DEVELOPER_ERROR"

    const/16 v20, 0x0

    const/16 v3, 0x9

    invoke-direct {v7, v10, v3, v12}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/bpd;->zzj:Lg/bpd;

    new-instance v10, Lg/bpd;

    const/16 v21, 0x9

    const-string v3, "ERROR"

    const/16 v22, 0x5

    const/16 v12, 0xa

    invoke-direct {v10, v3, v12, v14}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lg/bpd;->zzk:Lg/bpd;

    new-instance v3, Lg/bpd;

    const/16 v23, 0xa

    const-string v12, "ITEM_ALREADY_OWNED"

    const/16 v24, 0x6

    const/16 v14, 0xb

    invoke-direct {v3, v12, v14, v5}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/bpd;->zzl:Lg/bpd;

    new-instance v12, Lg/bpd;

    const/16 v25, 0x7

    const-string v5, "ITEM_NOT_OWNED"

    const/16 v14, 0xc

    invoke-direct {v12, v5, v14, v9}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lg/bpd;->zzm:Lg/bpd;

    new-instance v5, Lg/bpd;

    const/16 v27, 0x8

    const-string v9, "EXPIRED_OFFER_TOKEN"

    const/16 v14, 0xd

    move-object/from16 v29, v0

    const/16 v0, 0xb

    invoke-direct {v5, v9, v14, v0}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/bpd;->zzn:Lg/bpd;

    new-instance v0, Lg/bpd;

    const-string v9, "NETWORK_ERROR"

    const/16 v30, 0xd

    const/16 v14, 0xe

    move-object/from16 v31, v1

    const/16 v1, 0xc

    invoke-direct {v0, v9, v14, v1}, Lg/bpd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/bpd;->zzo:Lg/bpd;

    const/16 v1, 0xf

    new-array v1, v1, [Lg/bpd;

    aput-object v29, v1, v20

    aput-object v31, v1, v16

    aput-object v2, v1, v17

    aput-object v4, v1, v18

    aput-object v6, v1, v19

    aput-object v8, v1, v22

    aput-object v11, v1, v24

    aput-object v13, v1, v25

    aput-object v15, v1, v27

    aput-object v7, v1, v21

    aput-object v10, v1, v23

    const/16 v26, 0xb

    aput-object v3, v1, v26

    const/16 v28, 0xc

    aput-object v12, v1, v28

    aput-object v5, v1, v30

    aput-object v0, v1, v14

    sput-object v1, Lg/bpd;->b:[Lg/bpd;

    new-instance v0, Lg/dsg;

    invoke-direct {v0}, Lg/dsg;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lg/dsg;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lg/dsg;->d:I

    invoke-static {}, Lg/bpd;->values()[Lg/bpd;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    iget v5, v4, Lg/bpd;->zzr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lg/dsg;->d:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    array-length v8, v7

    add-int/2addr v6, v6

    if-le v6, v8, :cond_2

    if-le v6, v8, :cond_1

    shr-int/lit8 v9, v8, 0x1

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    if-ge v8, v6, :cond_0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    add-int/2addr v6, v6

    move v8, v6

    :cond_0
    if-gez v8, :cond_1

    const v8, 0x7fffffff

    :cond_1
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lg/dsg;->a:Ljava/lang/Object;

    :cond_2
    iget-object v6, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    iget v7, v0, Lg/dsg;->d:I

    add-int v8, v7, v7

    aput-object v5, v6, v8

    add-int/lit8 v8, v8, 0x1

    aput-object v4, v6, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lg/dsg;->d:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v1, Lg/bhd;

    if-nez v1, :cond_5

    iget v1, v0, Lg/dsg;->d:I

    iget-object v2, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lg/cil;->h(I[Ljava/lang/Object;Lg/dsg;)Lg/cil;

    move-result-object v1

    iget-object v0, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v0, Lg/bhd;

    if-nez v0, :cond_4

    sput-object v1, Lg/bpd;->a:Lg/cil;

    return-void

    :cond_4
    invoke-virtual {v0}, Lg/bhd;->d()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-virtual {v1}, Lg/bhd;->d()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lg/bpd;->zzr:I

    return-void
.end method

.method public static values()[Lg/bpd;
    .locals 1

    sget-object v0, Lg/bpd;->b:[Lg/bpd;

    invoke-virtual {v0}, [Lg/bpd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bpd;

    return-object v0
.end method
