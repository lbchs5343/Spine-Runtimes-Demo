.class public final enum Lg/bvn;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lg/bvn;

.field public static final enum zza:Lg/bvn;

.field public static final enum zzb:Lg/bvn;

.field public static final enum zzc:Lg/bvn;

.field public static final enum zzd:Lg/bvn;

.field public static final enum zze:Lg/bvn;

.field public static final enum zzf:Lg/bvn;

.field public static final enum zzg:Lg/bvn;

.field public static final enum zzh:Lg/bvn;

.field public static final enum zzi:Lg/bvn;

.field public static final enum zzj:Lg/bvn;


# instance fields
.field private final zzl:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lg/bvn;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const-string v3, "VOID"

    invoke-direct {v0, v1, v2, v3}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lg/bvn;->zza:Lg/bvn;

    new-instance v2, Lg/bvn;

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Integer;

    const-string v5, "INT"

    invoke-direct {v2, v3, v4, v5}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lg/bvn;->zzb:Lg/bvn;

    new-instance v5, Lg/bvn;

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Long;

    const-string v8, "LONG"

    invoke-direct {v5, v6, v7, v8}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lg/bvn;->zzc:Lg/bvn;

    new-instance v7, Lg/bvn;

    const/4 v8, 0x3

    const-class v9, Ljava/lang/Float;

    const-string v10, "FLOAT"

    invoke-direct {v7, v8, v9, v10}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lg/bvn;->zzd:Lg/bvn;

    new-instance v9, Lg/bvn;

    const/4 v10, 0x4

    const-class v11, Ljava/lang/Double;

    const-string v12, "DOUBLE"

    invoke-direct {v9, v10, v11, v12}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v9, Lg/bvn;->zze:Lg/bvn;

    new-instance v11, Lg/bvn;

    const/4 v12, 0x5

    const-class v13, Ljava/lang/Boolean;

    const-string v14, "BOOLEAN"

    invoke-direct {v11, v12, v13, v14}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v11, Lg/bvn;->zzf:Lg/bvn;

    new-instance v13, Lg/bvn;

    const/4 v14, 0x6

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    const-string v1, "STRING"

    invoke-direct {v13, v14, v15, v1}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v13, Lg/bvn;->zzg:Lg/bvn;

    new-instance v1, Lg/bvn;

    sget-object v15, Lg/aki;->a:Lg/gto;

    const/4 v15, 0x7

    const/16 v17, 0x1

    const-class v3, Lg/aki;

    const/16 v18, 0x2

    const-string v6, "BYTE_STRING"

    invoke-direct {v1, v15, v3, v6}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lg/bvn;->zzh:Lg/bvn;

    new-instance v3, Lg/bvn;

    const/16 v6, 0x8

    const/16 v19, 0x3

    const-string v8, "ENUM"

    invoke-direct {v3, v6, v4, v8}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lg/bvn;->zzi:Lg/bvn;

    new-instance v4, Lg/bvn;

    const/16 v8, 0x9

    const/16 v20, 0x8

    const-class v6, Ljava/lang/Object;

    const/16 v21, 0x4

    const-string v10, "MESSAGE"

    invoke-direct {v4, v8, v6, v10}, Lg/bvn;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lg/bvn;->zzj:Lg/bvn;

    const/16 v6, 0xa

    new-array v6, v6, [Lg/bvn;

    aput-object v0, v6, v16

    aput-object v2, v6, v17

    aput-object v5, v6, v18

    aput-object v7, v6, v19

    aput-object v9, v6, v21

    aput-object v11, v6, v12

    aput-object v13, v6, v14

    aput-object v1, v6, v15

    aput-object v3, v6, v20

    aput-object v4, v6, v8

    sput-object v6, Lg/bvn;->a:[Lg/bvn;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lg/bvn;->zzl:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Lg/bvn;
    .locals 1

    sget-object v0, Lg/bvn;->a:[Lg/bvn;

    invoke-virtual {v0}, [Lg/bvn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/bvn;

    return-object v0
.end method
